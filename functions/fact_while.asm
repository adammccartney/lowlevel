    segment .data
x   dq    0

    segment .text
    global main
    global fact_while

; int fact_while (int x);
fact_while:
    n     equ  8    ; why set n?
    push  rbp
    mov   rsp, 16   ; why should this be offset by 16 ?
  
; { int result = 1;
    movl  eax, 1
    jmp   .L12
.L13
; result *= x;
    imull eax, edi
; x--; 
.L12
; while (x > 0)
    testl   edi, eax
    jg      .L13   
    decl    edi
    leave
    ret

main:
    push  rbp
    mov   rbp, rsp
    call  fact_while

