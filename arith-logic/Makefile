CC := gcc
CFLAGS := -Og -Wall
ASFLAG := -S

EXECUTABLES := scale3 \
			   shift_check 

ASM_FILES := scale3.s \
			 shift_check.s


all: $(EXECUTABLES) $(ASM_FILES)

scale3: scale3.c
	$(CC) $(CFLAGS) -o $@ $^

scale3.s: scale3.c
	$(CC) $(CFLAGS) $(ASFLAG) $^

shift_check: shift_check.c
	$(CC) $(CFLAGS) -o $@ $^

shift_check.s: shift_check.c
	$(CC) $(CFLAGS) $(ASFLAG) $^


.PHONY:
clean:
	rm -f $(EXECUTABLES) $(ASM_FILES)

