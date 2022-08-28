SHELL := /usr/bin/bash

CC := gcc
CFLAGS := -O2 

IA32FLAGS := -O2 -S -m32

BUILD_DIR := build
SOURCE_DIR := src
SCRATCH_DIR := scratch
ASM_DIR := asm

SOURCES := $(wildcard $(SOURCE_DIR)/*.c)
HEADERS := $(wildcard $(SOURCE_DIR)/*.h)
ASSEMBLY := $(addprefix $(ASM_DIR)/, $(notdir $(SOURCES:.c=.s)))
OBJECTS := $(addprefix $(BUILD_DIR)/, $(notdir $(SOURCES:.c=.o)))

all: scratch

.PHONY: scratch

ops.s: $(SOURCE_DIR)/ops.c
	$(CC) $(IA32FLAGS) $(SOURCE_DIR)/ops.c

scratch:
	make -C $(SCRATCH_DIR)

decode.s: $(SOURCE_DIR)/decode.c
	$(CC) $(IA32FLAGS) $(SOURCE_DIR)/decode.c

clean:
	rm -f $(SOURCE_DIR)/*.o
	make -C $(SCRATCH_DIR) clean
