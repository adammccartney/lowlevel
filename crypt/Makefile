CC := gcc 
CFLAGS := -g

PROG=digest

LIBS= -lmd

all=$(PROG)

digest: digest.o 
	$(CC) $(CFLAGS) -o digest digest.o $(LIBS) 

clean:
	rm -f *.o $(PROG)
