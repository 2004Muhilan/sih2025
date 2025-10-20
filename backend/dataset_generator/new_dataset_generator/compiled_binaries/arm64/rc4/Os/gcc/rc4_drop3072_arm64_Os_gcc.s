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
	mov	x3, 0
	mov	w5, 0
.L3:
	udiv	x4, x3, x2
	ldrb	w6, [x0, x3]
	add	w5, w5, w6
	msub	x4, x4, x2, x3
	ldrb	w4, [x1, x4]
	add	w4, w4, w5
	and	w5, w4, 255
	and	x4, x4, 255
	ldrb	w7, [x0, x4]
	strb	w7, [x0, x3]
	add	x3, x3, 1
	strb	w6, [x0, x4]
	cmp	x3, 256
	bne	.L3
	ret
	.cfi_endproc
.LFE0:
	.size	rc4_drop3072_init, .-rc4_drop3072_init
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
