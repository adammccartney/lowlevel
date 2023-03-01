short loop_while_goto(short a, short b)
{
	short result = 0;
	goto test;
loop:
	result = result + (a * b);
	a = a - 1;
test:
	if (a > b)
		goto loop;
	return result;
}


short loop_while(short a, short b)
{
	short result = 0;
	while (a > b) {
		result = result + (a * b);
		a = a - 1;
	}
	return result;
}

