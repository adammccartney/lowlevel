SHELL := /usr/bin/bash
CC := gcc 
CFLAGS := -g -Wall

default: sizeof

install: sizeof
	cp sizeof ~/bin/sizeof

sizeof: sizeof.c 
	$(CC) $(CFLAGS) -o $@ $<

.PHONY:
clean:
	rm sizeof
