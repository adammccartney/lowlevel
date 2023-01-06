SHELL := /usr/bin/bash

CC := gcc
CFLAGS := -ggdb -Wall -std=c99
LIBS := -lcunit

TEST_DIR := test
BUILD_DIR := build

SOURCES := scanner.c acdecl.c 
HEADERS := common.h scanner.h
OBJECTS := $(addprefix $(BUILD_DIR)/, $(notdir $(SOURCES:.c=.o)))

EXECUTABLES := $(BUILD_DIR)/acdecl $(TEST_DIR)/acdecl_test

.PHONY: all clean

all: $(EXECUTABLES)

# Link the executable
$(BUILD_DIR)/acdecl: $(BUILD_DIR)/acdecl.o
	@ printf "%8s %-40s %s\n" $(CC) $@ "$(CFLAGS)"
	@ mkdir -p $(BUILD_DIR)
	$(CC) $(CFLAGS) $< -o $@

# Compile the object files
$(BUILD_DIR)/%.o: %.c $(HEADERS)
	@ printf "%8s %-40s %s\n" $(CC) $< "$(CFLAGS)"
	@ mkdir -p $(BUILD_DIR)
	@ $(CC) -c $(CFLAGS) -o $@ $<

$(TEST_DIR)/acdecl_test: acdecl_test.c
	@ printf "%8s %-40s %s\n" $(CC) $@ "$(CFLAGS)"
	@ mkdir -p $(TEST_DIR)
	$(CC) $(CFLAGS) $< -o $@ $(LIBS)

clean:
	rm -rf build test
