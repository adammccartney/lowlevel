/* readfile.c - read a file one byte at a time 
 * */

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

/* read n bytes from file */
int* readnblocks(FILE* fd, int n, int blocksize)
{
    /* Allocate a buffer of (n * blocksize) bytes */
    int *buf = malloc(n * blocksize);
    if (buf == NULL) {
        perror("malloc");
        return NULL;
    }
    /* Read n blocks from file, store in buffer */
    if (fread(buf, blocksize, n, fd) != n) {
        perror("fread");
        return NULL;
    }
    return buf;
}

int main(int argc, char *argv[])
{
    FILE *fp;

    if (argc != 2) {
        fprintf(stderr, "usage: readfile filename\n");
        exit(1);
    }

    if ((fp = fopen(argv[1], "r")) == NULL) {
        perror("fopen");
        exit(1);
    }

    /* read 1 four byte block from file */
    int *buf = readnblocks(fp, 2, 4);
    if (buf == NULL) {
        perror("readnbytes");
        exit(1);
    }
    free(buf);
    return 0;
}
