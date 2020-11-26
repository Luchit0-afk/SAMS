%include "asm_io.inc"

section .data
	msg dd "Sumar enteros hasta: "

section .bss
	n resd 0
	res  resd 0

section .text
global _CMAIN
_CMAIN:
  	mov eax, msg
  	call print_string
  	call print_nl
  	call read_int
  	mov [n],eax
  	call calSum
  	dump_regs 1
ret

calSum
    push ebp
    mov ebp, esp
    sub esp, 8
    mov [ebp - 4],0
    mov [ebp - 8],0
    mov ecx,[n]
  for
    

    loop for
    mov eax,[ebp - 4]
    mov esp, ebp
    pop ebp 
ret

elevarCubo
    push ebp
    mov ebp, esp

    mov esp, ebp
    pop ebp 
    
ret