/* Program to reverse a string. 
 * */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void swap_inplace(char* x, char* y)
{
	*y = *x ^ *y;
	*x = *x ^ *y;
	*y = *x ^ *y;
}

void strrev(char str[], int len)
{
	int i; /* start */
	int last = len - 1; /* use zero index count */
	for (i = 0; i < last; i++) {
		swap_inplace(&str[i], &str[last]);
		last--;
	}
}

int main(int argc, char* argv[])
{
	if (argc != 2) {
		printf("Usage: strrev <string to reverse>\n");
		exit(-1);
	}
	if (argc == 2) {
		int len = 0;
		len = strlen(argv[1]);
		strrev(argv[1], len);
		printf("%s", argv[1]);
	}
	return 0;
}
