.data
hello: .asciz "Hello World!\n"

.text
.global _start
_start:
    li a0, 1
    la a1, hello
    li a2, 13
    li a7, 64
    ecall
    
    li a0, 0
    li a7, 93
    ecall
