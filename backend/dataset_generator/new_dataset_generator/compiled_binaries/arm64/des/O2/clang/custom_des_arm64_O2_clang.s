	.text
	.file	"custom_des.c"
	.globl	des_encrypt                     // -- Begin function des_encrypt
	.p2align	2
	.type	des_encrypt,@function
des_encrypt:                            // @des_encrypt
	.cfi_startproc
// %bb.0:
	ldrb	w8, [x0]
	ldrb	w9, [x0, #1]
	ldrb	w13, [x0, #5]
	ldrb	w10, [x0, #2]
	ldrb	w16, [x1]
	ldrb	w12, [x0, #4]
	lsl	x15, x8, #56
	lsl	w13, w13, #16
	ldrb	w8, [x1, #6]
	ldrb	w17, [x1, #1]
	ldrb	w18, [x1, #2]
	ldrb	w11, [x0, #3]
	orr	x15, x15, x9, lsl #48
	orr	w12, w13, w12, lsl #24
	ldrb	w9, [x1, #7]
	ldrh	w14, [x0, #6]
	ldrb	w0, [x1, #3]
	ldrb	w3, [x1, #4]
	orr	x10, x15, x10, lsl #40
	eor	x15, x8, x16
	eor	x13, x9, x17
	ldrb	w1, [x1, #5]
	eor	x15, x15, x18
	rev	w14, w14
	orr	x10, x10, x11, lsl #32
	eor	x11, x13, x18
	eor	x13, x15, x0
	eor	x13, x13, x1
	eor	x11, x11, x3
	bfxil	w12, w14, #16, #16
	eor	x11, x11, x1
	eor	x13, x13, x16
	eor	x11, x11, x16
	eor	x13, x13, x17
	eor	x10, x12, x10, lsr #32
	eor	x11, x11, x18
	eor	x13, x13, x0
	eor	x11, x11, x0
	eor	x13, x13, x3
	eor	x11, x12, x11
	eor	x10, x10, x13
	eor	x11, x10, x11
	orr	x10, x11, x10, lsl #32
	eor	x11, x11, x1
	lsr	x13, x10, #32
	lsr	x12, x10, #56
	lsr	x14, x10, #48
	lsr	x10, x10, #40
	eor	x11, x11, x13
	strb	w12, [x2, #4]
	strb	w14, [x2, #5]
	eor	w12, w8, w11
	lsr	x14, x11, #16
	strb	w10, [x2, #6]
	lsr	x10, x11, #24
	lsr	x11, x11, #8
	eor	w8, w8, w9
	strb	w12, [x2, #3]
	eor	w8, w8, w13
	strb	w10, [x2]
	strb	w14, [x2, #1]
	strb	w11, [x2, #2]
	strb	w8, [x2, #7]
	ret
.Lfunc_end0:
	.size	des_encrypt, .Lfunc_end0-des_encrypt
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
