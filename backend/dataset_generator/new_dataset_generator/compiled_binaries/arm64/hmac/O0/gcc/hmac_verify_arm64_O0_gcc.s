	.arch armv8-a
	.file	"hmac_verify.c"
	.text
	.align	2
	.global	hmac_verify
	.type	hmac_verify, %function
hmac_verify:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	strb	wzr, [sp, 39]
	str	xzr, [sp, 40]
	b	.L2
.L3:
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 40]
	add	x0, x1, x0
	ldrb	w1, [x0]
	ldr	x2, [sp, 16]
	ldr	x0, [sp, 40]
	add	x0, x2, x0
	ldrb	w0, [x0]
	eor	w0, w1, w0
	and	w1, w0, 255
	ldrb	w0, [sp, 39]
	orr	w0, w1, w0
	strb	w0, [sp, 39]
	ldr	x0, [sp, 40]
	add	x0, x0, 1
	str	x0, [sp, 40]
.L2:
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 8]
	cmp	x1, x0
	bcc	.L3
	ldrb	w0, [sp, 39]
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	hmac_verify, .-hmac_verify
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
