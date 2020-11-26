;7
%include "io.inc"

section .data
    A dd 5

section .text
global CMAIN
CMAIN:
    mov ecx,[A]
    mov eax,1
  loopear  
    imul eax,ecx
    loop loopear
    PRINT_DEC 4,eax
    ret