	.arch armv8-a
	.file	"custom_des.c"
	.text
	.align	2
	.p2align 4,,11
	.global	des_encrypt
	.type	des_encrypt, %function
des_encrypt:
.LFB14:
	.cfi_startproc
	mov	w4, 56
	mov	x3, 0
	.p2align 3,,7
.L2:
	ldrb	w5, [x0], 1
	lsl	x5, x5, x4
	sub	w4, w4, #8
	orr	x3, x3, x5
	cmn	w4, #8
	bne	.L2
	mov	w0, 0
	.p2align 3,,7
.L3:
	and	w4, w0, 7
	lsr	x5, x3, 32
	eor	w5, w5, w3
	add	w0, w0, 1
	ldrb	w4, [x1, w4, sxtw]
	eor	w4, w4, w5
	orr	x3, x4, x3, lsl 32
	cmp	w0, 16
	bne	.L3
	mov	w0, 56
	.p2align 3,,7
.L4:
	lsr	x1, x3, x0
	sub	w0, w0, #8
	strb	w1, [x2], 1
	cmn	w0, #8
	bne	.L4
	ret
	.cfi_endproc
.LFE14:
	.size	des_encrypt, .-des_encrypt
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
