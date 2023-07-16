/*
 * read_matrix.c - read a matrix from a file 
 *
 * 1. Open file with read permissions. The file is provided as a command line argument. 
 * 2. Use fread to read the number of rows and columns from the file (the first two integers
 * in the file). Store these integers in memory 
 * 3. Allocate memory for the matrix (Row * Column) 
 * 4. Read the matrix from the file and store it in the allocated memory 
 * 5. Close the file 
 * 6. Return the pointer to the allocated memory 
 *
 * */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

struct m_info {
    /* matrix info */
    int rows;
    int cols;
};


FILE* open_file(char* fname, char* mode)
{
    FILE* fp = fopen(fname, mode);
    if (fp == NULL) {
        printf("Error opening file %s\n", fname);
        exit(1);
    }
    return fp;
}


/* read n blocks from file */
int* readnblocks(FILE* fd, size_t n, size_t blocksize)
{
    /* Allocate a buffer of (n * blocksize) bytes */
    void *buf = malloc(n * blocksize);
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

/* Read a matrix from a file */
int* read_matrix(char* fname)
{
    /* Open file with read permissions */
    FILE* fp = open_file(fname, "r");
    /* Read the number of rows and columns from the file (the first two integers
     * in the file). Store these integers in memory */ 

    /* Read matrix info */
    size_t blocksize = 4;
    int initial_read = 2;
    int* buf_minfo = readnblocks(fp, 2, blocksize); 

    /* Store rows and columns as a record */
    struct m_info minfo = {buf_minfo[0], buf_minfo[1]};

    int mdimension = minfo.rows * minfo.cols;
    /* Allocate memory for the matrix (Row * Column) */
    int* matrix = malloc(minfo.rows * minfo.cols * blocksize);
    if (matrix == NULL) {
        perror("malloc");
    }
    /* Read mdimension blocks from file, store in buffer */
    int* buf_matrix = readnblocks(fp, mdimension, blocksize);

    /* Close the file */
    fclose(fp);
    /* Return the pointer to the allocated memory */
    return buf_matrix;
} 



int main(int argc, char* argv[])
{
    if (argc != 2) {
        printf("Usage: %s <filename>\n", argv[0]);
        return 1;
    }
    /* Get filename from stdin */
    char* fname = argv[1];
    /* Read matrix from file */
    int* buf = read_matrix(fname);
    return 0;
}
