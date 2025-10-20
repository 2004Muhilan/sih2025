	.text
	.file	"array_sum.c"
	.globl	array_sum                       // -- Begin function array_sum
	.p2align	2
	.type	array_sum,@function
array_sum:                              // @array_sum
	.cfi_startproc
// %bb.0:
	cbz	x1, .LBB0_3
// %bb.1:
	cmp	x1, #8
	b.hs	.LBB0_4
// %bb.2:
	mov	x9, xzr
	mov	w8, wzr
	b	.LBB0_7
.LBB0_3:
	mov	w8, wzr
	mov	w0, w8
	ret
.LBB0_4:
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	and	x9, x1, #0xfffffffffffffff8
	add	x8, x0, #16
	mov	x10, x9
.LBB0_5:                                // =>This Inner Loop Header: Depth=1
	ldp	q2, q3, [x8, #-16]
	subs	x10, x10, #8
	add	x8, x8, #32
	add	v0.4s, v2.4s, v0.4s
	add	v1.4s, v3.4s, v1.4s
	b.ne	.LBB0_5
// %bb.6:
	add	v0.4s, v1.4s, v0.4s
	cmp	x9, x1
	addv	s0, v0.4s
	fmov	w8, s0
	b.eq	.LBB0_9
.LBB0_7:
	add	x10, x0, x9, lsl #2
	sub	x9, x1, x9
.LBB0_8:                                // =>This Inner Loop Header: Depth=1
	ldr	w11, [x10], #4
	subs	x9, x9, #1
	add	w8, w11, w8
	b.ne	.LBB0_8
.LBB0_9:
	mov	w0, w8
	ret
.Lfunc_end0:
	.size	array_sum, .Lfunc_end0-array_sum
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
