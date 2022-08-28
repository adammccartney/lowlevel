/* write a program to use qsort to sort an array of random integers and use a
 * binary search function to search for numbers in the array. 
 * */

#include <errno.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int cmpfunc(const void *a, const void *b)
{
    return (*(int *) a - *(int *) b);
}

void printArray (int *arr, size_t sz) 
{
    int i;
    for (i = 0; i < sz; i++) {
        printf("%d\n", arr[i]);
    }
}

/* binsearch: fins x in v[0] <= v[1] <= ... <= v[n-1] */
int binsearch(int x, int v[], int n) 
{
    int low, high, mid;

    low = 0;
    high = n - 1;
    while (low <= high) {
        mid = (low + high) / 2;
        if (x < v[mid])
            high = mid - 1;
        else if (x > v[mid])
            low = mid + 1;
        else /* found match */
            return mid;
    }
    return -1; /* no match */
}

int main (int argv, char *argc[])
{
    int n;
    size_t sz = 10000;
    int *nums = malloc(sz * sizeof(int));

    srand(time(NULL));
    int i;
    for (i = 0; i < sz; i++) {
        n = random()%1000;
        nums[i] = n;
    }
    qsort(nums, sz, sizeof(int), cmpfunc);
    //printArray(nums, sz);


    /* cli */
    errno = 0;
    char *buf;
    int guess;
    int res;
    printf("Guess a number: ");
    n = scanf("%m[0-9]", &buf);
    if (n == 1) {
        guess = atoi(buf);
        res = binsearch(guess, nums, sz);
        if (res != -1)
            printf("%d is a correct guess\n", guess);
        else
            printf("Sorry, better luck next time\n");
    } else if (errno != 0) {
        perror("scanf");
    } else {
        fprintf(stderr, "Not a valid integer\n");
    }
    free(nums);
    return 0;   
}


