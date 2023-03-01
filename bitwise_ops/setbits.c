#include <stdio.h>
#include <stdlib.h>

/* setbits: return x with n bits beginning at p set to righmost n bits of y */
unsigned setbits(unsigned x, int p, int n, int y)
{
    /* set a mask for the rightmost n bits ~(~0 << n) */
    /* use an and operation to extract the bits */

    return x & ~(~(~0 << n) << (p+1-n)) | 
        (y & ~(~0 << n)) << (p+1-n);
}


int main(int argc, char* argv[]) 
{
    unsigned x = 0;
    int p, n, y;
    if (argc != 5) {
        printf("setbits: return x with n bits beginning at p set to righmost n bits of y\n");
        printf("Usage: setbits <x value> <position> <num bits to set> <source of bits>\n");
    }
    if (argc == 5) {
        x = atoi(argv[1]);
        p = atoi(argv[2]);
        n = atoi(argv[3]);
        y = atoi(argv[4]);
    }
    x = setbits(x, p, n, y);
    printf("%d",x);
    return EXIT_SUCCESS;
}

