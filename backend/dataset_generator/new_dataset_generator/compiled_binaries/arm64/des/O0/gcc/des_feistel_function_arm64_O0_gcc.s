	.arch armv8-a
	.file	"des_feistel_function.c"
	.text
	.align	2
	.global	des_feistel
	.type	des_feistel, %function
des_feistel:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]
	str	x1, [sp]
	str	xzr, [sp, 24]
	str	wzr, [sp, 16]
	b	.L2
.L3:
	mov	w1, 32
	ldr	w0, [sp, 16]
	sub	w0, w1, w0
	ldr	w1, [sp, 12]
	lsr	w0, w1, w0
	and	w1, w0, 1
	mov	w2, 47
	ldr	w0, [sp, 16]
	sub	w0, w2, w0
	lsl	w0, w1, w0
	uxtw	x0, w0
	ldr	x1, [sp, 24]
	orr	x0, x1, x0
	str	x0, [sp, 24]
	ldr	w0, [sp, 16]
	add	w0, w0, 1
	str	w0, [sp, 16]
.L2:
	ldr	w0, [sp, 16]
	cmp	w0, 47
	ble	.L3
	ldr	x1, [sp, 24]
	ldr	x0, [sp]
	eor	x0, x1, x0
	str	x0, [sp, 24]
	str	wzr, [sp, 20]
	ldr	w0, [sp, 20]
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	des_feistel, .-des_feistel
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
