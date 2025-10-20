	.text
	.file	"array_max.c"
	.globl	array_max                       // -- Begin function array_max
	.p2align	2
	.type	array_max,@function
array_max:                              // @array_max
	.cfi_startproc
// %bb.0:
	cbz	x1, .LBB0_4
// %bb.1:
	ldr	w8, [x0]
	subs	x10, x1, #1
	b.eq	.LBB0_10
// %bb.2:
	cmp	x1, #9
	b.hs	.LBB0_5
// %bb.3:
	mov	w9, #1                          // =0x1
	b	.LBB0_8
.LBB0_4:
	mov	w8, wzr
	mov	w0, w8
	ret
.LBB0_5:
	dup	v0.4s, w8
	and	x8, x10, #0xfffffffffffffff8
	add	x11, x0, #20
	orr	x9, x8, #0x1
	mov	x12, x8
	mov	v1.16b, v0.16b
.LBB0_6:                                // =>This Inner Loop Header: Depth=1
	ldp	q2, q3, [x11, #-16]
	subs	x12, x12, #8
	add	x11, x11, #32
	smax	v0.4s, v2.4s, v0.4s
	smax	v1.4s, v3.4s, v1.4s
	b.ne	.LBB0_6
// %bb.7:
	smax	v0.4s, v0.4s, v1.4s
	cmp	x10, x8
	smaxv	s0, v0.4s
	fmov	w8, s0
	b.eq	.LBB0_10
.LBB0_8:
	add	x10, x0, x9, lsl #2
	sub	x9, x1, x9
.LBB0_9:                                // =>This Inner Loop Header: Depth=1
	ldr	w11, [x10], #4
	cmp	w11, w8
	csel	w8, w11, w8, gt
	subs	x9, x9, #1
	b.ne	.LBB0_9
.LBB0_10:
	mov	w0, w8
	ret
.Lfunc_end0:
	.size	array_max, .Lfunc_end0-array_max
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
