#include <stdlib.h>
#include <stdio.h>

#include "arithmetic.h"

int fib(int n) {
    int a, b;
    if (n == 0) {
        return 1;
    } else if ((n == 1) || (n == 2)) {
        return 1;
    } else {
        a = n - 2;
        b = n - 1;
        if (tadd_ok(a, b) == 1) {
            return fib(a) + fib(b);
        } else {
            printf("Error: calculation will overflow int datatype\n");
            return -1;
        }
    }
}

int main(int argc, char* argv[]) {
    int n = 0;
    int res = 0;
    if (argc != 2) {
        printf("Usage: fib <int n>");
    }
    if (argc == 2) {
        n = atoi(argv[1]);
        res = fib(n);
        printf("The %dth number in the fibonacci series is %d\n", n, res);
    }
    return 0;
}
