	.text
	.file	"prng_mersenne.c"
	.globl	prng_mersenne_twist             // -- Begin function prng_mersenne_twist
	.p2align	2
	.type	prng_mersenne_twist,@function
prng_mersenne_twist:                    // @prng_mersenne_twist
	.cfi_startproc
// %bb.0:
	mov	w11, #45279                     // =0xb0df
	mov	x8, xzr
	mov	w9, #-227                       // =0xffffff1d
	mov	w10, #397                       // =0x18d
	movk	w11, #39176, lsl #16
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	cmp	x8, #623
	ldr	w13, [x0, x8, lsl #2]
	csinc	x12, xzr, x8, eq
	cmp	x8, #227
	ldr	w12, [x0, x12, lsl #2]
	csel	w14, w10, w9, lo
	and	w13, w13, #0x80000000
	add	w14, w14, w8
	and	w15, w12, #0x7ffffffe
	ldr	w14, [x0, w14, uxtw #2]
	tst	w12, #0x1
	orr	w13, w15, w13
	eor	w13, w14, w13, lsr #1
	add	x14, x8, #1
	eor	w15, w13, w11
	csel	w12, w13, w15, eq
	cmp	x14, #624
	str	w12, [x0, x8, lsl #2]
	mov	x8, x14
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
