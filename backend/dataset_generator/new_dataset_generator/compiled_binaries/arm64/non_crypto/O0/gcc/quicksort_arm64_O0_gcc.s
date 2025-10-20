	.arch armv8-a
	.file	"quicksort.c"
	.text
	.align	2
	.global	swap
	.type	swap, %function
swap:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	str	w0, [sp, 28]
	ldr	x0, [sp]
	ldr	w1, [x0]
	ldr	x0, [sp, 8]
	str	w1, [x0]
	ldr	x0, [sp]
	ldr	w1, [sp, 28]
	str	w1, [x0]
	nop
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
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
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	str	w2, [sp, 16]
	ldrsw	x0, [sp, 16]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	w0, [x0]
	str	w0, [sp, 44]
	ldr	w0, [sp, 20]
	sub	w0, w0, #1
	str	w0, [sp, 36]
	ldr	w0, [sp, 20]
	str	w0, [sp, 40]
	b	.L3
.L5:
	ldrsw	x0, [sp, 40]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	ble	.L4
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x2, x1, x0
	ldrsw	x0, [sp, 40]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	mov	x1, x0
	mov	x0, x2
	bl	swap
.L4:
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L3:
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 16]
	cmp	w1, w0
	blt	.L5
	ldrsw	x0, [sp, 36]
	add	x0, x0, 1
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x2, x1, x0
	ldrsw	x0, [sp, 16]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	mov	x1, x0
	mov	x0, x2
	bl	swap
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
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
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	str	w2, [sp, 16]
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 16]
	cmp	w1, w0
	bge	.L9
	ldr	w2, [sp, 16]
	ldr	w1, [sp, 20]
	ldr	x0, [sp, 24]
	bl	partition
	str	w0, [sp, 44]
	ldr	w0, [sp, 44]
	sub	w0, w0, #1
	mov	w2, w0
	ldr	w1, [sp, 20]
	ldr	x0, [sp, 24]
	bl	quicksort
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	ldr	w2, [sp, 16]
	mov	w1, w0
	ldr	x0, [sp, 24]
	bl	quicksort
.L9:
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2:
	.size	quicksort, .-quicksort
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
