/* Simple line reader */
/* Reads a string one char at a time */
#include <errno.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#define MAXLEN  1024
#define MAXNUMS 2

long int stack[MAXNUMS];
int top = -1;
#define pop stack[top--];
#define push(s) stack[++top]=s;

/* Pre-defined data structure for the test */
struct Tuple_l {
	long int first;
	long int second;
};

struct Tuple_l data_tuple;

/* We push the data onto the stack as N, M 
 * Read it off as M, N 
 * */
void initTuple_l(const long int stack[]) {
	data_tuple.second = pop;
	data_tuple.first = pop;
}

/* Read a line and push at most n (expected) numbers onto the stack */
void pushNums(char* buf, int expected)
{
	long val;
	int success;
	int count = 0;

	/* Use the initial char in the line first. 
	 * There might be more numbers coming down the pipe.*/
	char *endptr = buf; 
	do 
	{
		// convert our line to integers
		errno = 0; // reset error number

		val = strtol(endptr, &endptr, 10);
		if (errno == ERANGE)
		{
			printf("Sorry, number too big or too small.");
			success = 0;
		}
		else if (endptr == buf)
		{
			// no char read
			success = 0;
		}
		else if (*endptr && *endptr != '\n')
		{
			// *endptr is neither end of string or newline
			// so we didn't get the whole input
			success = 0;
			/* endptr is the address of the first invalid char */
		}
		else 
		{
			success = 1;
		}
		count++;
		push(val);
	} while ((!success) && (count < expected));
	//push(val); /* Push the last value onto the stack. */
}

int main(int argc, char* argv[])
{
	FILE *fd = NULL;
	if (argc != 2)
		printf("Usage: scanner <input.txt>\n");
	if (argc == 2) /* read input file */
		fd = fopen(argv[1], "r");

	char* line_one = malloc(sizeof(char) * MAXLEN);
	line_one = fgets(line_one, MAXLEN, fd);
	const int expected = 2;
	pushNums(line_one, expected);
	initTuple_l(stack);
	printf("%ld\n", data_tuple.first);
	printf("%ld\n", data_tuple.second);
	return 0;
}
