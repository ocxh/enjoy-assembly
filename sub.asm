%include "io64.inc"

section .text
global CMAIN
CMAIN:
    ;write your code here
    mov ax, 1
    mov bx, 4
    
    sub ax,bx
    PRINT_DEC 1,ax
    NEWLINE
    
    mov [a], byte 7
    sub ax, [a]
    PRINT_DEC 1, ax
    NEWLINE
    
    sub [a], bx
    PRINT_DEC 1,a 
    
    xor rax, rax
    ret
    
section .bss
    a resb 1