/* Practice Problem 3.22: 
 * verify if 14! overflows a 32 bit int */
#include <stdint.h>
#include <stdio.h>

/* Calculate 14! 
 * return 1 if result overflows a 32 bit int 
 * return 0 on success (does not overflow) */
int fact_over(unsigned int n)
{
	int rc = 0;
	unsigned int res = 1;
	do {
		res *= n;
		if (res < 0 || res > UINT32_MAX)
			rc = -1;
	} while (n-- > 0);
	return rc;
}

int fact_over_long(unsigned long n)
{
	int rc = 0;
	unsigned long res = 1;
	do {
		res *= n ;
		if (res < 0 || res > UINT64_MAX)
			rc = -1;
	} while (n-- > 1);
	printf("%ld\n", res);
	return rc;
}


int main(void)
{
	int rc = 0;
	rc = fact_over(14);
	if (rc == 0)
		printf("14! does not overflow an unsigned 32-bit integer\n");
	if (rc == -1)
		printf("14! causes a 32-bit unsigned int to overflow\n");
	rc = fact_over_long(14);
	if (rc == 0)
		printf("14! does not overflow an unsigned 64-bit integer\n");
	if (rc == -1)
		printf("14! causes a 64-bit unsigned int to overflow\n");
	return 0;
}
