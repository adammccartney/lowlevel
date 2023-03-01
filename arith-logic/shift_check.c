#include <stdio.h>

long shift_left4_rightn(long x, long n)
{
        x <<= 4;
        x >>= n;
        return x;
}

int main(void)
{
        long x, y, res;
        x = 1280;
        y = 8;
        res = shift_left4_rightn(x, y);
        printf("%ld", res);
        return 0;
}
