	.arch armv8-a
	.file	"aes_mix_columns.c"
	.text
	.align	2
	.type	gf_mul, %function
gf_mul:
.LFB0:
	.cfi_startproc
	and	w1, w1, 255
	and	w2, w0, 255
	mov	w3, 8
	mov	w0, 0
	mov	w6, 27
.L3:
	sbfx	x4, x1, 0, 1
	tst	x2, 128
	and	w4, w2, w4
	lsr	w1, w1, 1
	eor	w0, w0, w4
	ubfiz	w4, w2, 1, 7
	eor	w5, w4, w6
	csel	w2, w5, w4, ne
	subs	w3, w3, #1
	bne	.L3
	ret
	.cfi_endproc
.LFE0:
	.size	gf_mul, .-gf_mul
	.align	2
	.global	aes_mix_columns
	.type	aes_mix_columns, %function
aes_mix_columns:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x7, x0
	add	x15, x0, 16
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -16
.L7:
	ldrb	w10, [x7]
	mov	w1, 2
	ldrb	w12, [x7, 1]
	add	x7, x7, 4
	ldrb	w11, [x7, -2]
	mov	w0, w10
	ldrb	w9, [x7, -1]
	bl	gf_mul
	mov	w1, 3
	and	w8, w0, 255
	mov	w0, w12
	bl	gf_mul
	and	w0, w0, 255
	eor	w19, w11, w9
	eor	w8, w8, w0
	mov	w1, 2
	eor	w19, w19, w8
	strb	w19, [x7, -4]
	mov	w0, w12
	eor	w18, w10, w9
	bl	gf_mul
	and	w8, w0, 255
	mov	w1, 3
	mov	w0, w11
	bl	gf_mul
	and	w0, w0, 255
	eor	w8, w8, w0
	mov	w1, 2
	eor	w18, w18, w8
	strb	w18, [x7, -3]
	mov	w0, w11
	eor	w14, w10, w12
	bl	gf_mul
	and	w8, w0, 255
	mov	w1, 3
	mov	w0, w9
	bl	gf_mul
	and	w0, w0, 255
	eor	w8, w8, w0
	mov	w1, 3
	eor	w14, w14, w8
	strb	w14, [x7, -2]
	mov	w0, w10
	eor	w13, w12, w11
	bl	gf_mul
	and	w8, w0, 255
	mov	w1, 2
	mov	w0, w9
	bl	gf_mul
	and	w0, w0, 255
	eor	w8, w8, w0
	eor	w13, w13, w8
	strb	w13, [x7, -1]
	cmp	x15, x7
	bne	.L7
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	aes_mix_columns, .-aes_mix_columns
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
