#include <errno.h>
#include <stdio.h>
#include <stdlib.h>

int main(int argc, char* argv[]) 
{
    char *p;
    char n;

    errno = 0;
    printf("Please input your name: ");
    n = scanf("%m[A-Za-z]", &p);
    if (n == 1) {
        printf("\nHello, %s\n", p);
        free(p);
    } else if (errno != 0) {
        perror("scanf");
    } else {
        fprintf(stderr, "No matching characters\n");
    }
    return 0;

}

