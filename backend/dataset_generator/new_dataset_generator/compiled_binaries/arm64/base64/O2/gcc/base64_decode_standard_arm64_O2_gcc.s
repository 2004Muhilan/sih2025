	.arch armv8-a
	.file	"base64_decode_standard.c"
	.text
	.align	2
	.p2align 4,,11
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
	bls	.L9
	sub	w0, w1, #48
	and	w0, w0, 255
	cmp	w0, 9
	bls	.L10
	cmp	w1, 43
	beq	.L6
	cmp	w1, 47
	mov	w0, 63
	csinv	w0, w0, wzr, eq
.L1:
	ret
	.p2align 2,,3
.L9:
	sub	w0, w1, #71
	ret
	.p2align 2,,3
.L10:
	add	w0, w1, 4
	ret
	.p2align 2,,3
.L6:
	mov	w0, 62
	ret
	.cfi_endproc
.LFE0:
	.size	base64_char_value, .-base64_char_value
	.align	2
	.p2align 4,,11
	.global	base64_decode_standard
	.type	base64_decode_standard, %function
base64_decode_standard:
.LFB1:
	.cfi_startproc
	str	xzr, [x2]
	ldrb	w3, [x0]
	cmp	w3, 61
	ccmp	w3, 0, 4, ne
	beq	.L11
	mov	x10, x0
	mov	x12, 0
	mov	x11, 0
	mov	w13, -1
	.p2align 3,,7
.L13:
	mov	x5, 0
	mov	w4, 0
.L19:
	ldrb	w3, [x10, x5]
	lsl	w4, w4, 6
	sub	w8, w3, #65
	sub	w6, w3, #97
	sub	w7, w3, #48
	and	w9, w8, 255
	and	w6, w6, 255
	and	w7, w7, 255
	cmp	w9, 25
	bls	.L28
	cmp	w6, 25
	bls	.L29
	orr	w6, w4, 63
	cmp	w7, 9
	bls	.L30
	orr	w4, w4, 62
	cmp	w3, 43
	beq	.L15
	cmp	w3, 47
	csel	w4, w6, w13, eq
.L15:
	add	x5, x5, 1
	cmp	x5, 4
	bne	.L19
	add	x3, x12, 1
	str	x3, [x2]
	lsr	w3, w4, 16
	strb	w3, [x1, x12]
	lsr	w5, w4, 8
	add	x11, x11, 4
	ldr	x3, [x2]
	add	x10, x10, 4
	add	x6, x3, 1
	str	x6, [x2]
	strb	w5, [x1, x3]
	ldr	x3, [x2]
	add	x5, x3, 1
	str	x5, [x2]
	strb	w4, [x1, x3]
	ldrb	w3, [x0, x11]
	cmp	w3, 61
	ccmp	w3, 0, 4, ne
	beq	.L11
	ldr	x12, [x2]
	b	.L13
	.p2align 2,,3
.L28:
	orr	w4, w8, w4
	b	.L15
	.p2align 2,,3
.L29:
	sub	w3, w3, #71
	orr	w4, w3, w4
	b	.L15
	.p2align 2,,3
.L30:
	add	w3, w3, 4
	orr	w4, w3, w4
	b	.L15
	.p2align 2,,3
.L11:
	ret
	.cfi_endproc
.LFE1:
	.size	base64_decode_standard, .-base64_decode_standard
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
