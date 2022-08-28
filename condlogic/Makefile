OS := $(shell uname -s)

# directories and stuff
PROJECT_ROOT := /home/adam/Code/lowlevel
ARITHMETIC := $(PROJECT_ROOT)/problems/arithmetic/lib

ifeq ($(OS),Darwin)
   OBJFMT = -f macho64
else
   OBJFMT = -f elf64 -g dwarf2
endif

PROGS = fib 
all: $(PROGS) 

.SUFFIXES:
.SUFFIXES: .o .asm
.SECONDARY:

.o:
	gcc -no-pie -g -o $@ $<

.asm.o:
	yasm -Worphan-labels $(OBJFMT) -l $*.lst $<


fib: fib.c
	gcc -g -O2 $< -o $@ -L$(ARITHMETIC) -larithmetic

clean:
	rm -f $(PROGS) *.o *.lst *~ .*.gdb .ebe.*

