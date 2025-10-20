	.arch armv8-a
	.file	"aes_mix_columns.c"
	.text
	.align	2
	.type	gf_mul, %function
gf_mul:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	strb	w0, [sp, 15]
	strb	w1, [sp, 14]
	strb	wzr, [sp, 26]
	str	wzr, [sp, 28]
	b	.L2
.L5:
	ldrb	w0, [sp, 14]
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L3
	ldrb	w1, [sp, 26]
	ldrb	w0, [sp, 15]
	eor	w0, w1, w0
	strb	w0, [sp, 26]
.L3:
	ldrb	w0, [sp, 15]
	and	w0, w0, -128
	strb	w0, [sp, 27]
	ldrb	w0, [sp, 15]
	ubfiz	w0, w0, 1, 7
	strb	w0, [sp, 15]
	ldrb	w0, [sp, 27]
	cmp	w0, 0
	beq	.L4
	ldrb	w1, [sp, 15]
	mov	w0, 27
	eor	w0, w1, w0
	strb	w0, [sp, 15]
.L4:
	ldrb	w0, [sp, 14]
	lsr	w0, w0, 1
	strb	w0, [sp, 14]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L2:
	ldr	w0, [sp, 28]
	cmp	w0, 7
	ble	.L5
	ldrb	w0, [sp, 26]
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
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
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -48
	str	x0, [sp, 40]
	str	wzr, [sp, 52]
	b	.L8
.L9:
	ldr	w0, [sp, 52]
	lsl	w0, w0, 2
	sxtw	x0, w0
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	ldrb	w0, [x0]
	strb	w0, [sp, 48]
	ldr	x0, [sp, 56]
	ldrb	w0, [x0, 1]
	strb	w0, [sp, 49]
	ldr	x0, [sp, 56]
	ldrb	w0, [x0, 2]
	strb	w0, [sp, 50]
	ldr	x0, [sp, 56]
	ldrb	w0, [x0, 3]
	strb	w0, [sp, 51]
	mov	w1, 2
	ldrb	w0, [sp, 48]
	bl	gf_mul
	and	w19, w0, 255
	mov	w1, 3
	ldrb	w0, [sp, 49]
	bl	gf_mul
	and	w0, w0, 255
	eor	w0, w19, w0
	and	w1, w0, 255
	ldrb	w0, [sp, 50]
	eor	w0, w1, w0
	and	w1, w0, 255
	ldrb	w0, [sp, 51]
	eor	w0, w1, w0
	and	w1, w0, 255
	ldr	x0, [sp, 56]
	strb	w1, [x0]
	mov	w1, 2
	ldrb	w0, [sp, 49]
	bl	gf_mul
	and	w1, w0, 255
	ldrb	w0, [sp, 48]
	eor	w0, w1, w0
	and	w19, w0, 255
	mov	w1, 3
	ldrb	w0, [sp, 50]
	bl	gf_mul
	and	w0, w0, 255
	eor	w0, w19, w0
	and	w2, w0, 255
	ldr	x0, [sp, 56]
	add	x0, x0, 1
	ldrb	w1, [sp, 51]
	eor	w1, w2, w1
	and	w1, w1, 255
	strb	w1, [x0]
	ldrb	w1, [sp, 48]
	ldrb	w0, [sp, 49]
	eor	w0, w1, w0
	and	w19, w0, 255
	mov	w1, 2
	ldrb	w0, [sp, 50]
	bl	gf_mul
	and	w0, w0, 255
	eor	w0, w19, w0
	and	w19, w0, 255
	mov	w1, 3
	ldrb	w0, [sp, 51]
	bl	gf_mul
	and	w1, w0, 255
	ldr	x0, [sp, 56]
	add	x0, x0, 2
	eor	w1, w19, w1
	and	w1, w1, 255
	strb	w1, [x0]
	mov	w1, 3
	ldrb	w0, [sp, 48]
	bl	gf_mul
	and	w1, w0, 255
	ldrb	w0, [sp, 49]
	eor	w0, w1, w0
	and	w1, w0, 255
	ldrb	w0, [sp, 50]
	eor	w0, w1, w0
	and	w19, w0, 255
	mov	w1, 2
	ldrb	w0, [sp, 51]
	bl	gf_mul
	and	w1, w0, 255
	ldr	x0, [sp, 56]
	add	x0, x0, 3
	eor	w1, w19, w1
	and	w1, w1, 255
	strb	w1, [x0]
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
.L8:
	ldr	w0, [sp, 52]
	cmp	w0, 3
	ble	.L9
	nop
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
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
