all: prod

prod:
	v -prod -skip-unused -gc none -o vashell.c .
	gcc -O2 -fsanitize=address -o vashell vashell.c
	strip vashell

debug:
	v -skip-unused -gc none -o vashell.c .
	gcc -g3 -O0 -o vashell vashell.c

clean:
	rm -f vashell
