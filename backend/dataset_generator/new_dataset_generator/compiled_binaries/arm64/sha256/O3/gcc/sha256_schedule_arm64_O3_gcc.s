	.arch armv8-a
	.file	"sha256_schedule.c"
	.text
	.align	2
	.p2align 4,,11
	.global	sha256_message_schedule
	.type	sha256_message_schedule, %function
sha256_message_schedule:
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
	ldr	d1, [x1, 56]
	add	x0, x1, 64
	add	x1, x1, 256
	.p2align 3,,7
.L4:
	ushr	v5.2s, v1.2s, 19
	ushr	v2.2s, v1.2s, 17
	shl	v0.2s, v1.2s, 13
	shl	v6.2s, v1.2s, 15
	ldr	d3, [x0, -60]
	ushr	v1.2s, v1.2s, 10
	ldr	d4, [x0, -64]
	ldr	d17, [x0, -28]
	orr	v0.8b, v0.8b, v5.8b
	orr	v6.8b, v6.8b, v2.8b
	ushr	v16.2s, v3.2s, 18
	shl	v2.2s, v3.2s, 14
	shl	v5.2s, v3.2s, 25
	ushr	v7.2s, v3.2s, 7
	add	v4.2s, v4.2s, v17.2s
	ushr	v3.2s, v3.2s, 3
	eor	v0.8b, v0.8b, v6.8b
	orr	v2.8b, v2.8b, v16.8b
	orr	v5.8b, v5.8b, v7.8b
	eor	v0.8b, v0.8b, v1.8b
	eor	v1.8b, v2.8b, v5.8b
	add	v0.2s, v0.2s, v4.2s
	eor	v1.8b, v1.8b, v3.8b
	add	v0.2s, v0.2s, v1.2s
	mov	v1.8b, v0.8b
	str	d0, [x0], 8
	cmp	x1, x0
	bne	.L4
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
	.size	sha256_message_schedule, .-sha256_message_schedule
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
