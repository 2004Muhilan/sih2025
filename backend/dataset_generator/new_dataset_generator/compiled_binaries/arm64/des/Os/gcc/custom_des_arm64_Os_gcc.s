	.arch armv8-a
	.file	"custom_des.c"
	.text
	.align	2
	.global	des_encrypt
	.type	des_encrypt, %function
des_encrypt:
.LFB14:
	.cfi_startproc
	mov	x4, 0
	mov	x3, 0
	mov	w7, -8
.L2:
	mul	w6, w4, w7
	ldrb	w5, [x0, x4]
	add	x4, x4, 1
	add	w6, w6, 56
	lsl	x5, x5, x6
	orr	x3, x3, x5
	cmp	x4, 8
	bne	.L2
	mov	w0, 0
.L3:
	and	x4, x0, 7
	lsr	x5, x3, 32
	eor	w5, w5, w3
	add	w0, w0, 1
	ldrb	w4, [x1, x4]
	eor	w4, w4, w5
	orr	x3, x4, x3, lsl 32
	cmp	w0, 16
	bne	.L3
	mov	x0, 0
	mov	w4, -8
.L4:
	mul	w1, w0, w4
	add	w1, w1, 56
	lsr	x1, x3, x1
	strb	w1, [x2, x0]
	add	x0, x0, 1
	cmp	x0, 8
	bne	.L4
	ret
	.cfi_endproc
.LFE14:
	.size	des_encrypt, .-des_encrypt
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
