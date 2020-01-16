[BITS 64]

    global memcpy
    section .text

memcpy:
    mov rcx, 0
    mov r8, 0

loop:
    cmp r8, rdx
    je end

    mov al, [rsi+r8]
    mov [rdi+rcx], al

    inc rcx
    inc r8
    jmp loop

end:
    mov rax, rdi
    ret
