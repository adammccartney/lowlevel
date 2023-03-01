SHELL := /usr/bin/bash

CC := gcc
CFLAGS := -S -fno-pie -fno-asynchronous-unwind-tables

BUILD_DIR := build
SOURCE_DIR := src

SOURCES := $(wildcard $(SOURCE_DIR)/*.c)
ASMFILES := $(addprefix $(BUILD_DIR)/, $(notdir $(SOURCES:.c=.s)))
ASMFILES += conditional_data_transfer.s more_control.s while.s while2.s
EXECUTABLES := fact_over

all: $(ASMFILES)

$(BUILD_DIR)/%.s: $(SOURCE_DIR)/%.c
	@ mkdir -p build
	$(CC) $(CFLAGS) -m32 -o $@ $<

conditional_data_transfer.s: conditional_data_transfer.c 
	$(CC) $(CFLAGS) -O0 conditional_data_transfer.c

more_control.s: more_control.c 
	$(CC) $(CFLAGS) -O0 more_control.c

fact_over: fact_over.c 
	$(CC) -O0 -o $@ $^

while.s: while.c 
	$(CC) -Og -S -o $@ $^

while2.s: while2.c 
	$(CC) -O1 -S -o $@ $^

.PHONY: default
clean:
	rm $(EXECUTABLES)
	rm $(ASMFILES)
	rm -rf build
