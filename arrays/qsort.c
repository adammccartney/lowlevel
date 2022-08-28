/* qsort.c: sorts an array of random 4 byte integers
 * */

#include <errno.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int cmpfunc(const void *a, const void *b)
{
    return (*(long *) a - *(long *) b);
}

void printArray (long *arr, size_t sz) 
{
    int i;
    for (i = 0; i < sz; i++) {
        printf("%ld\n", arr[i]);
    }
}

int main (int argv, char* argc[])
{
    long n;
    size_t sz = 4;
    long *nums = malloc(sz * sizeof(long));

    srand(time(NULL));
    int i;
    for (i = 0; i < sz; i++) {
        n = random();
        nums[i] = n;
    }
    printArray(nums, sz);
    qsort(nums, sz, sizeof(long), cmpfunc); 
    printf("-------------------------\n");
    printArray(nums, sz);

    return 0;
}
