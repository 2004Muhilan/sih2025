	.arch armv8-a
	.file	"hmac_verify.c"
	.text
	.align	2
	.p2align 4,,11
	.global	hmac_verify
	.type	hmac_verify, %function
hmac_verify:
.LFB0:
	.cfi_startproc
	cbz	x2, .L8
	sub	x3, x2, #1
	cmp	x3, 14
	bls	.L9
	movi	v1.4s, 0
	and	x4, x2, -16
	mov	x3, 0
	.p2align 3,,7
.L4:
	ldr	q0, [x0, x3]
	ldr	q2, [x1, x3]
	add	x3, x3, 16
	eor	v0.16b, v0.16b, v2.16b
	orr	v1.16b, v1.16b, v0.16b
	cmp	x4, x3
	bne	.L4
	movi	v0.4s, 0
	dup	d3, v1.d[1]
	ext	v2.16b, v1.16b, v0.16b, #8
	orr	v3.8b, v1.8b, v3.8b
	orr	v1.16b, v2.16b, v1.16b
	ext	v2.16b, v1.16b, v0.16b, #4
	orr	v2.16b, v2.16b, v1.16b
	ext	v1.16b, v2.16b, v0.16b, #2
	orr	v1.16b, v1.16b, v2.16b
	ext	v0.16b, v1.16b, v0.16b, #1
	orr	v0.16b, v0.16b, v1.16b
	umov	w3, v0.b[0]
	cmp	x2, x4
	beq	.L5
.L3:
	sub	x5, x2, x4
	sub	x6, x5, #1
	cmp	x6, 6
	bls	.L6
	ldr	d1, [x1, x4]
	and	x3, x5, -8
	ldr	d0, [x0, x4]
	add	x4, x4, x3
	eor	v0.8b, v0.8b, v1.8b
	orr	v0.8b, v0.8b, v3.8b
	ushr d1, d0, 32
	orr	v1.8b, v1.8b, v0.8b
	ushr d0, d1, 16
	orr	v0.8b, v0.8b, v1.8b
	ushr d1, d0, 8
	orr	v0.8b, v1.8b, v0.8b
	umov	w3, v0.b[0]
	tst	x5, 7
	beq	.L5
.L6:
	ldrb	w5, [x0, x4]
	add	x6, x4, 1
	ldrb	w7, [x1, x4]
	eor	w5, w5, w7
	orr	w3, w3, w5
	and	w3, w3, 255
	cmp	x2, x6
	bls	.L5
	ldrb	w5, [x1, x6]
	add	x7, x4, 2
	ldrb	w6, [x0, x6]
	eor	w5, w5, w6
	orr	w3, w3, w5
	and	w3, w3, 255
	cmp	x2, x7
	bls	.L5
	ldrb	w5, [x0, x7]
	add	x6, x4, 3
	ldrb	w7, [x1, x7]
	eor	w5, w5, w7
	orr	w3, w3, w5
	and	w3, w3, 255
	cmp	x2, x6
	bls	.L5
	ldrb	w5, [x0, x6]
	add	x7, x4, 4
	ldrb	w6, [x1, x6]
	eor	w5, w5, w6
	orr	w3, w3, w5
	and	w3, w3, 255
	cmp	x2, x7
	bls	.L5
	ldrb	w5, [x0, x7]
	add	x6, x4, 5
	ldrb	w7, [x1, x7]
	eor	w5, w5, w7
	orr	w3, w3, w5
	and	w3, w3, 255
	cmp	x2, x6
	bls	.L5
	ldrb	w5, [x0, x6]
	add	x4, x4, 6
	ldrb	w6, [x1, x6]
	eor	w5, w5, w6
	orr	w3, w3, w5
	and	w3, w3, 255
	cmp	x2, x4
	bls	.L5
	ldrb	w0, [x0, x4]
	ldrb	w1, [x1, x4]
	eor	w0, w0, w1
	orr	w0, w3, w0
	and	w3, w0, 255
.L5:
	cmp	w3, 0
	cset	w0, eq
	ret
	.p2align 2,,3
.L8:
	mov	w0, 1
	ret
.L9:
	movi	v3.2s, 0
	mov	x4, 0
	mov	w3, 0
	b	.L3
	.cfi_endproc
.LFE0:
	.size	hmac_verify, .-hmac_verify
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
