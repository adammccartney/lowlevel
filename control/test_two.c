/* This code reverses the bits in x, creating a mirror image */
short test_two(unsigned long x)
{
	short val = 0;
	short i;
	for (i = 64; i != 0; i--) {
		val = (val << 1) | (x & 0x1);
		x >>= 1;      
	}
	return x;
}
