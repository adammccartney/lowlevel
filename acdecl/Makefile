CC := gcc
CFLAGS := -ggdb -Wall -std=c99
LIBS := -lcunit

.PHONY: all test clean

all: acdecl acdecl_test

test: acdecl_test

acdecl: acdecl.c
	$(CC) $(CFLAGS) -o $@ $<

scanner: scanner.c scanner.h common.h
	$(CC) $(CFLAGS) -o $@ $<

acdecl_test: acdecl_test.c
	$(CC) $(CFLAGS) -o $@ $< $(LIBS)

clean:
	rm acdecl acdecl_test
