	.text
	.file	"prng_mersenne.c"
	.globl	prng_mersenne_twist             // -- Begin function prng_mersenne_twist
	.p2align	2
	.type	prng_mersenne_twist,@function
prng_mersenne_twist:                    // @prng_mersenne_twist
	.cfi_startproc
// %bb.0:
	mov	x10, #3361                      // =0xd21
	mov	w12, #45279                     // =0xb0df
	mov	x13, xzr
	movk	x10, #8402, lsl #16
	mov	w8, #1588                       // =0x634
	mov	w9, #397                        // =0x18d
	movk	x10, #53773, lsl #32
	mov	w11, #2496                      // =0x9c0
	movk	w12, #39176, lsl #16
	movk	x10, #3360, lsl #48
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	lsr	x14, x9, #4
	lsl	x15, x13, #2
	cmp	x13, #623
	csinc	x16, xzr, x13, eq
	add	x13, x13, #1
	add	x9, x9, #1
	umulh	x14, x14, x10
	ldr	w17, [x0, x15]
	ldr	w16, [x0, x16, lsl #2]
	and	w17, w17, #0x80000000
	and	w18, w16, #0x7ffffffe
	tst	w16, #0x1
	orr	w17, w18, w17
	lsr	x14, x14, #1
	msub	x14, x14, x11, x8
	add	x8, x8, #4
	ldr	w14, [x0, x14]
	eor	w14, w14, w17, lsr #1
	eor	w17, w14, w12
	csel	w14, w14, w17, eq
	cmp	x13, #624
	str	w14, [x0, x15]
	b.ne	.LBB0_1
// %bb.2:
	str	wzr, [x0, #2496]
	ret
.Lfunc_end0:
	.size	prng_mersenne_twist, .Lfunc_end0-prng_mersenne_twist
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
