#include <stdlib.h>
#include <stdio.h>

// compare.c: compares two 
int comp (int a, int b) {
    return a > b;
}

int main(int argc, char* argv[]) {

    if (argc > 3) {
        printf("usage: ./compare <int> <int>");
    }

    if (argc == 3) {
        int a = atoi(argv[1]);
        int b = atoi(argv[2]);
        int c = comp(a, b);
        printf("%d\n", c);
    }

    return 0;
}
