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
	ldrb	w4, [x0, 2]
	ldrb	w3, [x0, 1]
	ldrb	w9, [x0, 7]
	ldrb	w8, [x0]
	lsl	x4, x4, 40
	ldrb	w7, [x0, 4]
	orr	x3, x4, x3, lsl 48
	ldrb	w5, [x0, 6]
	ldrb	w6, [x0, 3]
	orr	x8, x9, x8, lsl 56
	ldrb	w4, [x0, 5]
	lsl	x7, x7, 24
	orr	x0, x3, x8
	lsl	x3, x5, 8
	orr	x6, x7, x6, lsl 32
	ldrb	w8, [x1]
	orr	x0, x0, x6
	orr	x3, x3, x4, lsl 16
	orr	x3, x0, x3
	ldrb	w7, [x1, 1]
	eor	w9, w8, w3
	lsr	x0, x0, 32
	eor	w9, w9, w0
	ldrb	w6, [x1, 2]
	orr	x12, x9, x3, lsl 32
	ldrb	w5, [x1, 3]
	eor	w12, w7, w12
	ldrb	w4, [x1, 4]
	eor	w12, w12, w3
	ldrb	w0, [x1, 6]
	orr	x10, x12, x9, lsl 32
	ldrb	w3, [x1, 5]
	eor	w10, w6, w10
	ldrb	w11, [x1, 7]
	eor	w10, w10, w9
	orr	x9, x10, x12, lsl 32
	eor	w9, w5, w9
	eor	w9, w9, w12
	orr	x1, x9, x10, lsl 32
	eor	w1, w4, w1
	eor	w1, w1, w10
	orr	x10, x1, x9, lsl 32
	eor	w10, w3, w10
	eor	w10, w10, w9
	orr	x9, x10, x1, lsl 32
	eor	w9, w0, w9
	eor	w9, w9, w1
	orr	x1, x9, x10, lsl 32
	eor	w1, w11, w1
	eor	w1, w1, w10
	orr	x10, x1, x9, lsl 32
	eor	w8, w8, w10
	eor	w8, w8, w9
	orr	x9, x8, x1, lsl 32
	eor	w7, w7, w9
	eor	w7, w7, w1
	orr	x1, x7, x8, lsl 32
	eor	w1, w6, w1
	eor	w1, w1, w8
	orr	x6, x1, x7, lsl 32
	eor	w5, w5, w6
	eor	w5, w5, w7
	orr	x6, x5, x1, lsl 32
	eor	w4, w4, w6
	eor	w4, w4, w1
	orr	x1, x4, x5, lsl 32
	eor	w1, w3, w1
	eor	w1, w1, w5
	orr	x3, x1, x4, lsl 32
	eor	w0, w0, w3
	eor	w0, w0, w4
	orr	x3, x0, x1, lsl 32
	eor	w11, w11, w3
	eor	w11, w11, w1
	orr	x0, x11, x0, lsl 32
	rev	x0, x0
	fmov	d0, x0
	str	d0, [x2]
	ret
	.cfi_endproc
.LFE14:
	.size	des_encrypt, .-des_encrypt
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
