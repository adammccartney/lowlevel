#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int fact_dw (int x);

int fact_dw(int x)
{
    int result = 1;
    do {
        result *= x;
        x--;
    } while (x > 0);
    return result;
}

int main(int argc, char *argv[])
{
    int a = 0; 
    int b = 0; 
    a = atoi(argv[1]);
    b = fact_dw(a);
    printf("%d", b);
    return 0;
}
