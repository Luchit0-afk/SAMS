%include "asm_io.inc"

section .data


section .text
global _PAR
_PAR:
	xor eax,eax
    push ebp;
    mov ebp,esp;
    mov ebx,[ebp+8]
    mov eax, ebx
    shr ebx , 1 
    jc impar
    jmp par
  impar
  	mov eax,0
  par
  	mov esp, ebp
  	pop ebp
ret 