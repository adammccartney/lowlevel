/* Simple line reader */
/* Reads a string one char at a time */
#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#define MAXLINES 1024
#define MAXLEN   1024
#define MAXNUMS  2

uint32_t stack[MAXNUMS];
int top = -1;
#define pop stack[top--];
#define push(s) stack[++top]=s;

struct Scanner {
  const char *start;
  const char *current;
};

struct Scanner scanner;

void initScanner(const char *decl) 
{
  scanner.start = decl;
  scanner.current = decl;
}

static char advance() 
{
	scanner.current++;
	return scanner.current[-1];
}

static _Bool isAtEnd() 
{
	return *scanner.current == '\0';
}


static char peek() { return *scanner.current; }

static char peekNext() 
{ 
	if (isAtEnd()) return '\0';
	return scanner.current[1];
}

_Bool xisalpha(char c)
{
	return c>='a' && c<='Z';
}

static void skipWhitespace() {
  for (;;) {
    char c = peek();
    switch (c) {
    case ' ':
    case '\t':
      advance();
      break;
    default:
      return;
    }
  }
}

_Bool xiswhitespace(char c)
{
	if ((c == ' ') || (c == '\t'))
		return true;
	else
		return false;
}

_Bool xisnum(char c)
{
	if ((c >= 0) || (c <= 9))
		return true;
	else
		return false;
}

/* Pre-defined data structure for the test */
struct Tuple_uint32 {
	uint32_t first;
	uint32_t second;
};

struct Tuple_uint32 data_tuple;

/* We push the data onto the stack as N, M 
 * Read it off as M, N 
 * */
void initTuple_uint32(const uint32_t stack[]) {
	data_tuple.second = pop;
	data_tuple.first = pop;
}

/* Invariable for scanning the first line */
/* We know that we want to read exactly two numbers from line one */
void scanFirstLine()
{
	int consumed = 0;
	int numdigits = 0;
	while (((peek() != '\0') && (peek() != '\n')) 
	       && (consumed < MAXNUMS)) {
		/* Here we want to read until we find a whitespace */
		/* count how many digits we read */
		if (xisnum(peek())) { 
			numdigits++;
			advance();
		}
		if ((peekNext() == '\0') || 
		    (xiswhitespace(peek()) && numdigits != 0)) {
			/* Found an integer > 9 */
			/* copy numdigits to buf */
			char *buf = malloc(sizeof(char) * MAXLEN);
			memcpy(buf, scanner.start, numdigits);
			push(atoi(buf));
			consumed++;
			numdigits = 0; // reset
			advance(); // past current whitespace
			scanner.start = scanner.current;
		}
		skipWhitespace();
	}
	initTuple_uint32(stack);
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
	initScanner(line_one);
	scanFirstLine();
	printf("%d\n", data_tuple.first);
	printf("%d\n", data_tuple.second);
	return 0;
}
