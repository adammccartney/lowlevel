SHELL := /usr/bin/bash

CC := gcc
CFLAGS := -S -m32 -fno-pie -fno-asynchronous-unwind-tables

BUILD_DIR := build
SOURCE_DIR := src

SOURCES := $(wildcard $(SOURCE_DIR)/*.c)
ASMFILES := $(addprefix $(BUILD_DIR)/, $(notdir $(SOURCES:.c=.s)))

all: $(ASMFILES)

$(BUILD_DIR)/%.s: $(SOURCE_DIR)/%.c
	@ mkdir -p build
	$(CC) $(CFLAGS) -o $@ $<

.PHONY: default
clean:
	rm -rf build
