	.arch armv8-a
	.file	"aes_mix_columns.c"
	.text
	.align	2
	.type	gf_mul, %function
gf_mul:
.LFB0:
	.cfi_startproc
	and	w2, w0, 255
	and	w1, w1, 255
	mov	w4, 8
	mov	w0, 0
	mov	w6, 27
.L3:
	sbfx	x3, x1, 0, 1
	and	w3, w2, w3
	eor	w0, w0, w3
	ubfiz	w3, w2, 1, 7
	eor	w5, w3, w6
	tst	x2, 128
	csel	w2, w5, w3, ne
	lsr	w1, w1, 1
	subs	w4, w4, #1
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
	stp	x29, x30, [sp, -112]!
	.cfi_def_cfa_offset 112
	.cfi_offset 29, -112
	.cfi_offset 30, -104
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	stp	x27, x28, [sp, 80]
	.cfi_offset 19, -96
	.cfi_offset 20, -88
	.cfi_offset 21, -80
	.cfi_offset 22, -72
	.cfi_offset 23, -64
	.cfi_offset 24, -56
	.cfi_offset 25, -48
	.cfi_offset 26, -40
	.cfi_offset 27, -32
	.cfi_offset 28, -24
	mov	x19, x0
	add	x0, x0, 16
	str	x0, [sp, 104]
	mov	w26, 2
	mov	w25, 3
.L7:
	ldrb	w22, [x19]
	ldrb	w24, [x19, 1]
	eor	w0, w22, w24
	str	w0, [sp, 96]
	ldrb	w23, [x19, 2]
	eor	w1, w24, w23
	str	w1, [sp, 100]
	ldrb	w21, [x19, 3]
	eor	w28, w23, w21
	eor	w27, w22, w21
	mov	w1, w26
	mov	w0, w22
	bl	gf_mul
	and	w20, w0, 255
	mov	w1, w25
	mov	w0, w24
	bl	gf_mul
	and	w0, w0, 255
	eor	w20, w20, w0
	eor	w28, w28, w20
	strb	w28, [x19]
	mov	w1, w26
	mov	w0, w24
	bl	gf_mul
	and	w20, w0, 255
	mov	w1, w25
	mov	w0, w23
	bl	gf_mul
	and	w0, w0, 255
	eor	w20, w20, w0
	eor	w27, w27, w20
	strb	w27, [x19, 1]
	mov	w1, w26
	mov	w0, w23
	bl	gf_mul
	and	w20, w0, 255
	mov	w1, w25
	mov	w0, w21
	bl	gf_mul
	and	w0, w0, 255
	eor	w20, w20, w0
	ldr	w0, [sp, 96]
	eor	w20, w0, w20
	strb	w20, [x19, 2]
	mov	w1, w25
	mov	w0, w22
	bl	gf_mul
	and	w20, w0, 255
	mov	w1, w26
	mov	w0, w21
	bl	gf_mul
	and	w0, w0, 255
	eor	w20, w20, w0
	ldr	w1, [sp, 100]
	eor	w0, w1, w20
	strb	w0, [x19, 3]
	add	x19, x19, 4
	ldr	x0, [sp, 104]
	cmp	x19, x0
	bne	.L7
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldp	x29, x30, [sp], 112
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	aes_mix_columns, .-aes_mix_columns
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
