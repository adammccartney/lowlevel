CC := clang
CFLAGS := -Wall -m32

all: rSum.s rSum_ex rSum_ex.s

rSum.s: rSum.c
	$(CC) -S -m32 -fno-asynchronous-unwind-tables -fno-pie -o $@ $<

rSum_ex.s: rSum_ex.c
	$(CC) $(CFLAGS) -S -o $@ $<

rSum_ex: rSum_ex.c
	$(CC) $(CFLAGS) -g -o $@ $< 

clean:
	rm rSum_ex rSum_ex.s
