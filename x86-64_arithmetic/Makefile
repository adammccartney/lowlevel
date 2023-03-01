OS := $(shell uname -s)

ifeq ($(OS),Darwin)
   OBJFMT = -f macho64
else
   OBJFMT = -f elf64 -g dwarf2
endif

PROGS = distpoints simplesum signexsum slope
all: $(PROGS) 

.SUFFIXES:
.SUFFIXES: .o .asm
.SECONDARY:

.o:
	gcc -no-pie -g -o $@ $<

.asm.o:
	yasm -Worphan-labels $(OBJFMT) -l $*.lst $<

clean:
	rm -f $(PROGS) *.o *.lst *~ .*.gdb .ebe.*

