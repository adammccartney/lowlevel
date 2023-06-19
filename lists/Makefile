SHELL := /usr/bin/env bash
CC := clang
CFLAGS := -g -Wall -O0

SOURCES := $(wildcard *.c)
OBJECTS := $(addprefix , $(notdir $(SOURCES:.c=.o)))
EXECUTABLES := intro linked_stack

all: $(EXECUTABLES)

%: %.o
	$(CC) $(CFLAGS) $^ -o $@

%.o: %.c
	$(CC) $(CFLAGS) $^ -o $@

.PHONY: all clean

clean:
	rm -rf $(EXECUTABLES) 
