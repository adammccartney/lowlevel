long lt_cnt = 0;
long ge_cnt = 0;


long gotodiff_se(long x, long y)
{
	long result;
	int t;
	t = x < y;
	if (t)
		goto x_lt_y;
	ge_cnt++;
	result = x - y;
	return result;
x_lt_y:
	lt_cnt++;
	result = y - x;
	return result;
}
