/* reveng: reverse engineering an arithmetic function */

#include "common.h"

#define M 31
#define N 8
int arith (int x, int y) {
    int result = 0;
    result = x * M + y / N; // M and N are mystery Numbers
    return result;
    }

/* translation of assemly code for arith */
int optarith (int x, int y) {
    int t = x;
    x <<= 5;
    x -= t;
    if (y < 0) y += 7;
    y >>= 3; /* arithmetic shift */
    return x+y;
}

int main (int argc, char* argv[]) {
    if (argc < 2) {
        fprintf(stderr, "Usage: %s <int> <int>\n", argv[0]);
        exit(EXIT_FAILURE);
    }

    int x, y, res, optres, ret;
    bool xok, yok;
    if (argc == 3) {
        /* do an initial range check to see that the each integer is in the
         * expected range */
        long lx, ly;  // store the incoming values as signed longs
        lx = atol(argv[1]);
        ly = atol(argv[2]);
        xok = (((INT_MIN < lx) && (lx < INT_MAX))) ? true : false;
        yok = (((INT_MIN < ly) && (ly < INT_MAX))) ? true : false;
        if ((xok == true) && (yok == true)) {
            x = atoi(argv[1]);
            y = atoi(argv[2]);
            res = arith(x, y);
            optres = optarith(x, y);
            ret = (res == optres) ? 1 : -1;
            printf("%d\n",ret);
        } else {
            fprintf(stderr, "Error while processing arithmetic function\n");
            exit(EXIT_FAILURE);
        }
    }

}
