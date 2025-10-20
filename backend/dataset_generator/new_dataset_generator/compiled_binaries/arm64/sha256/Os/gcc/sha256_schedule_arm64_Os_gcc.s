	.arch armv8-a
	.file	"sha256_schedule.c"
	.text
	.align	2
	.global	sha256_message_schedule
	.type	sha256_message_schedule, %function
sha256_message_schedule:
.LFB0:
	.cfi_startproc
	mov	x2, 0
.L2:
	ldr	w3, [x0, x2]
	str	w3, [x1, x2]
	add	x2, x2, 4
	cmp	x2, 64
	bne	.L2
	add	x4, x1, 192
.L3:
	ldr	w0, [x1, 4]
	add	x1, x1, 4
	ldr	w2, [x1, 52]
	ror	w3, w0, 18
	eor	w3, w3, w0, ror 7
	eor	w0, w3, w0, lsr 3
	ror	w3, w2, 19
	eor	w3, w3, w2, ror 17
	eor	w2, w3, w2, lsr 10
	ldr	w3, [x1, 32]
	add	w0, w0, w2
	ldr	w2, [x1, -4]
	add	w2, w2, w3
	add	w0, w0, w2
	str	w0, [x1, 60]
	cmp	x4, x1
	bne	.L3
	ret
	.cfi_endproc
.LFE0:
	.size	sha256_message_schedule, .-sha256_message_schedule
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
