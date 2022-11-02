module main

// Basic command line parser
fn dispatch_command(input string) int {
	splited_command := input.split(' ')
	real_command := splited_command[0]
	command_args := splited_command[1..]

	ret := match real_command {
		'exit' { 1 }
		'cd' { builtin_cd(command_args) }
		else { run_command(real_command, command_args) }
	}

	return ret
}
