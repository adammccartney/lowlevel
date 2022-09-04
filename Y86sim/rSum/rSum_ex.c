/* -*- mode: C -*- */
/*
  rSum_ex: just an example to get our heads around rSum
 */

#include <stdio.h>


int rSum(int* Start, int Count) {
        if (Count <= 0) {
                return 0;
        }
        return *Start + rSum(Start+1, Count-1);
}

int main(void) {
        int x[] = {1, 1, 2, 3, 5, 8, 13, 21};
        int* start = &x[0];
        int count = 8;
        int res;
        res = rSum(start, count);
        printf("%d", res);
        return 0;
}
