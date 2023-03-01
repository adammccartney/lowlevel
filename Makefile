
SUBDIRS := acdecl arith-logic arithmetic arrays 
SUBDIRS += beargit bitwise_ops cantor condlogic 
SUBDIRS += control cpuid crypt dcl division embedded_asm 
SUBDIRS += functions IA32-machinecode memory scanner sizeof 
SUBDIRS += tools utils x86-64_arithmetic x86-64arithmetic 
SUBDIRS += x86-64_basics/data_movement x86-64_basics/movement 
SUBDIRS += x86-64_basics/multstore 
SUBDIRS += Y86sim Y86sim/sim Y86sim/rsum Y86/sum

.PHONY: clean all
all clean: 
	for dir in $(SUBDIRS); do \
		$(MAKE) -C $$dir -f Makefile $@; \
	done
