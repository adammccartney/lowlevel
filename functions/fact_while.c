#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int fact_while (int x);

int fact_while (int x)
{
    int result = 1;
    while (x > 0) {
        result *= x;
        x--;
    }
    return result;
}

int main(int argc, char* argv[])
{
    int a = 0;
    int res = 0;
    a = atoi(argv[1]);
    res = fact_while(a);
    printf("%d", res);
    return 0;
}

