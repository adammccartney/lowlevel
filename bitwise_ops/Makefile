CC := gcc
CFLAGS := -g -O0 -Wall


all: rightrot

rightrot: rightrot.c 
	$(CC) $(CFLAGS) -o $@ $<


.PHONY:
clean:
	rm -rf rightrot tests-out
