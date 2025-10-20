	.arch armv8-a
	.file	"sha1_message_schedule.c"
	.text
	.align	2
	.p2align 4,,11
	.global	sha1_message_schedule
	.type	sha1_message_schedule, %function
sha1_message_schedule:
.LFB0:
	.cfi_startproc
	add	x2, x0, 4
	sub	x2, x1, x2
	cmp	x2, 8
	bls	.L2
	ldr	q0, [x0]
	str	q0, [x1]
	ldr	q0, [x0, 16]
	str	q0, [x1, 16]
	ldr	q0, [x0, 32]
	str	q0, [x1, 32]
	ldr	q0, [x0, 48]
	str	q0, [x1, 48]
.L3:
	ldr	d6, [x1, 56]
	ldp	d5, d4, [x1, 8]
	add	x2, x1, 64
	ldp	d3, d16, [x1, 24]
	mov	w0, 0
	ldp	d2, d1, [x1, 40]
.L4:
	eor	v18.8b, v16.8b, v6.8b
	ldp	d0, d20, [x2, -64]
	add	w0, w0, 7
	ldr	d7, [x2, -12]
	mov	x1, x2
	ldp	d19, d23, [x2, -48]
	mov	x3, x2
	eor	v0.8b, v0.8b, v7.8b
	ldr	d7, [x2, -16]
	ldp	d22, d17, [x2, -32]
	add	x2, x2, 56
	eor	v0.8b, v0.8b, v16.8b
	eor	v0.8b, v0.8b, v5.8b
	shl	v21.2s, v0.2s, 1
	ushr	v0.2s, v0.2s, 31
	orr	v21.8b, v21.8b, v0.8b
	str	d21, [x2, -56]
	mov	v5.8b, v21.8b
	ldr	d0, [x2, -60]
	eor	v0.8b, v0.8b, v20.8b
	eor	v0.8b, v0.8b, v2.8b
	eor	v0.8b, v0.8b, v4.8b
	ushr	v20.2s, v0.2s, 31
	shl	v0.2s, v0.2s, 1
	orr	v20.8b, v20.8b, v0.8b
	str	d20, [x2, -48]
	mov	v4.8b, v20.8b
	ldr	d0, [x2, -52]
	eor	v0.8b, v0.8b, v19.8b
	eor	v0.8b, v0.8b, v1.8b
	eor	v0.8b, v0.8b, v3.8b
	ushr	v19.2s, v0.2s, 31
	shl	v0.2s, v0.2s, 1
	orr	v19.8b, v19.8b, v0.8b
	str	d19, [x2, -40]
	mov	v3.8b, v19.8b
	ldr	d0, [x2, -44]
	eor	v0.8b, v18.8b, v0.8b
	eor	v0.8b, v0.8b, v23.8b
	ushr	v16.2s, v0.2s, 31
	shl	v0.2s, v0.2s, 1
	orr	v16.8b, v16.8b, v0.8b
	str	d16, [x2, -32]
	ldr	d0, [x2, -36]
	eor	v0.8b, v0.8b, v22.8b
	eor	v0.8b, v0.8b, v2.8b
	eor	v0.8b, v0.8b, v21.8b
	ushr	v2.2s, v0.2s, 31
	shl	v0.2s, v0.2s, 1
	orr	v2.8b, v2.8b, v0.8b
	str	d2, [x2, -24]
	ldr	d0, [x2, -28]
	eor	v0.8b, v0.8b, v17.8b
	eor	v0.8b, v0.8b, v1.8b
	eor	v0.8b, v0.8b, v20.8b
	ushr	v1.2s, v0.2s, 31
	shl	v0.2s, v0.2s, 1
	orr	v1.8b, v1.8b, v0.8b
	str	d1, [x2, -16]
	ldr	d0, [x2, -20]
	eor	v0.8b, v0.8b, v7.8b
	eor	v0.8b, v0.8b, v6.8b
	eor	v0.8b, v0.8b, v19.8b
	ushr	v6.2s, v0.2s, 31
	shl	v0.2s, v0.2s, 1
	orr	v0.8b, v6.8b, v0.8b
	str	d0, [x2, -8]
	mov	v6.8b, v0.8b
	cmp	w0, 28
	bne	.L4
	add	x5, x1, 44
	add	x4, x1, 24
	sub	x1, x1, #8
	mov	x0, 0
	.p2align 3,,7
.L5:
	ldr	d0, [x5, x0, lsl 3]
	ldr	d3, [x4, x0, lsl 3]
	ldr	d2, [x3, x0, lsl 3]
	ldr	d1, [x1, x0, lsl 3]
	eor	v0.8b, v0.8b, v3.8b
	eor	v0.8b, v0.8b, v2.8b
	eor	v0.8b, v0.8b, v1.8b
	ushr	v1.2s, v0.2s, 31
	shl	v0.2s, v0.2s, 1
	orr	v0.8b, v1.8b, v0.8b
	str	d0, [x2, x0, lsl 3]
	add	x0, x0, 1
	cmp	w0, 4
	bne	.L5
	ret
.L2:
	ldr	w2, [x0]
	str	w2, [x1]
	ldr	w2, [x0, 4]
	str	w2, [x1, 4]
	ldr	w2, [x0, 8]
	str	w2, [x1, 8]
	ldr	w2, [x0, 12]
	str	w2, [x1, 12]
	ldr	w2, [x0, 16]
	str	w2, [x1, 16]
	ldr	w2, [x0, 20]
	str	w2, [x1, 20]
	ldr	w2, [x0, 24]
	str	w2, [x1, 24]
	ldr	w2, [x0, 28]
	str	w2, [x1, 28]
	ldr	w2, [x0, 32]
	str	w2, [x1, 32]
	ldr	w2, [x0, 36]
	str	w2, [x1, 36]
	ldr	w2, [x0, 40]
	str	w2, [x1, 40]
	ldr	w2, [x0, 44]
	str	w2, [x1, 44]
	ldr	w2, [x0, 48]
	str	w2, [x1, 48]
	ldr	w2, [x0, 52]
	str	w2, [x1, 52]
	ldr	w2, [x0, 56]
	str	w2, [x1, 56]
	ldr	w0, [x0, 60]
	str	w0, [x1, 60]
	b	.L3
	.cfi_endproc
.LFE0:
	.size	sha1_message_schedule, .-sha1_message_schedule
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
