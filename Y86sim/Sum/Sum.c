/* -*- mode: C -*- */
#include <stdio.h>

int Sum(int *Start, int Count)
{
        int sum = 0;
        while (Count) {
                sum += *Start;
                Start++;
                Count--;
        }
        return sum;
}

int main(void) {
        int Nums[] = {1, 1, 2, 3, 5};
        int *Start = &Nums[0];
        int count = 5;
        int res;
        res = Sum(Start, count);
        printf("%d", res);
        return 0;
}
