/* Simple line reader */
/* Reads a string one char at a time */
#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>

#define MAXNUMS 2

uint32_t stack[MAXNUMS];
int top = -1;
#define pop stack[top--];
#define push(s) stack[++top]=s;

struct Scanner {
  const char *start;
  const char *current;
};

struct Scanner scanner;

void initScanner(const char *decl) {
  scanner.start = decl;
  scanner.current = decl;
}

static char advance() {
	scanner.current++;
	return scanner.current[-1];
}

static char peek() { return *scanner.current; }

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

struct Tuple_uint32 line_one;

/* We push the data onto the stack as N, M 
 * Read it off as M, N 
 * */
void initTuple_uint32(const uint32_t stack[]) {
	line_one.second = pop;
	line_one.first = pop;
}

int main(void)
{
	char* test = "1 2";
	initScanner(test);
	while (*scanner.current != '\0') {
		if (xisnum(*scanner.current)) {
			push(atoi(scanner.current));
			advance();
		}
		skipWhitespace();
	}
	initTuple_uint32(stack);
	printf("num lines: %d\n", line_one.first);
	printf("num persons: %d\n", line_one.second);
	return 0;
}
