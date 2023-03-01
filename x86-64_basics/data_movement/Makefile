CC := $(CC)

OBJECTS := exchanges.o 

all: exchange \
	 decode1.s \
	 exchanges.o

decode1.s: decode1.c
	gcc -Og -S decode1.c

exchanges.o: exchanges.s
	as -o exchanges.o exchanges.s

extensions.o: extensions.s
	as -o extensions.o extensions.s

exchange: exchange.c
	$(CC) -Og -o exchange exchange.c

.PHONY:
clean:
	rm -f exchange $(OBJECTS)
	rm -f decode1.s
