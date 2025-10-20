	.arch armv8-a
	.file	"quicksort.c"
	.text
	.align	2
	.p2align 4,,11
	.global	swap
	.type	swap, %function
swap:
.LFB0:
	.cfi_startproc
	ldr	w3, [x1]
	ldr	w2, [x0]
	str	w3, [x0]
	str	w2, [x1]
	ret
	.cfi_endproc
.LFE0:
	.size	swap, .-swap
	.align	2
	.p2align 4,,11
	.global	partition
	.type	partition, %function
partition:
.LFB1:
	.cfi_startproc
	sxtw	x8, w2
	mov	x3, x0
	sub	w4, w1, #1
	ldr	w6, [x0, x8, lsl 2]
	cmp	w2, w1
	ble	.L7
	sxtw	x1, w1
	.p2align 3,,7
.L6:
	ldr	w0, [x3, x1, lsl 2]
	cmp	w0, w6
	bge	.L5
	add	w4, w4, 1
	sxtw	x5, w4
	ldr	w7, [x3, x5, lsl 2]
	str	w0, [x3, x5, lsl 2]
	str	w7, [x3, x1, lsl 2]
.L5:
	add	x1, x1, 1
	cmp	w2, w1
	bgt	.L6
	add	w0, w4, 1
	sxtw	x4, w4
	add	x4, x4, 1
	ldr	w6, [x3, x8, lsl 2]
	ldr	w1, [x3, x4, lsl 2]
	str	w6, [x3, x4, lsl 2]
	str	w1, [x3, x8, lsl 2]
	ret
	.p2align 2,,3
.L7:
	sxtw	x4, w4
	mov	w0, w1
	add	x4, x4, 1
	ldr	w1, [x3, x4, lsl 2]
	str	w6, [x3, x4, lsl 2]
	str	w1, [x3, x8, lsl 2]
	ret
	.cfi_endproc
.LFE1:
	.size	partition, .-partition
	.align	2
	.p2align 4,,11
	.global	quicksort
	.type	quicksort, %function
quicksort:
.LFB2:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -16
	.cfi_offset 22, -8
	add	x22, x0, w2, sxtw 2
	cmp	w2, w1
	ble	.L9
	mov	w21, w2
	stp	x19, x20, [sp, 16]
	.cfi_offset 20, -24
	.cfi_offset 19, -32
	mov	x19, x0
.L14:
	ldr	w5, [x22]
	sub	w20, w1, #1
	cmp	w21, w1
	ble	.L11
	sxtw	x3, w1
	.p2align 3,,7
.L13:
	ldr	w0, [x19, x3, lsl 2]
	cmp	w5, w0
	ble	.L12
	add	w20, w20, 1
	sxtw	x4, w20
	ldr	w2, [x19, x4, lsl 2]
	str	w0, [x19, x4, lsl 2]
	str	w2, [x19, x3, lsl 2]
.L12:
	add	x3, x3, 1
	cmp	w21, w3
	bgt	.L13
	ldr	w5, [x22]
.L11:
	sxtw	x3, w20
	mov	w2, w20
	add	x3, x3, 1
	mov	x0, x19
	ldr	w4, [x19, x3, lsl 2]
	str	w5, [x19, x3, lsl 2]
	str	w4, [x22]
	bl	quicksort
	add	w1, w20, 2
	cmp	w1, w21
	blt	.L14
	ldp	x19, x20, [sp, 16]
	.cfi_restore 20
	.cfi_restore 19
.L9:
	ldp	x21, x22, [sp, 32]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 22
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2:
	.size	quicksort, .-quicksort
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
