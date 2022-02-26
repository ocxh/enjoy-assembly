%include "io64.inc"

section .text
global CMAIN
CMAIN:
    ;write your code here
    PRINT_STRING msg1
    NEWLINE
    PRINT_STRING msg2
    PRINT_STRING msg3
    
    xor rax, rax
    ret
    
section .data
    msg1 db 'msg1 ',0x00
    msg2 db 'hello ',0x00
    msg3 db "word!",0x00