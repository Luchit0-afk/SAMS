%include "asm_io.inc"

section .text
global _MAX
_MAX:
   push ebp
   mov ebp, esp
   mov ebx, [ebp+8]
   mov ecx, [ebp+12]
   cmp ebx,ecx
   jg mayor             ;ebx > ecx
   mov eax, ecx
   jmp fin
 mayor
   mov eax,ebx
 fin
   mov esp, ebp
   pop ebp 
ret