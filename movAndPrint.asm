%include "io64.inc"

section .text
global CMAIN
CMAIN:
    ;write your code here
    mov AL, [a]
    mov [e], AL
    mov AX, [b]
    mov [f], AX
    mov EAX, [c]
    mov [g], EAX
    mov RAX, [d]
    mov [h], RAX
    
    PRINT_DEC 1,a
    NEWLINE
    PRINT_DEC 2,b
    NEWLINE
    PRINT_DEC 4,c
    NEWLINE
    PRINT_DEC 8,d
    NEWLINE
    PRINT_DEC 1,e
    NEWLINE
    PRINT_DEC 2,f
    NEWLINE
    PRINT_DEC 4,g
    NEWLINE
    PRINT_DEC 8,h
    NEWLINE
    
    xor rax, rax
    ret

section .bss
e resb 1
f resw 1
g resd 1
h resq 1
       
section .data
a db 0x12
b dw 0x1234
c dd 0x12345678
d dq 0x1234567890abcdef