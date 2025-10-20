	.arch armv8-a
	.file	"xor_multi_key.c"
	.text
	.align	2
	.p2align 4,,11
	.global	xor_multi_key
	.type	xor_multi_key, %function
xor_multi_key:
.LFB0:
	.cfi_startproc
	cbz	x1, .L1
	mov	x6, 0
	.p2align 3,,7
.L3:
	udiv	x7, x6, x4
	ldrb	w8, [x0, x6]
	msub	x7, x7, x4, x6
	ldrb	w5, [x2, x7]
	eor	w5, w5, w8
	and	w5, w5, 255
	strb	w5, [x0, x6]
	ldrb	w7, [x3, x7]
	eor	w5, w5, w7
	strb	w5, [x0, x6]
	add	x6, x6, 1
	cmp	x1, x6
	bne	.L3
.L1:
	ret
	.cfi_endproc
.LFE0:
	.size	xor_multi_key, .-xor_multi_key
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
