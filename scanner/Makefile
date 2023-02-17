CC := gcc
CFLAGS := -std=c11 -g -O0 -Wall

all: scanner twolines ui

scanner: scanner.c 
	$(CC) $(CFLAGS) -o scanner scanner.c

twolines:
	$(CC) $(CFLAGS) -o twolines twolines.c

ui:
	$(CC) $(CFLAGS) -o ui ui.c

.PHONY:
clean:
	rm scanner twolines ui 
