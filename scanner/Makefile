CC := gcc
CFLAGS := -std=c99 -g -O0 -Wall

all: scanner

scanner: scanner.c 
	$(CC) $(CFLAGS) -o scanner scanner.c

twolines:
	$(CC) $(CFLAGS) -o twolines twolines.c

.PHONY:
clean:
	rm scanner 
