.set a, 0
.set b, 10

.text
.global _start
_start:
    li   a1, a
    li   a2, b

    li   t0, 10
    blt  a2, t0, skip
    li   t0, 15
    blt  t0, a2, skip
    addi a1, a1, 1
skip:

    mv  a0, a1
    li  a7, 93
    ecall
