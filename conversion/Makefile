SHELL := /usr/bin/bash

CC := gcc
CFLAGS := -Wall -g 

PREFIX := $(HOME)/Code/csapp/problems
DIR = $(PREFIX)/conversion
SOURCES := $(wildcard $(DIR)/*.c)
OBJECTS := $(SOURCES:.c=.o)

EXECUTABLES := arraysum B2T shifts strlonger taddok

all: $(EXECUTABLES)

arraysum: arraysum.o
B2T: B2T.o
shifts: shifts.o
strlonger: strlonger.o
taddok: taddok.o
	$(CC) $(CFLAGS) $< -o $@

$(OBJECTS): %.o : %.c
	$(CC) $(CFLAGS) -c $< -o $@

.PHONY: clean

clean:
	rm $(OBJECTS) $(EXECUTABLES)
