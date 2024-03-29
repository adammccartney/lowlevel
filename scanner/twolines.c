/* twolines: read two lines of input and print 
 * useful helpers from: 
 * https://sekrit.de/webdocs/c/beginners-guide-away-from-scanf.html
 * */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <errno.h>

#define MAXLEN 1024

struct Lines {
	char first[MAXLEN];
	char second[MAXLEN];
};

struct Lines lines;

int main(void)
{
	int read = 0;
	char buf[MAXLEN];
	do 
	{
		if (!fgets(buf, MAXLEN, stdin))
		{
			// reading input failed.
			return 1;
		}
		if (read == 0)
			memcpy(lines.first, buf, MAXLEN);
		if (read == 1)
			memcpy(lines.second, buf, MAXLEN);
	} while (++read < 2);

	printf("first line : %s", lines.first);
	printf("second line: %s", lines.second);
	return 0;
}
