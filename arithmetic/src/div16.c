// div16.c: divides an incoming integer by 16
// usage: /.div16 <int>

# include "common.h"

int div16 (int x) {
    // assuming integer x uses twos complement notation
    // arithmetic right shift is basically dividing by 2^k
    return (x + (1 << 4) - 1) >> 4;
};

int main (int argc, char* argv[]) {

    if (argc < 2) {
        fprintf(stderr, "Usage: %s <int>\n", argv[0]);
        exit(EXIT_FAILURE);
    }

    int x, res;
    bool xok;

    if (argc == 2) {
        /* check that it's in range */
        long lx; 
        lx = atol(argv[1]);
        xok = ((INT_MIN < lx) && (lx < INT_MAX)) ? true : false;
        if (xok == true) {
            x = atoi(argv[1]);
            res = div16(x);
            printf("%d\n", res);
        } else {
            fprintf(stderr, "Error while dividing\n");
            exit(EXIT_FAILURE);
        }
        return 0;
    }
}
