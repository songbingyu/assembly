# nasm -f elf64 -o hello2.o hello2.s
# ld -o hello2 hello2.o

section .data
    msg db "hello, world",`\n`

section .text
    global _start

_start:
    mov rax, 1
    mov rdi, 1  
    mov rsi, msg
    mov rdx, 14
    syscall

    mov rax, 60
    mov rdi, 0
    syscall
