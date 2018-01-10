section .data:
    msg db "Please write stuff",$0A,0
    len equ $ - msg

section .text
    global _start

_start:
    ;; Print option
    mov     edx, len
    mov     ecx, msg
    mov     ebx, 1
    mov     eax, 4
    int     0x80

    mov     eax, 1
    int     0x80

    ;; TODO: Get user input

    ;; TODO: Print user input
