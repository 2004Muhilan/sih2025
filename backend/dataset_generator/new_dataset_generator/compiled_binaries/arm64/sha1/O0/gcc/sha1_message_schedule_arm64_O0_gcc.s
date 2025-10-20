	.arch armv8-a
	.file	"sha1_message_schedule.c"
	.text
	.align	2
	.global	sha1_message_schedule
	.type	sha1_message_schedule, %function
sha1_message_schedule:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	str	x1, [sp]
	str	wzr, [sp, 24]
	b	.L2
.L3:
	ldrsw	x0, [sp, 24]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x1, x1, x0
	ldrsw	x0, [sp, 24]
	lsl	x0, x0, 2
	ldr	x2, [sp]
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L2:
	ldr	w0, [sp, 24]
	cmp	w0, 15
	ble	.L3
	mov	w0, 16
	str	w0, [sp, 28]
	b	.L4
.L5:
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 2
	sub	x0, x0, #12
	ldr	x1, [sp]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 2
	sub	x0, x0, #32
	ldr	x2, [sp]
	add	x0, x2, x0
	ldr	w0, [x0]
	eor	w1, w1, w0
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 2
	sub	x0, x0, #56
	ldr	x2, [sp]
	add	x0, x2, x0
	ldr	w0, [x0]
	eor	w1, w1, w0
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 2
	sub	x0, x0, #64
	ldr	x2, [sp]
	add	x0, x2, x0
	ldr	w0, [x0]
	eor	w1, w1, w0
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 2
	ldr	x2, [sp]
	add	x0, x2, x0
	ror	w1, w1, 31
	str	w1, [x0]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L4:
	ldr	w0, [sp, 28]
	cmp	w0, 79
	ble	.L5
	nop
	nop
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	sha1_message_schedule, .-sha1_message_schedule
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
