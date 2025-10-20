	.arch armv8-a
	.file	"xor_cbc_mode.c"
	.text
	.align	2
	.p2align 4,,11
	.global	xor_cbc_mode
	.type	xor_cbc_mode, %function
xor_cbc_mode:
.LFB0:
	.cfi_startproc
	and	w4, w4, 255
	cbz	x1, .L1
	mov	x5, 0
	.p2align 3,,7
.L3:
	udiv	x6, x5, x3
	ldrb	w7, [x0, x5]
	msub	x6, x6, x3, x5
	ldrb	w6, [x2, x6]
	eor	w6, w6, w7
	eor	w4, w4, w6
	and	w4, w4, 255
	strb	w4, [x0, x5]
	add	x5, x5, 1
	cmp	x1, x5
	bne	.L3
.L1:
	ret
	.cfi_endproc
.LFE0:
	.size	xor_cbc_mode, .-xor_cbc_mode
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
