.set a, 0
.set b, 10

.text
.global _start
_start:
    li   a1, a
    li   a2, b

    li   t0, 10
    bne  a2, t0, else
    # if block
    addi a1, a1, 1
    j   skip
else:
    addi a1, a1, 2
skip:
    
    mv  a0, a1
    li  a7, 93
    ecall
