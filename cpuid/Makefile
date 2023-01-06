ASSEMBLER := as
LINKER := ld

all: cpuid cpuid2

# link executables
cpuid: cpuid.o
	$(LINKER) -m elf_i386 -o $@ $^

cpuid2: cpuid2.o
	$(LINKER) -m elf_i386 -dynamic-linker /lib/ld-linux.so.2 -o $@ -lc $^

# Create object file
%.o: %.s
	$(ASSEMBLER) -32 -o $@ $<


# Clean up
.PHONY:
clean:
	rm -f *.o cpuid cpuid2
