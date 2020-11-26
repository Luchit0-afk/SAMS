;13
%include "asm_io.inc"

section .data
    msg dd "Sumar enteros hasta: "
    msg2 dd "Sum es: "

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
    mov [n],eax         ;n y eax tienen el mismo valor
    call calcSum        ;eax tiene el valor de n
    mov ebx, eax        ;ebx tiene el resultado a imprimir
    mov eax, msg2
    call print_string   ;imprime el mensaje 2
    mov eax, ebx
    call print_int      ; imprime el resultado 
ret

calcSum:
    push ebp
    mov ebp, esp
    ;mov ebx,[ebp + 8]      ;el parametro esta en ebx
    ;dump_regs 1
    ;el parametro esta en eax
    sub esp,8               ;reservo lugar para dos variables locales
    mov dword [ebp - 4],0   ; creo la variable local donde se almacena el resultado
    mov dword [ebp - 8],1   ; creo la variable local
    mov ecx,eax             ; le paso a ecx el parametro ya que tiene que iterar
  for
    xor eax,eax             ;limpio el eax
    mov eax,[ebp - 8]       ; le pasamos a eax el i para elevarCubo
    mov ebx,eax             ; guardamos el valor de eax en ebx
    call elevarCubo         ; en eax quedara el resultado
    add [ebp - 4],eax       ; sumo la variable local con eax(tiene el resultado de elevarcubo)
    mov eax,ebx             ;restauro el valor de eax
    mov edx, [ebp - 8]      ; le paso a edx la variable local 
    inc edx                 ; incremenento edx
    mov dword [ebp - 8],edx ; incremento la variable local 
    loop for
    mov eax,[ebp - 4]       ; le asignamos a eax el resultado para retornarlo
    mov esp, ebp
    pop ebp 
ret

;anda bien creo
elevarCubo:
    push ebp
    mov ebp, esp
    mov ebx, eax
    imul eax,eax
    imul eax,ebx
    mov esp, ebp
    pop ebp 
ret
