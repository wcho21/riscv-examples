.data
x: .word 0

.text
.global _start
_start:
    li    a0, 42
    jal   setx      # jal ra, setx

    la    t0, x
    sw    a0, 0(t0)
    li    a7, 93
    ecall

setx:
    la    t0, x
    sw    a0, 0(t0)

    ret             # jalr x0, 0(ra)
