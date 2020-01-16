[BITS 64]

    global strcasecmp
    section .text

strcasecmp:
    mov rcx, 0
    mov r8, rdi

loop:
    movzx rdi, BYTE [r8+rcx]
    call verify

    mov r9, rax
    movzx rdi, BYTE [rsi+rcx]

    call verify
    mov rdx, rax

    cmp r9 , 0
    je end

    cmp rdx, 0
    je end

    cmp rdx, r9
    jne end

    inc rcx
    jmp loop

end:
    sub r9, rdx
    mov rax, r9
    ret

verify:
    cmp rdi, 65
    jge get_maj
    jmp verify_end

get_maj:
    cmp rdi, 90
    jle make_lower
    jmp verify_end

make_lower:
    add rdi, 32
    jmp verify_end

verify_end:
    mov rax, rdi
    ret
