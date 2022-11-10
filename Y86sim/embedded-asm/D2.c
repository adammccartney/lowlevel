#include "stdlib.h"

typedef unsigned long data_t;
#define COMP !=

int comp(data_t a, data_t b) {
        return a COMP b;
}

int main(int argc, char **argv){
      data_t a = 0;
      data_t b = 0;
      comp(a, b);
      exit(0);
    }
