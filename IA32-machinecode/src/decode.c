/* decode.c 
 *
 * reverse engineer the following assembly to produce a c function:
 *
 *  xp at %ebp+8, yp at %ebp+12, zp at %epb+16 
 * 1  movl  8(%ebp), %edi          # moves value of xp into %edi
 * 2  movl  12(%ebp), %edx         # moves value of yp into %edx 
 * 3  movl  16(%ebp), %ecx         # moves value of zp into %ecx 
 * 4  movl  (%edx), %ebx           # moves value of yp into %ebx
 * 5  movl  (%ecx), %esi           # moves value of zp into %esi
 * 6  movl  (%edi), %eax           # moves value of xp into %eax
 * 7  movl  %eax, (%edx)           # moves xp to *yp
 * 8  movl  %ebx, (%ecx)           # moves yp to *zp 
 * 9  movl  %esi, (edi)            # moves zp to *xp
 *
 * */

void decode(int *xp, int *yp, int *zp) {
    int x = *xp;
    int y = *yp;
    int z = *zp;
    *xp = y;
    *yp = z;
    *zp = x;
};
