#include "stdio.h"
 long exchange(long *xp, long y) {
       long x = *xp;  // Initialize new long with contents of xp
       *xp = y;       // Point xp at y
       return x;      // Value that was moved into y
}

int main(void) {
        long o = 0xFFFF;
        long *p = &o;
        long v = 0x01FF;
        printf("Before: o: %ld, v: %ld\n", o, v);
        v = exchange(p, v);
        printf("After: o: %ld, v: %ld\n", o, v);
        return 0;
  }
