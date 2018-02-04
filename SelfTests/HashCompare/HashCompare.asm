; initialized data section
section .data
    errInput        db      'Error: only one input was parsed.', 0xa
    lenErrInput     equ     $-errInput    

    errMsg          db      'Wrong move...', 0xa
    lenErrMsg       equ     $-errMsg


section .bbs
    

section .text
    global _start   

_start:
    ;; rcx - argc
    pop     rcx

    ;;
    ;; argc
    ;;
    cmp     rcx, 4
    jne     errInput

    ;; skip argv[0] - Program name
    add     rsp, 8

    ;; get argv[1]
    pop     rsi

_md5:

_sha1:

_sha256:

_sha512:

_errorInput:
    mov     rax, 1
    mov     rdi, 1
    mov     rsi, errInput
    mov     rdx, lenErrInput
    syscall

