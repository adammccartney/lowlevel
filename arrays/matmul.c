/* matmul.c - this file was generated from org mode, manual edits may be overwritten
 * see ~/Notes/org-roam/...matrix_multiply.org
 */
#include <stdlib.h>
#include <stdio.h>
#include <assert.h>

struct matrix {
    int cols;
    int rows;
    int* vals; /* variable size so at end */
};

void init_matrix(struct matrix* m, int* vals, int cols, int rows)
  {
    m->cols = cols;
    m->rows = rows;
    m->vals = vals;
  };

void destroy_matrix(struct matrix* m)
  {
    free(m->vals);
    free(m);
  }

int main(void)
    {
        struct matrix* m0 = malloc(sizeof(struct matrix));
        struct matrix* m1 = malloc(sizeof(struct matrix));
        
        int vals0[6] = {1, 4, 2, 5, 3, 6};
        int* v0p = &vals0[0];
        int v0c = 2;
        int v0r = 3;
        init_matrix(m0, v0p, v0c, v0r);
        int vals1[6] = {1, 1, 3, 7, 8, 1};
        int* v1p = &vals1[0];
        int v1c = 3;
        int v1r = 2;
        init_matrix(m1, v1p, v1c, v1r);
        assert(v0c == v1r);  /* Assert that the matrices can be multiplied */
        int result_len = m0->rows * m1->cols; // number of items in result
        struct matrix* result = malloc(sizeof (struct matrix));
        int resc = m0->rows; /* result cols <- num rows in first matrix  */
        int resr = m1->cols; /* result rows <- num cols in second matrix */
        /* Storage for results vals */
        int* result_vals = malloc(result_len * sizeof(int)); 
        if (result == NULL)
            printf("malloc failed\n");
        printf("%d\n", result_len);
        return 0;
    }
