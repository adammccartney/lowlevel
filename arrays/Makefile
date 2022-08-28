OS := $(shell uname -s)

ifeq ($(OS),Darwin)
   OBJFMT = -f macho64
else
   OBJFMT = -f elf64 -g dwarf2
endif

PROGS = qbfind qsort qsort.s 
all: $(PROGS) 

.SUFFIXES:
.SUFFIXES: .o .asm
.SECONDARY:

.o:
	gcc -no-pie -g -o $@ $<

qbfind: qbfind.c
	gcc -g -Wall -O2 $< -o $@

qsort: qsort.c
	gcc -g -Wall $< -o $@

qsort.s: qsort.c
	gcc -S -O2 -masm=intel $< -o $@

.asm.o:
	yasm -Worphan-labels $(OBJFMT) -l $*.lst $<

clean:
	rm -f $(PROGS) *.o *.lst *~ .*.gdb .ebe.*

