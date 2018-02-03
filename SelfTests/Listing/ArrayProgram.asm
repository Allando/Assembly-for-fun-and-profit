; initialized data section
section .data
    welcomeMsg      db      'Hello There'
    lenWelcomeMsg   equ     $-welcomeMsg
   
    menu            db      'What would you like to do?'
    lenMenu         db      $-menu

    errMsg          db      'Wrong move...'
    lenErrMsg       equ     $-errMsg

section .bbs
    

section .text
    global _start

_start:
    ; Printing the hello message
    mov     rax, 1
    mov     rdi, 1
    mov     rsi, welcomeMsg
    mov     rdx, lenWelcomeMsg
    syscall

    ; Read and store user input
    mov     rax, 1

