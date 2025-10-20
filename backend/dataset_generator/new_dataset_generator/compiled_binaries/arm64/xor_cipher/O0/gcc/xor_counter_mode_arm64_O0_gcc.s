	.arch armv8-a
	.file	"xor_counter_mode.c"
	.text
	.align	2
	.global	xor_counter_mode
	.type	xor_counter_mode, %function
xor_counter_mode:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	str	x3, [sp, 16]
	str	x4, [sp, 8]
	str	xzr, [sp, 56]
	b	.L2
.L3:
	ldr	x0, [sp, 56]
	ldr	x1, [sp, 16]
	udiv	x2, x0, x1
	ldr	x1, [sp, 16]
	mul	x1, x2, x1
	sub	x0, x0, x1
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w1, [x0]
	ldr	x0, [sp, 8]
	and	w2, w0, 255
	ldr	x0, [sp, 56]
	and	w0, w0, 255
	add	w0, w2, w0
	and	w0, w0, 255
	eor	w0, w1, w0
	strb	w0, [sp, 55]
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 56]
	add	x0, x1, x0
	ldrb	w2, [x0]
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 56]
	add	x0, x1, x0
	ldrb	w1, [sp, 55]
	eor	w1, w2, w1
	and	w1, w1, 255
	strb	w1, [x0]
	ldr	x0, [sp, 56]
	add	x0, x0, 1
	str	x0, [sp, 56]
.L2:
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 32]
	cmp	x1, x0
	bcc	.L3
	nop
	nop
	add	sp, sp, 64
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	xor_counter_mode, .-xor_counter_mode
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
