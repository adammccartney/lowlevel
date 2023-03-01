EXECUTABLES := aliased \
			   errors

all: $(EXECUTABLES)

# Linker step
aliased: aliased.o
	ld -o aliased aliased.o

errors: errors.o
	as -o errors errors.o


# Create object files
aliased.o: aliased.s
	as -o aliased.o aliased.s

errors.o: errors.s
	as -o errors.o errors.s

.PHONY:
clean:
	rm -f *.o
	rm $(EXECUTABLES)
