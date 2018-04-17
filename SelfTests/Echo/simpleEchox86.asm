section .data
    
    
    wlcm_msg        db "Hello, there!", 0xa
    wlcmMsg_len     equ $ - wlcm_msg

    req_msg        db "Enter ya name, I will tell you what you are called", 0xa
    reqMsg_len     equ $ - req_msg


    disp_msg        db "You are called: "
    dimpMsg_len     equ $ - disp_msg
 
section .bss
    name    resb 25
    num     resb 1

section .text
    global _start

_start:
    mov eax, 4
    mov ebx, 1
    mov ecx, wlcm_msg 
    mov edx, wlcmMsg_len
    int 0x80

    mov eax, '1'
    mov ecx, 10

    l1:
        mov [num], eax
        mov eax, 4
        mov ebx, 1
        push ecx

        mov ecx, num
        mov edx, 1
        int 0x80

        mov eax, 4
        mov ebx, 1
        mov ecx, req_msg
        mov edx, reqMsg_len
        int 0x80

        mov eax, 3
        mov ebx, 2
        mov ecx, name
        mov edx, 25
        int 0x80
        mov eax, 4
        mov ebx, 1
        mov ecx, disp_msg
        mov edx, dimpMsg_len
        int 0x80
        mov eax, 4
        mov ebx, 1
        mov ecx, name
        mov edx, 25
        int 0x80

        mov eax, [num]
        sub eax, '0'
        inc eax
        add eax, '0'
        pop ecx


    call _exit

_exit:
    mov eax, 1
    int 0x80
