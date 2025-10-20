	.arch armv8-a
	.file	"sha256_schedule.c"
	.text
	.align	2
	.global	sha256_message_schedule
	.type	sha256_message_schedule, %function
sha256_message_schedule:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	str	x1, [sp]
	str	wzr, [sp, 16]
	b	.L2
.L3:
	ldrsw	x0, [sp, 16]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x1, x1, x0
	ldrsw	x0, [sp, 16]
	lsl	x0, x0, 2
	ldr	x2, [sp]
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
	ldr	w0, [sp, 16]
	add	w0, w0, 1
	str	w0, [sp, 16]
.L2:
	ldr	w0, [sp, 16]
	cmp	w0, 15
	ble	.L3
	mov	w0, 16
	str	w0, [sp, 20]
	b	.L4
.L5:
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 2
	sub	x0, x0, #60
	ldr	x1, [sp]
	add	x0, x1, x0
	ldr	w0, [x0]
	ror	w1, w0, 7
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 2
	sub	x0, x0, #60
	ldr	x2, [sp]
	add	x0, x2, x0
	ldr	w0, [x0]
	ror	w0, w0, 18
	eor	w1, w1, w0
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 2
	sub	x0, x0, #60
	ldr	x2, [sp]
	add	x0, x2, x0
	ldr	w0, [x0]
	lsr	w0, w0, 3
	eor	w0, w1, w0
	str	w0, [sp, 24]
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 2
	sub	x0, x0, #8
	ldr	x1, [sp]
	add	x0, x1, x0
	ldr	w0, [x0]
	ror	w1, w0, 17
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 2
	sub	x0, x0, #8
	ldr	x2, [sp]
	add	x0, x2, x0
	ldr	w0, [x0]
	ror	w0, w0, 19
	eor	w1, w1, w0
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 2
	sub	x0, x0, #8
	ldr	x2, [sp]
	add	x0, x2, x0
	ldr	w0, [x0]
	lsr	w0, w0, 10
	eor	w0, w1, w0
	str	w0, [sp, 28]
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 2
	sub	x0, x0, #64
	ldr	x1, [sp]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldr	w0, [sp, 24]
	add	w1, w1, w0
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 2
	sub	x0, x0, #28
	ldr	x2, [sp]
	add	x0, x2, x0
	ldr	w0, [x0]
	add	w2, w1, w0
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 2
	ldr	x1, [sp]
	add	x0, x1, x0
	ldr	w1, [sp, 28]
	add	w1, w2, w1
	str	w1, [x0]
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 20]
.L4:
	ldr	w0, [sp, 20]
	cmp	w0, 63
	ble	.L5
	nop
	nop
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	sha256_message_schedule, .-sha256_message_schedule
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
