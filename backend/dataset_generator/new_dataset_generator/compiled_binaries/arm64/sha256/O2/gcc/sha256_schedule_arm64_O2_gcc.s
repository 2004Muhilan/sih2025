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
	mov	x2, 0
	.p2align 3,,7
.L2:
	ldr	w3, [x0, x2]
	str	w3, [x1, x2]
	add	x2, x2, 4
	cmp	x2, 64
	bne	.L2
	ldr	d1, [x1, 56]
	add	x0, x1, 4
	add	x1, x1, 196
	.p2align 3,,7
.L3:
	shl	v5.2s, v1.2s, 15
	shl	v2.2s, v1.2s, 13
	ushr	v0.2s, v1.2s, 17
	ushr	v6.2s, v1.2s, 19
	ldr	d3, [x0]
	ushr	v1.2s, v1.2s, 10
	ldr	d4, [x0, -4]
	add	x0, x0, 8
	ldr	d17, [x0, 24]
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
	str	d0, [x0, 52]
	mov	v1.8b, v0.8b
	cmp	x0, x1
	bne	.L3
	ret
	.cfi_endproc
.LFE0:
	.size	sha256_message_schedule, .-sha256_message_schedule
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
