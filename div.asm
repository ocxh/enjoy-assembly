%include "io64.inc"

section .text
global CMAIN
CMAIN:
    ;write your code here
    ; 7(AX) / 2 = 3(AL:몫), 1(AH:나머지)
    mov ax, 7
    mov bl, 2
    div bl
    
    mov bl,ah
    PRINT_DEC 1, al
    NEWLINE
    PRINT_DEC 1, bl
    
    xor rax, rax
    ret