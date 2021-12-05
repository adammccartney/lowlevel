
arraysum.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <sum_elements>:
/* WARNING: this is buggy code
 *          it's buggy because if it gets passed an array length 0, it tries to
 *          create a loop where it the second control parameter is -1. This
 *          means the loop is never entered and we 
 * */
float sum_elements(float a[], unsigned length) {
   0:	55                   	push   rbp
   1:	48 89 e5             	mov    rbp,rsp
   4:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
   8:	89 75 e4             	mov    DWORD PTR [rbp-0x1c],esi
    int i;
    float result = 0;
   b:	66 0f ef c0          	pxor   xmm0,xmm0
   f:	f3 0f 11 45 f8       	movss  DWORD PTR [rbp-0x8],xmm0
    
    for (i = 0; i < length - 1; i++) {
  14:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  1b:	eb 2a                	jmp    47 <sum_elements+0x47>
        result += a[i];
  1d:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  20:	48 98                	cdqe   
  22:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
  29:	00 
  2a:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  2e:	48 01 d0             	add    rax,rdx
  31:	f3 0f 10 00          	movss  xmm0,DWORD PTR [rax]
  35:	f3 0f 10 4d f8       	movss  xmm1,DWORD PTR [rbp-0x8]
  3a:	f3 0f 58 c1          	addss  xmm0,xmm1
  3e:	f3 0f 11 45 f8       	movss  DWORD PTR [rbp-0x8],xmm0
    for (i = 0; i < length - 1; i++) {
  43:	83 45 fc 01          	add    DWORD PTR [rbp-0x4],0x1
  47:	8b 45 e4             	mov    eax,DWORD PTR [rbp-0x1c]
  4a:	8d 50 ff             	lea    edx,[rax-0x1]
  4d:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  50:	39 c2                	cmp    edx,eax
  52:	77 c9                	ja     1d <sum_elements+0x1d>
    }
    return result;
  54:	f3 0f 10 45 f8       	movss  xmm0,DWORD PTR [rbp-0x8]
}
  59:	5d                   	pop    rbp
  5a:	c3                   	ret    

000000000000005b <main>:


int main (int argc, char* argv[]) {
  5b:	55                   	push   rbp
  5c:	48 89 e5             	mov    rbp,rsp
  5f:	48 83 ec 20          	sub    rsp,0x20
  63:	89 7d ec             	mov    DWORD PTR [rbp-0x14],edi
  66:	48 89 75 e0          	mov    QWORD PTR [rbp-0x20],rsi
    float result = 0;
  6a:	66 0f ef c0          	pxor   xmm0,xmm0
  6e:	f3 0f 11 45 fc       	movss  DWORD PTR [rbp-0x4],xmm0
    unsigned len = 0;
  73:	c7 45 f8 00 00 00 00 	mov    DWORD PTR [rbp-0x8],0x0
    float af[] = {};
    result = sum_elements(af, len);
  7a:	8b 55 f8             	mov    edx,DWORD PTR [rbp-0x8]
  7d:	48 8d 45 f8          	lea    rax,[rbp-0x8]
  81:	89 d6                	mov    esi,edx
  83:	48 89 c7             	mov    rdi,rax
  86:	e8 00 00 00 00       	call   8b <main+0x30>
  8b:	66 0f 7e c0          	movd   eax,xmm0
  8f:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
    printf("%f", result);
  92:	66 0f ef c9          	pxor   xmm1,xmm1
  96:	f3 0f 5a 4d fc       	cvtss2sd xmm1,DWORD PTR [rbp-0x4]
  9b:	66 48 0f 7e c8       	movq   rax,xmm1
  a0:	66 48 0f 6e c0       	movq   xmm0,rax
  a5:	48 8d 3d 00 00 00 00 	lea    rdi,[rip+0x0]        # ac <main+0x51>
  ac:	b8 01 00 00 00       	mov    eax,0x1
  b1:	e8 00 00 00 00       	call   b6 <main+0x5b>
    return 0;
  b6:	b8 00 00 00 00       	mov    eax,0x0
}
  bb:	c9                   	leave  
  bc:	c3                   	ret    
