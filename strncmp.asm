[BITS 64]

    global strcmp
    section .text

strcnmp:
    mov r8, 0
    mov r10, 0

loop:
    cmp r8, rdx
    jge offlimit

    mov r9b, [rdi + r8]
    mov r10b, [rsi + r8]

    cmp r9b, r10b
    jne end

    cmp r9b, 0
    je offlimit

    inc r8
    jmp loop

offlimit:
    mov rax, 0
    ret

end:
    mov rax, 0
    mov al, r9b
    sub rax, r10
    ret
