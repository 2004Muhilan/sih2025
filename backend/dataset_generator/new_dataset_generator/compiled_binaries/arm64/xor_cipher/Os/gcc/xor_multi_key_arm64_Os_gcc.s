	.arch armv8-a
	.file	"xor_multi_key.c"
	.text
	.align	2
	.global	xor_multi_key
	.type	xor_multi_key, %function
xor_multi_key:
.LFB0:
	.cfi_startproc
	mov	x5, 0
.L2:
	cmp	x5, x1
	bne	.L3
	ret
.L3:
	udiv	x7, x5, x4
	ldrb	w8, [x0, x5]
	msub	x7, x7, x4, x5
	ldrb	w6, [x2, x7]
	eor	w6, w6, w8
	and	w6, w6, 255
	strb	w6, [x0, x5]
	ldrb	w7, [x3, x7]
	eor	w6, w6, w7
	strb	w6, [x0, x5]
	add	x5, x5, 1
	b	.L2
	.cfi_endproc
.LFE0:
	.size	xor_multi_key, .-xor_multi_key
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
