/* ui is a small learning program used to understand how to parse integers out
 * of a string. At most MAXNUMS can be read from a string and pushed onto a
 * stack. The program is interactive, takes one line of input and iteratively
 * prints any integers found in the input stream to stdout.
 *
 * Note that the bulk of the work around using the strtol function comes from:
 * https://sekrit.de/webdocs/c/beginners-guide-away-from-scanf.html
 * */

#include <stdio.h>
#include <stdlib.h>
#include <errno.h>

#define MAXNUMS 1024

long int stack[MAXNUMS];
int top = -1;
#define pop stack[top--];
#define push(s) stack[++top]=s;

int main(void)
{
    long a;
    char buf[1024]; // use 1KiB just to be sure
    int success; // flag for successful conversion

    printf("enter a number: ");
    if (!fgets(buf, 1024, stdin))
    {
        // reading input failed:
        return 1;
    }

    char *endptr = buf; /* Use this pointer first, there might be multiple numbers in line. */
    do
    {
        // have some input, convert it to integer:
        errno = 0; // reset error number
        a = strtol(endptr, &endptr, 10);
        if (errno == ERANGE)
        {
            printf("Sorry, this number is too small or too large.\n");
            success = 0;
        }
        else if (endptr == buf)
        {
            // no character was read
            success = 0;
        }
        else if (*endptr && *endptr != '\n')
        {
            // *endptr is neither end of string nor newline,
            // so we didn't convert the *whole* input
            success = 0;
	    /* push the value onto the stack and juggle some pointers */
	    push(a);
	    printf("endptr: %s", endptr);
        }
        else
        {
            success = 1;
        }
    } while (!success); // repeat until we got a valid number
    push(a);  /* push the last valid number we read from string. */

    while (top != -1) {
	long val = pop;
	printf("You entered %ld.\n", val);
    }
}
