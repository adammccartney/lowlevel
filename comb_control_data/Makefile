CC := gcc
CFLAGS := -Wall -g -O0


all: get_line prog

get_line: get_line.c 
	$(CC) $(CFLAGS) -o $@ $< 


prog:
	$(MAKE) -C prog_src/


clean:
	rm -f get_line
	$(MAKE) clean -C prog_src/
