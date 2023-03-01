
all: remdiv.o remdiv.s

remdiv.o: remdiv.c
	gcc -g -c remdiv.c

remdiv.s: remdiv.o
	objdump -d -S remdiv.o > remdiv.s

.PHONY:
clean:
	rm *.o *.s
