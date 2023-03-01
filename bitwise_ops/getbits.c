#include <stdio.h>
#include "stdlib.h"

/* getbits: get n bits from position p */
unsigned getbits(unsigned x, int p, int n)
{
    return (x >> (p+1-n)) & ~(~0 << n);
}


int main(int argc, char* argv[])
{
    unsigned x;
    int p, n;
    if (argc != 4) {
        printf("getbits: get n bits from position p\n");
        printf("Usage: getbits <x value> <position> <num bits to get>\n");
    }
    if (argc == 4) {
        x = atoi(argv[1]);
        p = atoi(argv[2]);
        n = atoi(argv[3]);
    }
    x = getbits(x, p, n);
    printf("Return: %d\n",x);
    return EXIT_SUCCESS;
}

