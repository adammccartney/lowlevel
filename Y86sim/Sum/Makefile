CC := c99
CFLAGS := -Wall -m32

all: Sum Sum.s

Sum.s: Sum.c
	$(CC) $(CFLAGS) -S -o $@ $<

Sum: Sum.c
	$(CC) $(CFLAGS) -g -o $@ $< 

clean:
	rm Sum Sum.s
