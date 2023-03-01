#include <stdio.h>

/* invert: Returns x with the */
unsigned invert(unsigned x, int p, int n)
{
    return x ^ (~(~0 << n) << (p+1-n));
}
