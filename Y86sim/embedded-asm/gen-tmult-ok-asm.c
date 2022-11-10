/*
  Throwaway file used to generate initial block of assembly for our function
  Multiply arguments and indicate whether it did not overflow
 */
int tmult_ok_asm(long x, long y, long *dest) {
        long p = x * y;
        *dest = p;
        return p > 0;
}
