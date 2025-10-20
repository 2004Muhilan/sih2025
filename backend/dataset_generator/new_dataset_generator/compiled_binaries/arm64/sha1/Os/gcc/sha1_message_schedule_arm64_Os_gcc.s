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
	add	x3, x1, 256
.L3:
	ldr	w2, [x1]
	add	x1, x1, 4
	ldr	w0, [x1, 4]
	ldr	w4, [x1, 28]
	eor	w0, w0, w2
	ldr	w2, [x1, 48]
	eor	w2, w2, w4
	eor	w0, w0, w2
	ror	w0, w0, 31
	str	w0, [x1, 60]
	cmp	x3, x1
	bne	.L3
	ret
	.cfi_endproc
.LFE0:
	.size	sha1_message_schedule, .-sha1_message_schedule
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
