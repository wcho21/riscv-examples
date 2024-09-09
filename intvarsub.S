.data
num: .word 5

.text
.global _start
_start:
    # num -= 3
    lw    t0, num
    li    t1, 3
    sub   t0, t0, t1
    sw    t0, num, t1

    lw    a0, num
    li    a7, 93
    ecall
