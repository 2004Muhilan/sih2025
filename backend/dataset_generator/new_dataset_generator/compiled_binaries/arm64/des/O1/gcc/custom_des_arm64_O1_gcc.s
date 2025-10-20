	.arch armv8-a
	.file	"custom_des.c"
	.text
	.align	2
	.global	des_encrypt
	.type	des_encrypt, %function
des_encrypt:
.LFB14:
	.cfi_startproc
	mov	w3, 56
	mov	x4, 0
.L2:
	ldrb	w5, [x0], 1
	lsl	x5, x5, x3
	orr	x4, x4, x5
	sub	w3, w3, #8
	cmn	w3, #8
	bne	.L2
	mov	w0, 0
.L3:
	lsr	x5, x4, 32
	eor	w5, w5, w4
	negs	w3, w0
	and	w6, w0, 7
	and	w3, w3, 7
	csneg	w3, w6, w3, mi
	ldrb	w3, [x1, w3, sxtw]
	eor	w3, w3, w5
	orr	x4, x3, x4, lsl 32
	add	w0, w0, 1
	cmp	w0, 16
	bne	.L3
	mov	w0, 56
.L4:
	lsr	x1, x4, x0
	strb	w1, [x2], 1
	sub	w0, w0, #8
	cmn	w0, #8
	bne	.L4
	ret
	.cfi_endproc
.LFE14:
	.size	des_encrypt, .-des_encrypt
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
