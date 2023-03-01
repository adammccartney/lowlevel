/* Practice Problem 3.16 */

void cond (short a, short *p) 
{
	if (a == 0)
		goto done; 
	if (a >= *p)
		goto done;
	*p = a;
done:
	return;
}
