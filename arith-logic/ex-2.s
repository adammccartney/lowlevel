    segment .data
x   db      10

    section .text
    global main ; let the linker know about main
main:
    pushl %rbp   ; set up stack from for main
    movl %rsp, %rbp

