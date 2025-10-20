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
	mov	x2, 0
	.p2align 3,,7
.L2:
	ldr	w3, [x0, x2]
	str	w3, [x1, x2]
	add	x2, x2, 4
	cmp	x2, 64
	bne	.L2
	ldp	d6, d5, [x1, 16]
	mov	x0, x1
	ldp	d2, d4, [x1, 32]
	add	x2, x1, 256
	ldp	d3, d1, [x1, 48]
	ldr	d7, [x1, 8]
	.p2align 3,,7
.L3:
	ldr	d16, [x0]
	add	x0, x0, 8
	ldr	d0, [x0, 44]
	eor	v0.8b, v0.8b, v16.8b
	eor	v0.8b, v0.8b, v2.8b
	eor	v0.8b, v0.8b, v7.8b
	mov	v7.8b, v6.8b
	mov	v6.8b, v5.8b
	mov	v5.8b, v2.8b
	mov	v2.8b, v4.8b
	mov	v4.8b, v3.8b
	mov	v3.8b, v1.8b
	ushr	v1.2s, v0.2s, 31
	shl	v0.2s, v0.2s, 1
	orr	v0.8b, v1.8b, v0.8b
	str	d0, [x0, 56]
	mov	v1.8b, v0.8b
	cmp	x0, x2
	bne	.L3
	ret
	.cfi_endproc
.LFE0:
	.size	sha1_message_schedule, .-sha1_message_schedule
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
