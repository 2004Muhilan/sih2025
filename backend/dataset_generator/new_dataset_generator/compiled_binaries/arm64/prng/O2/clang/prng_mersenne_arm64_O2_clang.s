	.text
	.file	"prng_mersenne.c"
	.globl	prng_mersenne_twist             // -- Begin function prng_mersenne_twist
	.p2align	2
	.type	prng_mersenne_twist,@function
prng_mersenne_twist:                    // @prng_mersenne_twist
	.cfi_startproc
// %bb.0:
	mov	w10, #45279                     // =0xb0df
	mov	x11, xzr
	mov	w8, #-227                       // =0xffffff1d
	mov	w9, #397                        // =0x18d
	movk	w10, #39176, lsl #16
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	lsl	x12, x11, #2
	cmp	x11, #623
	csinc	x13, xzr, x11, eq
	cmp	x11, #227
	ldr	w14, [x0, x12]
	ldr	w13, [x0, x13, lsl #2]
	csel	w15, w9, w8, lo
	add	w15, w15, w11
	add	x11, x11, #1
	and	w14, w14, #0x80000000
	and	w16, w13, #0x7ffffffe
	ldr	w15, [x0, w15, uxtw #2]
	orr	w14, w16, w14
	tst	w13, #0x1
	eor	w14, w15, w14, lsr #1
	eor	w15, w14, w10
	csel	w13, w14, w15, eq
	cmp	x11, #624
	str	w13, [x0, x12]
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
