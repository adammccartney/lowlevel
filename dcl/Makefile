CC := gcc
CFLAGS := -Wall -g --std=c99

all: dcl

dcl: dcl.c
	$(CC) $(CFLAGS) -o $@ $<

.PHONY:
clean:
	rm dcl
