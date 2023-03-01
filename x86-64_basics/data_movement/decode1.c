#include <stdio.h>

void decode1(long *xp, long *yp, long*zp) {
        long loc1, loc2, loc3;  // define three local variables
        /* xp in %rdi, yp in %rsi, zp in %rdx */         
        loc1 = *xp;
        loc2 = *yp;
        loc3 = *zp;
        /* store loc1 in memory at *yp */
        *yp = loc1;
        /* store loc2 in memory at *zp */
        *zp = loc2;
        /* store loc3 in memory at *xp */
        *xp = loc3;
}

int main(void) {
        long x, y, z;
        x = 0xFFFFFFFF;
        y = 0xEEEEEEEE;
        z = 0xDDDDDDDD;
        long *xp, *yp, *zp;
        xp = &x;
        yp = &y;
        zp = &z;
        decode1(xp, yp, zp);

        printf("*xp: %ld\t*yp: %ld\t*zp: %ld", *xp, *yp, *zp);
        return 0;
        }
