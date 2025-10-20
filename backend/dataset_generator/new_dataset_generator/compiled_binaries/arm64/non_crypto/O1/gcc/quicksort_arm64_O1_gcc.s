	.arch armv8-a
	.file	"quicksort.c"
	.text
	.align	2
	.global	swap
	.type	swap, %function
swap:
.LFB0:
	.cfi_startproc
	ldr	w2, [x0]
	ldr	w3, [x1]
	str	w3, [x0]
	str	w2, [x1]
	ret
	.cfi_endproc
.LFE0:
	.size	swap, .-swap
	.align	2
	.global	partition
	.type	partition, %function
partition:
.LFB1:
	.cfi_startproc
	sxtw	x8, w2
	ldr	w5, [x0, x8, lsl 2]
	sub	w4, w1, #1
	cmp	w2, w1
	ble	.L3
	sxtw	x1, w1
	b	.L5
.L4:
	add	x1, x1, 1
	cmp	w2, w1
	ble	.L3
.L5:
	ldr	w3, [x0, x1, lsl 2]
	cmp	w3, w5
	bge	.L4
	add	w4, w4, 1
	sxtw	x6, w4
	ldr	w7, [x0, x6, lsl 2]
	str	w3, [x0, x6, lsl 2]
	str	w7, [x0, x1, lsl 2]
	b	.L4
.L3:
	sxtw	x1, w4
	add	x1, x1, 1
	ldr	w2, [x0, x1, lsl 2]
	ldr	w3, [x0, x8, lsl 2]
	str	w3, [x0, x1, lsl 2]
	str	w2, [x0, x8, lsl 2]
	add	w0, w4, 1
	ret
	.cfi_endproc
.LFE1:
	.size	partition, .-partition
	.align	2
	.global	quicksort
	.type	quicksort, %function
quicksort:
.LFB2:
	.cfi_startproc
	cmp	w1, w2
	blt	.L13
	ret
.L13:
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	.cfi_offset 21, -16
	.cfi_offset 22, -8
	mov	x21, x0
	mov	w20, w1
	mov	w19, w2
	bl	partition
	mov	w22, w0
	sub	w2, w0, #1
	mov	w1, w20
	mov	x0, x21
	bl	quicksort
	mov	w2, w19
	add	w1, w22, 1
	mov	x0, x21
	bl	quicksort
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2:
	.size	quicksort, .-quicksort
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
