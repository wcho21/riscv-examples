.data
arr: .skip 12

.text
.global _start
_start:
    # t0 = &arr
    la    t0, arr

    li    t1, 20
    sw    t1, 0(t0)
    li    t1, 21
    sw    t1, 4(t0)
    li    t1, 22
    sw    t1, 8(t0)

.data
sum: .word 0

.text
    # t2 = sum
    la    t1, sum
    lw    t2, 0(t1)

    # t2 += arr[0] + ... + arr[2]
    lw    t3, 0(t0)
    add   t2, t2, t3
    lw    t3, 4(t0)
    add   t2, t2, t3
    lw    t3, 8(t0)
    add   t2, t2, t3

    # sum = t2
    sw    t2, 0(t1)

    # exit with sum
    lw    a0, 0(t1)
    li    a7, 93
    ecall
