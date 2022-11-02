# VAshell
`vashell` or "V Atto shell" is a basic shell written in V. This is designed to
be the most basic shell possible, and is not intended to be a full-featured
shell. This program exists for the sole purpose of making a simple OS
distribution with V-based userland programs only.

**ONLY CD AND RUNNING PROGRAMS ARE SUPPORTED AND THIS IS BY DESIGN**

## Building the shell

**You need to install V first**
To build the shell, run `v -prod . -o vashell` in the `vashell` directory.
Or you can run `make` in the `vashell` directory.

## Usage

```bash
$ ./vashell
/home/sheat/vashell $
```

You can run a basic script by running `./vashell script.sh`.

## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file
for details.
