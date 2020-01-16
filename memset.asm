[BITS 64]

    global memset
    section .text

memset:
    mov rcx, 0
    mov rax, rsi

loop:
    cmp rdx, 0
    je end

    mov [rdi+rcx], al
    dec rdx

    inc rcx
    jmp loop

end:
    mov rax, rdi
    ret
