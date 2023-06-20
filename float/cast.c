/* Small program to emphasize that rounding happens while we cast */
#include <limits.h>
#include <stdio.h>

int main(void)
{
	for (int i = 0; i < INT_MAX; i++) {
		if (i != (int) ((float) i)) {
			printf("false: %d != %f\n", i, (float) i);
		}
	}
	return 0;
}
