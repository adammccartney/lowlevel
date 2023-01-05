#include "stdio.h"

#define MAX 1000000
#define MIN 1
#define MID (MAX / 2)

int check() {
    int i;
    int res = 0;
    for (i = MIN; i <= MAX; i++) {
        res += i;
    }
    return res;
}

/* Add up all the numbers between 1 and 100 
 * return the answer as an integer. */
int sumbeauty() {
    int begin = MIN;
    int end = MAX;
    int res = 0;
    while (begin < end) {
        res += begin + end;
        begin++;
        end--;
    }
    return res; 
}

int fastinvariant() {
    int tuplesum = MAX + MIN;
    int res = tuplesum * MID;
    return res;
}

int main(void) {
    int iter; 
    iter = check();
    printf("The sum of all the ints between %d and %d is %d\n", MIN, MAX, iter); 
    int out;
    out = sumbeauty();
    printf("The sum of all the ints between %d and %d is %d\n", MIN, MAX, out); 
    int fout;
    fout = fastinvariant();
    printf("The sum of all the ints between %d and %d is %d\n", MIN, MAX, fout); 
    return 0;
}
