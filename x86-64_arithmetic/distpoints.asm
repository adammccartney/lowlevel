; distpoints.asm: compute the distance squared between 2 points in the plane
; identified as 2 integer coordinates each, stored in memory.
     segment .data
ai   dq      2073   ; two points on a plain, pairs of (i, j)
aj   dq      1028
bi   dq      4098
bj   dq      4098   ; assume that points a, b, c form a right angle triangle
adj  dq      0      ; (adj * adj) + (opp * opp) = (hyp * hyp) 
opp  dq      0  
hyp  dq      0

      section .text
      global  main
main:
    push    rbp
    mov     rbp, rsp
    sub     rsp, 96    ; set up the stack frame
    mov     rax, [bi]
    mov     rbx, [ai]
    sub     rax, rbx   ; calculate adjacent side
    mov     [adj], rax ;
    mov     rcx, [bj]
    mov     rdx, [aj]
    sub     rcx, rdx   ; calculate opposite side
    imul    rax, rax   ; square adjacent 
    imul    rcx, rcx   ; square opposite 
    add     rax, rcx   ; 
    mov     [hyp], rax ; store distsquared as hyp 
    leave
    ret

