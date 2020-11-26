%include "asm_io.inc"

section .text
global _CMAIN
_CMAIN:
	xor eax,eax
  mov eax, 3
  mov ecx, 2
  print_int 
  dump_regs 1
ret