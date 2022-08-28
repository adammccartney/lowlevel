SHELL := /usr/bin/bash

CC := gcc
CFLAGS := -O2 -g

BUILD_DIR := build
SOURCE_DIR := src

SOURCES := $(wildcard $(SOURCE_DIR)/*.c)
HEADERS := $(wildcard $(SOURCE_DIR)/*.h)
OBJECTS := $(addprefix $(BUILD_DIR)/, $(notdir $(SOURCES:.c=.o)))

EXECUTABLES := $(BUILD_DIR)/compare \

all: $(EXECUTABLES)

# Link the executables
$(BUILD_DIR)/compare: $(BUILD_DIR)/compare.o
	@ printf "%8s %-40s %s\n" $(CC) $@ "$(CFLAGS)"
	@ mkdir -p build
	@ $(CC) $(CFLAGS) $< -o $@

# Compile the object files
$(BUILD_DIR)/%.o: $(SOURCE_DIR)/%.c $(HEADERS)
	@ printf "%8s %-40s %s\n" $(CC) $< "$(CFLAGS)"
	@ mkdir -p $(BUILD_DIR)
	@ $(CC) -c $(CFLAGS) -o $@ $<

.PHONY: default
clean:
	rm -rf build
