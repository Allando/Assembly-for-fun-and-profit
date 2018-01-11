section .data
    welcome_msg     db "Hello, there", 0xa
    welcome_len     equ $ - welcome_msg

    instru_msg      db "Write somthing", 0xa
    instru_len      equ $ - instru_msg

    buff equ        2048

    SYS_WRITE       equ 1
    STD_IN          equ 1
    SYS_EXIT        equ 60
    EXIT_CODE       equ 0

    NEW_LINE        db 0xa

section .text
    global _start

_start:
    ;; Print welcome message
    mov     eax, 4
    mov     ebx, 1
    mov     ecx, welcome_msg
    mov     edx, welcome_len
    syscall

    ;; Print instruction to user
    mov     eax, 4
    mov     ebx, 1
    mov     ecx, instru_msg
    mov     edx, instru_len
    syscall
    
    ;; TODO: Get user input
    

    ;; TODO: Print user input

get_user_input:
    ; https://stackoverflow.com/questions/7006926/learning-assembly-echo-program-name
    xor eax, eax
    xor edi, edi
    mov rsi, buffer
    mov edx, 2048

exit:
    ; syscall number
    mov     rax, SYS_EXIT
    ; exit code
    mov     rdi, EXIT_CODE
    ; call sys_exit
    syscall
