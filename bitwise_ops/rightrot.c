/*rightrot: return the value of the integer x rotated to the right by n bits */
#define _GNU_SOURCE
#include <stdlib.h>
#include <stdio.h>
#include "circshift.c"

int main(int argc, char* argv[])
{
        int x, n;
        if (argc != 3) {
                printf("Usage: rightrot <x> <n>\n");
        }
        if (argc == 3) {
                x = (uint32_t)atoi(argv[1]);
                n = (unsigned int)atoi(argv[2]);
                x = rotr32(x, n);
                printf("%d\n", x);
        }
        exit(EXIT_SUCCESS);
}
