#include <stdio.h>

typedef unsigned int *byte_pointer; 

void show_bytes(byte_pointer a, int len) {
int i;
	for(i=0; i<len; i++) {
		printf("%.2x", a[i]);
	}
	printf("\n");
}
int fun1(unsigned word) {
    return (int) ((word << 24) >> 24);
}

int fun2(unsigned word) {
    return ((int) word << 24) >> 24;
}

int main (int argc, char* argv[]) {
    unsigned word_x = 0x00000076;
    unsigned word_y = 0x87654321;
    unsigned word_z = 0xEDCBA987;
    int a, b, c;

    a = fun1(word_x);
    show_bytes((byte_pointer) &a, sizeof(int));
    a = fun2(word_x);
    show_bytes((byte_pointer) &a, sizeof(int));
    b = fun1(word_y);
    show_bytes((byte_pointer) &b, sizeof(int));
    b = fun2(word_y);
    show_bytes((byte_pointer) &b, sizeof(int));
    c = fun1(word_z);
    show_bytes((byte_pointer) &c, sizeof(int));
    c = fun1(word_z);
    show_bytes((byte_pointer) &c, sizeof(int));

    return 0;
}
