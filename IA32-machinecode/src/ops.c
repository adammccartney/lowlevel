/* generated assembly (IA32)
 * x at %ebp+8, y at %ebp+12, z at %abp+16
 * 1 movl  12(%ebp),  %eax     // load y
 * 2 xorl  8(%ebp), %eax       // y |= x 
 * 3 sarl  $3, %eax            // y >>= 3
 * 4 notl  %eax                // y != y
 * 5 subl  16(%ebp), %eax      // y -= z
 *
 * */

int arith(int x, int y, int z) {
    int t1 = y ^ x;
    int t2 = t1 >> 3;
    int t3 = ~t2;
    int t4 = t3 - z;
    return t4;
}

