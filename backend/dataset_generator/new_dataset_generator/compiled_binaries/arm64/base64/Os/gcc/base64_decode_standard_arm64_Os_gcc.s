	.arch armv8-a
	.file	"base64_decode_standard.c"
	.text
	.align	2
	.global	base64_char_value
	.type	base64_char_value, %function
base64_char_value:
.LFB0:
	.cfi_startproc
	and	w1, w0, 255
	sub	w0, w1, #65
	and	w2, w0, 255
	cmp	w2, 25
	bls	.L1
	sub	w0, w1, #97
	and	w0, w0, 255
	cmp	w0, 25
	bhi	.L4
	sub	w0, w1, #71
.L1:
	ret
.L4:
	sub	w0, w1, #48
	and	w0, w0, 255
	cmp	w0, 9
	bhi	.L5
	add	w0, w1, 4
	b	.L1
.L5:
	cmp	w1, 43
	beq	.L6
	cmp	w1, 47
	mov	w0, 63
	csinv	w0, w0, wzr, eq
	b	.L1
.L6:
	mov	w0, 62
	b	.L1
	.cfi_endproc
.LFE0:
	.size	base64_char_value, .-base64_char_value
	.align	2
	.global	base64_decode_standard
	.type	base64_decode_standard, %function
base64_decode_standard:
.LFB1:
	.cfi_startproc
	mov	x6, 0
	str	xzr, [x2]
	mov	x7, x0
	mov	x5, x1
	ldrb	w0, [x0, x6]
	mov	x3, x2
	cmp	w0, 61
	ccmp	w0, 0, 4, ne
	bne	.L15
	ret
.L15:
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp
.L11:
	add	x9, x7, x6
	mov	x8, 0
	mov	w2, 0
.L10:
	ldrb	w0, [x9, x8]
	lsl	w4, w2, 6
	add	x8, x8, 1
	bl	base64_char_value
	orr	w2, w0, w4
	cmp	x8, 4
	bne	.L10
	ldr	x0, [x3]
	add	x6, x6, 4
	add	x1, x0, 1
	str	x1, [x3]
	lsr	w1, w2, 16
	strb	w1, [x5, x0]
	ldr	x0, [x3]
	add	x1, x0, 1
	str	x1, [x3]
	lsr	w1, w2, 8
	strb	w1, [x5, x0]
	ldr	x0, [x3]
	add	x1, x0, 1
	str	x1, [x3]
	strb	w2, [x5, x0]
	ldrb	w0, [x7, x6]
	cmp	w0, 61
	ccmp	w0, 0, 4, ne
	bne	.L11
	ldp	x29, x30, [sp], 16
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	base64_decode_standard, .-base64_decode_standard
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
