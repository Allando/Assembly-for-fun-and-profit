section .data
    welcome_msg     db "Hello, there", 0xa, 0xa
    welcome_len     equ 14

    instru_msg      db "Write something", 0xa
    instru_len      equ 16

section .text
    global _start

_start:
    ;; Print welcome message
    mov     rax, 1
    mov     rdi, 1
    mov     rsi, welcome_msg
    mov     rdx, welcome_len
    syscall

    ;; Print instruction to user
    mov     rax, 1 
    mov     rdi, 1
    mov     rsi, instru_msg
    mov     rdx, instru_len
    syscall

    call exit

exit:
    mov     rax, 60
    mov     rdi, 0
    syscall
