module main

import os

// Minimal cd command built-in
fn builtin_cd(args []string) int {
	if args.len == 0 {
		os.chdir(os.home_dir()) or { eprintln('Failed to change directory to home directory') }
	} else if args[0][0] == `/` {
		os.chdir(args[0]) or { eprintln('Could not change from root') }
	} else {
		os.chdir(os.expand_tilde_to_home((os.getwd() + '/' + args[0]))) or {
			eprintln('no such file or directory')
		}
	}
	return 0
}
