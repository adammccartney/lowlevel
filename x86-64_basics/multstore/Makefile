
mstore.s: mstore.c
	gcc -Og -S mstore.c

prog: main.c mstore.c
	gcc -Og -o prog main.c mstore.c

.PHONY:
clean:
	rm prog
