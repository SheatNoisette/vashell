module main

import os

// Run a command by forking a process and waiting for it to finish.
fn run_command(command string, args []string) int {
	pid := os.fork()
	wstatus := int(0)

	if pid == -1 {
		exit_message(1, "Can't fork!")
	}

	if pid == 0 {
		os.execvp(command, args) or {
			eprintln('command not found: $command')
			return 0
		}
	}

	child_pid := C.waitpid(int(pid), &wstatus, 0)

	if child_pid == -1 {
		exit_message(1, "Can't get child PID")
	}

	return C.WEXITSTATUS(wstatus)
}
