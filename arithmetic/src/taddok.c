/* taddok.c: determine whether arguments can be added without overflow
 * usage: ./taddok <int> <int> 
 * returns 1 if items can be added, otherwise -1 
 * */

#include "arithmetic.h"

int main (int argc, char* argv[]) {

    if (argc < 2) {
        fprintf(stderr, "Usage: %s <int> <int>\n", argv[0]);
        exit(EXIT_FAILURE);
    }

    int x, y, z;
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
            z = tadd_ok(x, y);
            printf("%d\n", z);
        } else {
            z = -1;
            printf("%d\n",z); 
        }
    }
}
