// prec.c: investigating lossy encoding with floating point types

# include <stdio.h>

int main(int argc, char **argv) {
    float y;
    int i = (1 << 24) - 1;

    y = i;

    for (int j = 0; j < 5; j++) {
        printf("%d %f    ", i, y);
        printf("%08x %08x\n", i, *((int*)&y));
        y = y + 1.0;
        i = i + 1;
    }
}
