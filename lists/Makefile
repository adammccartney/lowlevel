SHELL := /usr/bin/env bash
CC := clang
CFLAGS := -g -Wall -O0 


all: intro


intro: intro.c 
	$(CC) $(CFLAGS) -o intro intro.c

.PHONY: all clean 


clean:
	rm -rf intro
