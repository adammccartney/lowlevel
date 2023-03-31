
long top(long x);
long leaf(long y);

int main(void)
{
	top(100);
	return 0;
}

long top(long x)
{
	long val;
	val = leaf(x - 5);
	val *= 2;
	return val;
}

long leaf(long y)
{
	return (y + 2);
}
