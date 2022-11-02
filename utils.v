module main

// Simple equivalent of the errx() function from the C standard library.
fn exit_message(code int, message string) {
	match code {
		0 { println(message) }
		else { eprintln(message) }
	}
	exit(code)
}
