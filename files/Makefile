CC := gcc
CFLAGS := -Wall -g3 -std=c99 

PROGS := endiancheck readfile

.PHONY: all clean

all: $(PROGS)

endiancheck: endiancheck.c
	$(CC) $(CFLAGS) -o $@ $^

readfile: readfile.c
	$(CC) $(CFLAGS) -o $@ $^

clean:
	rm -f $(PROGS)
