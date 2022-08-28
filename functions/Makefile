OS := $(shell uname -s)

ifeq ($(OS),Darwin)
   OBJFMT = -f macho64
else
   OBJFMT = -f elf64 -g dwarf2
endif

PROGS = doit intmax.s input fact_dw.s fact_dw fact_while 
all: $(PROGS) 

.SUFFIXES:
.SUFFIXES: .o .asm
.SECONDARY:

.o:
	gcc -no-pie -g -o $@ $<

fact_dw.s: fact_dw.c
	gcc -g -O2 -S -masm=intel $< -o $@

fact_dw: fact_dw.c
	gcc -g -O2 -Wall $< -o $@

fact_while: fact_while.c
	gcc -g -O2 -Wall $< -o $@

input: input.c
	gcc -g -Wall $< -o $@

intmax.s: intmax.c
	gcc -g -O2 -S -masm=intel $< -o $@

.asm.o:
	yasm -Worphan-labels $(OBJFMT) -l $*.lst $<

clean:
	rm -f $(PROGS) *.o *.lst *~ .*.gdb .ebe.*

