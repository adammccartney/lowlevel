CC := gcc
ASM_FLAGS := -S -fno-pie -m32 -fno-asynchronous-unwind-tables

SOURCES := $(wildcard *.c)
ASMFILES := $(SOURCES:.c=.s)

all: $(ASMFILES)

%.s: %.c
	$(CC) $(ASM_FLAGS) -o $@ $<

.PHONY: clean
clean:
	rm $(ASMFILES)
