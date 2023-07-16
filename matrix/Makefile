CC := gcc 
CFLAGS := -Wall -Wextra -g3 -Wno-unused-variable -Wno-unused-function -fsanitize=undefined

.PHONY: all clean

all: readmatrix 

readmatrix: readmatrix
	$(CC) $(CFLAGS) -o readmatrix readmatrix.c

clean:
	rm -f readmatrix
