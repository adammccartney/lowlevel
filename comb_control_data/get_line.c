#include <stdio.h>
#include <stdlib.h>
#include <string.h>


/* Implementation of library function gets */
char* gets(char* s)
{
	int c;
	char* dest = s;
	while ((c = getchar()) != '\n' && c != EOF)
		*dest++ = c;
	if (c == EOF && dest == s)
		/* No characters read */
		return NULL;
	*dest++ = '\0'; /* Terminating string */
	return s;
}

/* Warning: very low-quality code.
 * Intended to illustrate bad programming practice.
 * */
char* get_line()
{
	char buf[4];
	char *result;
	gets(buf);
	result = malloc(strlen(buf));
	strcpy(result, buf);
	return result;
}

int main()
{
	get_line();
	return 0;
}
