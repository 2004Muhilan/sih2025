	.arch armv8-a
	.file	"rc4_prga.c"
	.text
	.align	2
	.global	rc4_prga
	.type	rc4_prga, %function
rc4_prga:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	ldr	x0, [sp, 16]
	ldrb	w0, [x0]
	add	w0, w0, 1
	negs	w1, w0
	and	w0, w0, 255
	and	w1, w1, 255
	csneg	w0, w0, w1, mi
	and	w1, w0, 255
	ldr	x0, [sp, 16]
	strb	w1, [x0]
	ldr	x0, [sp, 8]
	ldrb	w1, [x0]
	ldr	x0, [sp, 16]
	ldrb	w0, [x0]
	and	x0, x0, 255
	ldr	x2, [sp, 24]
	add	x0, x2, x0
	ldrb	w0, [x0]
	add	w0, w1, w0
	and	w1, w0, 255
	ldr	x0, [sp, 8]
	strb	w1, [x0]
	ldr	x0, [sp, 16]
	ldrb	w0, [x0]
	and	x0, x0, 255
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	strb	w0, [sp, 47]
	ldr	x0, [sp, 8]
	ldrb	w0, [x0]
	and	x0, x0, 255
	ldr	x1, [sp, 24]
	add	x1, x1, x0
	ldr	x0, [sp, 16]
	ldrb	w0, [x0]
	and	x0, x0, 255
	ldr	x2, [sp, 24]
	add	x0, x2, x0
	ldrb	w1, [x1]
	strb	w1, [x0]
	ldr	x0, [sp, 8]
	ldrb	w0, [x0]
	and	x0, x0, 255
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w1, [sp, 47]
	strb	w1, [x0]
	ldr	x0, [sp, 16]
	ldrb	w0, [x0]
	and	x0, x0, 255
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w1, [x0]
	ldr	x0, [sp, 8]
	ldrb	w0, [x0]
	and	x0, x0, 255
	ldr	x2, [sp, 24]
	add	x0, x2, x0
	ldrb	w0, [x0]
	add	w0, w1, w0
	and	w0, w0, 255
	and	x0, x0, 255
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	rc4_prga, .-rc4_prga
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
