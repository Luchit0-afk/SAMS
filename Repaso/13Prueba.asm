;13
%include "asm_io.inc"

section .data
    msg dd "Sumar enteros hasta: "
    msg2 dd "Sum es: "

section .bss
    n resd 0
    res  resd 0

section .text
global CMAIN
CMAIN:
    mov eax, msg
    call print_string
    call print_nl
    call read_int
    mov [n],eax ;n y eax tienen el mismo valor
    call calcSum ;eax tiene el valor de n
    mov ebx, eax;ebx tiene el resultado a imprimir
    mov eax, msg2
    call print_string ;imprime el mensaje 2
    mov eax, ebx
    call print_string
ret

calcSum:
    push ebp
    mov ebp, esp
    mov ebx,[ebp + 8] ;el parametro esta en ebx
    sub esp,8 ;reservo lugar para dos variables locales
    mov [ebp - 4],0 ; creo la variable local donde se almacena el resultado
    mov [ebp - 8],1 ; creo la variable local
    mov ecx,ebx ; le paso a ecx el parametro ya que tiene que iterar
  for
    mov eax,[ebp - 8] ; le pasamos a eax el i para elevarCubo
    call elevarCubo ; en eax quedara el resultado
    add [ebp - 4],eax ; sumo la variable local con eax(tiene el resultado de elevarcubo)
    add [ebp - 8],1 ; le sumo uno a la variable local
    loop for
    mov eax,[ebp - 4] ; le asignamos a eax el resultado para retornarlo
    mov esp, ebp
    pop ebp 
ret

elevarCubo:
    push ebp
    mov ebp, esp
    mov eax,[ebp + 8] ;el parametro esta en ebx
    imul eax,eax
    imul eax,eax
    mov esp, ebp
    pop ebp 
ret
