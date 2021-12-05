#include <stdio.h>
#include <stdlib.h>

typedef unsigned char *byte_pointer;

void show_bytes(byte_pointer a, int len) {
int i;
	for(i=0; i<len; i++) {
		printf("%.2x ", a[i]);
	}
	printf("\n");
}

int main (int argc, char *argv[]) {
    // sizeof(int32_t) == sizeof(short)
    int32_t sx = -12345;
    unsigned uy = sx;

    printf("uy = %u:\t", uy);
    show_bytes((byte_pointer) &uy, sizeof(unsigned));
    return 0;
}

