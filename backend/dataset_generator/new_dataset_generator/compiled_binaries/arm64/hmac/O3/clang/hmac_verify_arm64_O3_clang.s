	.text
	.file	"hmac_verify.c"
	.globl	hmac_verify                     // -- Begin function hmac_verify
	.p2align	2
	.type	hmac_verify,@function
hmac_verify:                            // @hmac_verify
	.cfi_startproc
// %bb.0:
	cbz	x2, .LBB0_3
// %bb.1:
	cmp	x2, #8
	b.hs	.LBB0_4
// %bb.2:
	mov	x8, xzr
	mov	w9, wzr
	b	.LBB0_13
.LBB0_3:
	mov	w0, #1                          // =0x1
	ret
.LBB0_4:
	cmp	x2, #32
	b.hs	.LBB0_6
// %bb.5:
	mov	w9, wzr
	mov	x8, xzr
	b	.LBB0_10
.LBB0_6:
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	and	x8, x2, #0xffffffffffffffe0
	add	x9, x0, #16
	add	x10, x1, #16
	mov	x11, x8
.LBB0_7:                                // =>This Inner Loop Header: Depth=1
	ldp	q2, q3, [x9, #-16]
	subs	x11, x11, #32
	ldp	q4, q5, [x10, #-16]
	add	x9, x9, #32
	add	x10, x10, #32
	eor	v2.16b, v4.16b, v2.16b
	eor	v3.16b, v5.16b, v3.16b
	orr	v0.16b, v2.16b, v0.16b
	orr	v1.16b, v3.16b, v1.16b
	b.ne	.LBB0_7
// %bb.8:
	orr	v0.16b, v1.16b, v0.16b
	cmp	x8, x2
	ext	v1.16b, v0.16b, v0.16b, #8
	orr	v0.8b, v0.8b, v1.8b
	fmov	x9, d0
	orr	x9, x9, x9, lsr #32
	orr	x9, x9, x9, lsr #16
	lsr	x10, x9, #8
	orr	w9, w9, w10
	b.eq	.LBB0_15
// %bb.9:
	tst	x2, #0x18
	b.eq	.LBB0_13
.LBB0_10:
	movi	v0.2d, #0000000000000000
	mov	x11, x8
	and	x8, x2, #0xfffffffffffffff8
	add	x10, x1, x11
	mov	v0.b[0], w9
	add	x9, x0, x11
	sub	x11, x11, x8
.LBB0_11:                               // =>This Inner Loop Header: Depth=1
	ldr	d1, [x9], #8
	adds	x11, x11, #8
	ldr	d2, [x10], #8
	eor	v1.8b, v2.8b, v1.8b
	orr	v0.8b, v1.8b, v0.8b
	b.ne	.LBB0_11
// %bb.12:
	fmov	x9, d0
	cmp	x8, x2
	orr	x9, x9, x9, lsr #32
	orr	x9, x9, x9, lsr #16
	lsr	x10, x9, #8
	orr	w9, w9, w10
	b.eq	.LBB0_15
.LBB0_13:
	sub	x10, x2, x8
	add	x11, x1, x8
	add	x8, x0, x8
.LBB0_14:                               // =>This Inner Loop Header: Depth=1
	ldrb	w12, [x8], #1
	subs	x10, x10, #1
	ldrb	w13, [x11], #1
	eor	w12, w13, w12
	orr	w9, w12, w9
	b.ne	.LBB0_14
.LBB0_15:
	tst	w9, #0xff
	cset	w0, eq
	ret
.Lfunc_end0:
	.size	hmac_verify, .Lfunc_end0-hmac_verify
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
