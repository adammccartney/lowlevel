#include "stdio.h"
int main(void)
{
        /* Turn 17 into 85 using bitshift operations */
        unsigned x = 17;
        int p, n;
        p = 0x15;
        n = 2;
        x = (x << n) | p;
        printf("%d\n", x);
        return 0;
}
