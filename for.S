.set sum, 0
.set i,   1

.text
.global _start
_start:
    li   a1, sum
    li   a2, i

    li   t0, 10
for:
    blt  t0, a2, skip
    add  a1, a1, a2
    addi a2, a2, 1
    j    for
skip:

    mv  a0, a1
    li  a7, 93
    ecall
