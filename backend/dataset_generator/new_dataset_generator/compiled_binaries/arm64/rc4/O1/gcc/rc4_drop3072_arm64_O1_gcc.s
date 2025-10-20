	.arch armv8-a
	.file	"rc4_drop3072.c"
	.text
	.align	2
	.global	rc4_drop3072_init
	.type	rc4_drop3072_init, %function
rc4_drop3072_init:
.LFB0:
	.cfi_startproc
	mov	x3, 0
.L2:
	strb	w3, [x0, x3]
	add	x3, x3, 1
	cmp	x3, 256
	bne	.L2
	mov	x5, 0
	mov	w3, 0
.L3:
	ldrb	w6, [x0, x5]
	udiv	x4, x5, x2
	msub	x4, x4, x2, x5
	ldrb	w4, [x1, x4]
	add	w3, w3, w6
	add	w4, w4, w3
	negs	w3, w4
	and	w4, w4, 255
	and	w3, w3, 255
	csneg	w3, w4, w3, mi
	and	w3, w3, 255
	ldrb	w4, [x0, w3, uxtw]
	strb	w4, [x0, x5]
	strb	w6, [x0, w3, uxtw]
	add	x5, x5, 1
	cmp	x5, 256
	bne	.L3
	mov	w0, 3072
.L4:
	subs	w0, w0, #1
	bne	.L4
	ret
	.cfi_endproc
.LFE0:
	.size	rc4_drop3072_init, .-rc4_drop3072_init
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
