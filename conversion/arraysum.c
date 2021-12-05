#include <stdio.h>

/* WARNING: this is buggy code
 *          it's buggy because if it gets passed an array length 0, it tries to
 *          create a loop where it the second control parameter is -1. This
 *          means the loop is entered and has no upper limit, so it just runs
 *          for ever (it can never reach -1 via positive incrementation. 
 *
 *          The way to check for this would be to ensure length is a positve
 *          integer.
 * */
float sum_elementsBUGGY(float a[], unsigned length) {
    int i;
    float result = 0;
    
    for (i = 0; i < length - 1; i++) {
        result += a[i];
    }
    return result;
}

float sum_elements(float a[], unsigned length) {
    int i, lim; 
    float result = 0;

    if (length == 0) {
        lim = 0;
    }
    if (length < 0) {
        printf("Error: negative value given for upper bound of\n");
        return -1;
    }
    if (length > 0) {
        lim = lim - 1;
    }

    for (i = 0; i < lim; i++) {
        result += a[i];
    }
    return result;
} 

int main (int argc, char* argv[]) {
    float result = 0;
    unsigned len = 0;
    float af[] = {};
    result = sum_elements(af, len);
    printf("%f", result);
    return 0;
}

