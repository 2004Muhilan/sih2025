	.arch armv8-a
	.file	"xor_counter_mode.c"
	.text
	.align	2
	.global	xor_counter_mode
	.type	xor_counter_mode, %function
xor_counter_mode:
.LFB0:
	.cfi_startproc
	mov	x5, 0
.L2:
	cmp	x5, x1
	bne	.L3
	ret
.L3:
	udiv	x7, x5, x3
	ldrb	w8, [x0, x5]
	add	w6, w5, w4
	eor	w6, w6, w8
	msub	x7, x7, x3, x5
	ldrb	w7, [x2, x7]
	eor	w6, w6, w7
	strb	w6, [x0, x5]
	add	x5, x5, 1
	b	.L2
	.cfi_endproc
.LFE0:
	.size	xor_counter_mode, .-xor_counter_mode
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
