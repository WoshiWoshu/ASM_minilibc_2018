[BITS 64]

    global rindex
    section .text

rindex:
    mov rcx, 0
    mov rax, 0

loop:
    movzx rdx, byte [rdi+rcx]
    cmp rdx, rsi
    je detected

back_to_loop:
    cmp rdx, 0
    je end

    inc rcx
    jmp loop

detected:
    mov rax, rdi
    add rax, rcx
    jmp back_to_loop

end:
    ret
