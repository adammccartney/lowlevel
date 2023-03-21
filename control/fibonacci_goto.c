#include <stdio.h>

/* Fibonacci numbers with tail recursion */
int fib_iter(int a, int b, int count)
{
	goto test;
loop:
	printf("%d\n", b);
	return fib_iter(a + b, a, count - 1);
test:
	if (count > 0)
		goto loop;
	return b;
}

/* Print the first n fibonacci numbers */
void fibonacci_goto(int count)
{
	int last; 
	last = fib_iter(1, 0, count);
	printf("%d\n", last);
}


int main(void)
{
	int count = 7; /* first 5 fibonacci numbers */
	fibonacci_goto(count);
	return 0;
}
