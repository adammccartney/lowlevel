#include <stdio.h>

short scale3(short x, short y, short z) {
          short t = 10 * y + z + x * y;
          return t;
    }

int main(void) {
        short x, y, z, t;
        x = 2;
        y = 3;
        z = 5;
        t = scale3(x, y, z);
        printf("%d\n", t);
        return 0;
 }
