%include "io64.inc"

section .text
global CMAIN
CMAIN:
    ;write your code here
    GET_DEC 1, param1
    GET_DEC 1, param2
    
    ;더하기
    mov al, [param1]
    mov bl, [param2]
    add al,bl
    mov [plus], al
    ;빼기
    mov al, [param1]
    sub al, bl
    mov [minus], al
    ;곱하기
    mov ax, 0
    mov al, [param1]
    mov bl, [param2]
    mul bl
    mov [x], ax
    ;나누기
    mov ax, 0
    mov al, [param1]
    mov bl, [param2]
    div bl
    mov [div1], al
    mov [div2], ah
    
    PRINT_DEC 1,plus
    NEWLINE
    PRINT_DEC 1,minus
    NEWLINE
    PRINT_DEC 2,x
    NEWLINE
    PRINT_DEC 1, div1
    NEWLINE
    PRINT_DEC 1, div2
    
    
    xor rax, rax
    ret

section .bss
    param1 resb 1
    param2 resb 1

    plus resb 1
    minus resb 1
    x resw 1
    div1 resb 1
    div2 resb 1