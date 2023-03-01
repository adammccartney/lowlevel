/* rightrot: return the value of the integer x rotated to the right by n bits */
#define _GNU_SOURCE
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>

/* wordlength: compute the wordlength of the machine */
int wordlength(void)
{
        int i;
        unsigned v = (unsigned) ~0; /* this sets up a positive 1 bit */

        for (i = 1; (v = v >> 1) > 0; i++)
               ;
        return i;
}


int rightrot(int x, int n)
  {
          int wordlength(void);
          int rbit;            /* rightmost bit */

          while (n-- > 0) {
                  rbit = (x & 1) << (wordlength() - 1);
                  x = x >> 1;           /* shift x 1 position right */
                  x = x | rbit;         /* complete one rotation */
          }
          return x;
  }


int main(int argc, char* argv[])
{
        int x, n;
        if (argc != 3) {
                printf("Usage: rightrot <x> <n>\n");
        }
        if (argc == 3) {
                x = atoi(argv[1]);
                n = atoi(argv[2]);
                x = rightrot(x, n);
                printf("%d\n", x);
        }
        exit(EXIT_SUCCESS);
}
