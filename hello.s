# print hello world
#
#     gcc -c hello.s && ld hello.o && ./a.out
#
# or
#
#     gcc -nostdlib hello.s && ./a.out
# -----------------------------------------------

.section .data
.section .text

.global _start

_start:
    mov    $1, %rax
    mov    $1, %rdi
    mov    $str1, %rsi
    mov    $13, %rdx
    syscall
    
    mov  $60, %rax
    xor  %rdi, %rdi
    syscall

str1: 
    .string	"hello world\n"
