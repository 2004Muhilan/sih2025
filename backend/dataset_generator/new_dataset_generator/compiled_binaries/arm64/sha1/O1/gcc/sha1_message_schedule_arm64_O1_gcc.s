	.arch armv8-a
	.file	"sha1_message_schedule.c"
	.text
	.align	2
	.global	sha1_message_schedule
	.type	sha1_message_schedule, %function
sha1_message_schedule:
.LFB0:
	.cfi_startproc
	mov	x2, 0
.L2:
	ldr	w3, [x0, x2]
	str	w3, [x1, x2]
	add	x2, x2, 4
	cmp	x2, 64
	bne	.L2
	mov	x0, x1
	add	x4, x1, 256
.L3:
	ldr	w1, [x0, 8]
	ldr	w2, [x0]
	eor	w1, w1, w2
	ldr	w2, [x0, 52]
	ldr	w3, [x0, 32]
	eor	w2, w2, w3
	eor	w1, w1, w2
	ror	w1, w1, 31
	str	w1, [x0, 64]
	add	x0, x0, 4
	cmp	x0, x4
	bne	.L3
	ret
	.cfi_endproc
.LFE0:
	.size	sha1_message_schedule, .-sha1_message_schedule
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
