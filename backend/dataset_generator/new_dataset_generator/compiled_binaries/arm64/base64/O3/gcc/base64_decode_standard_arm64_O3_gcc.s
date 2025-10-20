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
	add	x4, x0, 1
	mov	x6, 0
	mov	w8, 4032
	mov	w7, -64
	b	.L32
	.p2align 2,,3
.L45:
	sub	w3, w5, #97
	and	w3, w3, 255
	cmp	w3, 25
	bls	.L18
	sub	w3, w5, #48
	and	w3, w3, 255
	cmp	w3, 9
	bls	.L19
	lsl	w0, w0, 6
	orr	w3, w0, 3968
	cmp	w5, 43
	beq	.L21
	cmp	w5, 47
	orr	w0, w0, 4032
	csel	w3, w0, w7, eq
.L21:
	ldrb	w0, [x4, 1]
	sub	w5, w0, #65
	and	w9, w5, 255
	cmp	w9, 25
	bls	.L22
.L46:
	sub	w5, w0, #97
	and	w5, w5, 255
	cmp	w5, 25
	bls	.L23
	sub	w5, w0, #48
	and	w5, w5, 255
	cmp	w5, 9
	bls	.L24
	lsl	w3, w3, 6
	orr	w5, w3, 3968
	cmp	w0, 43
	beq	.L26
	cmp	w0, 47
	orr	w3, w3, 4032
	csel	w5, w3, w7, eq
.L26:
	ldrb	w0, [x4, 2]
	sub	w3, w0, #65
	and	w9, w3, 255
	cmp	w9, 25
	bls	.L27
.L47:
	sub	w3, w0, #97
	and	w3, w3, 255
	cmp	w3, 25
	bls	.L28
	sub	w3, w0, #48
	and	w3, w3, 255
	cmp	w3, 9
	bls	.L29
	cmp	w0, 43
	beq	.L44
	cmp	w0, 47
	bne	.L37
	orr	w9, w5, 63
	ubfx	x10, x5, 16, 8
	and	w9, w9, 255
	ubfx	x3, x5, 8, 8
.L31:
	add	x0, x6, 1
	str	x0, [x2]
	strb	w10, [x1, x6]
	add	x4, x4, 4
	ldr	x0, [x2]
	add	x5, x0, 1
	str	x5, [x2]
	strb	w3, [x1, x0]
	ldr	x0, [x2]
	add	x3, x0, 1
	str	x3, [x2]
	strb	w9, [x1, x0]
	ldrb	w3, [x4, -1]
	cmp	w3, 61
	ccmp	w3, 0, 4, ne
	beq	.L11
	ldr	x6, [x2]
.L32:
	sub	w0, w3, #65
	and	w5, w0, 255
	lsl	w0, w0, 6
	cmp	w5, 25
	bls	.L16
	sub	w0, w3, #97
	and	w0, w0, 255
	cmp	w0, 25
	bls	.L14
	sub	w0, w3, #48
	and	w0, w0, 255
	cmp	w0, 9
	bls	.L15
	cmp	w3, 43
	beq	.L33
	cmp	w3, 47
	csel	w0, w8, w7, eq
.L16:
	ldrb	w5, [x4]
	sub	w3, w5, #65
	and	w9, w3, 255
	cmp	w9, 25
	bhi	.L45
	orr	w3, w3, w0
	ldrb	w0, [x4, 1]
	sub	w5, w0, #65
	lsl	w3, w3, 6
	and	w9, w5, 255
	cmp	w9, 25
	bhi	.L46
.L22:
	ldrb	w0, [x4, 2]
	orr	w5, w5, w3
	sub	w3, w0, #65
	lsl	w5, w5, 6
	and	w9, w3, 255
	cmp	w9, 25
	bhi	.L47
.L27:
	orr	w3, w3, w5
	and	w9, w3, 255
	ubfx	x10, x3, 16, 8
	ubfx	x3, x3, 8, 8
	b	.L31
	.p2align 2,,3
.L23:
	sub	w0, w0, #71
	orr	w0, w0, w3
	lsl	w5, w0, 6
	b	.L26
	.p2align 2,,3
.L28:
	sub	w0, w0, #71
	orr	w0, w0, w5
	and	w9, w0, 255
	ubfx	x10, x0, 16, 8
	ubfx	x3, x0, 8, 8
	b	.L31
	.p2align 2,,3
.L18:
	sub	w5, w5, #71
	orr	w5, w5, w0
	lsl	w3, w5, 6
	b	.L21
	.p2align 2,,3
.L14:
	sub	w3, w3, #71
	lsl	w0, w3, 6
	b	.L16
	.p2align 2,,3
.L15:
	add	w3, w3, 4
	lsl	w0, w3, 6
	b	.L16
	.p2align 2,,3
.L29:
	add	w0, w0, 4
	ubfx	x10, x5, 16, 8
	orr	w0, w0, w5
	and	w9, w0, 255
	ubfx	x3, x0, 8, 8
	b	.L31
	.p2align 2,,3
.L19:
	add	w5, w5, 4
	orr	w0, w5, w0
	lsl	w3, w0, 6
	b	.L21
	.p2align 2,,3
.L24:
	add	w0, w0, 4
	orr	w0, w0, w3
	lsl	w5, w0, 6
	b	.L26
	.p2align 2,,3
.L11:
	ret
.L33:
	mov	w0, 3968
	b	.L16
.L44:
	orr	w9, w5, 62
	ubfx	x10, x5, 16, 8
	and	w9, w9, 255
	ubfx	x3, x5, 8, 8
	b	.L31
.L37:
	mov	w9, 255
	mov	w3, w9
	mov	w10, w9
	b	.L31
	.cfi_endproc
.LFE1:
	.size	base64_decode_standard, .-base64_decode_standard
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
