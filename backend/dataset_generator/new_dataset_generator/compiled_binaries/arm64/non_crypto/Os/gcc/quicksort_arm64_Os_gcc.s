	.arch armv8-a
	.file	"quicksort.c"
	.text
	.align	2
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
	.global	partition
	.type	partition, %function
partition:
.LFB1:
	.cfi_startproc
	sbfiz	x5, x2, 2, 32
	sub	w4, w1, #1
	mov	x3, x0
	sxtw	x1, w1
	ldr	w7, [x0, x5]
.L3:
	add	w0, w4, 1
	cmp	w2, w1
	bgt	.L5
	sxtw	x4, w4
	ldr	w2, [x3, x5]
	add	x4, x4, 1
	lsl	x4, x4, 2
	ldr	w1, [x3, x4]
	str	w2, [x3, x4]
	str	w1, [x3, x5]
	ret
.L5:
	ldr	w6, [x3, x1, lsl 2]
	cmp	w6, w7
	bge	.L4
	sbfiz	x4, x0, 2, 32
	ldr	w8, [x3, x4]
	str	w6, [x3, x4]
	mov	w4, w0
	str	w8, [x3, x1, lsl 2]
.L4:
	add	x1, x1, 1
	b	.L3
	.cfi_endproc
.LFE1:
	.size	partition, .-partition
	.align	2
	.global	quicksort
	.type	quicksort, %function
quicksort:
.LFB2:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	w9, w1
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	mov	x20, x0
	str	x21, [sp, 32]
	.cfi_offset 21, -16
	mov	w21, w2
.L8:
	cmp	w9, w21
	bge	.L6
	mov	w1, w9
	mov	w2, w21
	mov	x0, x20
	bl	partition
	mov	w1, w9
	mov	w19, w0
	sub	w2, w0, #1
	mov	x0, x20
	bl	quicksort
	add	w9, w19, 1
	b	.L8
.L6:
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2:
	.size	quicksort, .-quicksort
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
