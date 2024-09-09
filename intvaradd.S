.data
num: .word 2

.text
.global _start
_start:
    # num += 3
    lw   t0, num
    addi t0, t0, 3
    sw   t0, num, t1

    lw   a0, num
    li   a7, 93
    ecall
