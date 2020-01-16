[BITS 64]

    global strchr
    section .text

strchr:
    xor rax, rax
    mov rdx, rsi
    jmp loop

loop:
    cmp BYTE[rdi], dl
    je found

    cmp BYTE[rdi], 0
    je end

    inc rdi
    jmp loop

found:
    mov rax, rdi
    jmp end

end:
    ret
