	.text
	.file	"custom_des.c"
	.globl	des_encrypt                     // -- Begin function des_encrypt
	.p2align	2
	.type	des_encrypt,@function
des_encrypt:                            // @des_encrypt
	.cfi_startproc
// %bb.0:
	mov	x8, xzr
	mov	w9, #56                         // =0x38
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldrb	w10, [x0], #1
	lsl	x10, x10, x9
	sub	x9, x9, #8
	cmn	x9, #8
	orr	x8, x10, x8
	b.ne	.LBB0_1
// %bb.2:
	mov	w9, wzr
.LBB0_3:                                // =>This Inner Loop Header: Depth=1
	and	x10, x9, #0x7
	and	x11, x8, #0xffffffff
	add	w9, w9, #1
	ldrb	w10, [x1, x10]
	eor	x11, x11, x8, lsr #32
	cmp	w9, #16
	eor	x10, x11, x10
	orr	x8, x10, x8, lsl #32
	b.ne	.LBB0_3
// %bb.4:
	mov	w9, #56                         // =0x38
.LBB0_5:                                // =>This Inner Loop Header: Depth=1
	lsr	x10, x8, x9
	sub	x9, x9, #8
	cmn	x9, #8
	strb	w10, [x2], #1
	b.ne	.LBB0_5
// %bb.6:
	ret
.Lfunc_end0:
	.size	des_encrypt, .Lfunc_end0-des_encrypt
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
