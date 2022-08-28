/* arithmetic.c, contains function defs for two's compliment arithmetic
 * */

#include "arithmetic.h"

int tadd_ok(int x, int y) {
    int res;
    long sum;  // protect against truncation
    sum = x + y;
    res = ((INT_MIN < sum) && (sum < INT_MAX)) ? 1 : -1;
    return res;
}

/* WARNING: this is buggy code */
int tsub_ok(int x, int y) {
    return tadd_ok(x, -y);
}
