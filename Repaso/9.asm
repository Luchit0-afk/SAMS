%include "asm_io.inc"

section .text
global CMAIN
CMAIN:
    shr eax , 1
    jc impar
    mov eax,1
  impar
    mov eax,0
ret