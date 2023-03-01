  #define OP / /* Unknown operator */

  short arith(short x)
  {
                  return x OP 16;
  }


/* We want GCC to return the following:
 *
 *# x in %rdi
 *arith:
 *        leaq    15(%rdi), %rbx   # v = x + 15
 *        testq   %rdi, %rdi       # test x
 *        cmovns  %rdi, %rbx       # if x >= 0, 
 *        sarq    $4, %rbx         # v = v >> 4
 *        ret                      # return v
 * */

