module main

import os

// Print the current working directory and a '$' prompt
fn get_from_console() string {
	print(os.getwd() + ' $ ')
	return os.get_line()
}

fn main() {
	mut file_lines := []string{}
	mut file_current_line := 0
	mut line := ''

	if os.args.len == 2 {
		file_lines = os.read_lines(os.args[1]) or {
			eprintln("Can't read file")
			return
		}
	} else if os.args.len > 2 {
		println('Usage: vashell <file>')
		return
	}

	for {
		if file_lines.len > 0 {
			if file_current_line >= file_lines.len {
				break
			}
			line = file_lines[file_current_line]
			file_current_line++
		} else {
			line = get_from_console()
		}

		if dispatch_command(line) != 0 {
			break
		}
	}
}
