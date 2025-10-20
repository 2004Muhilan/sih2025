	.text
	.file	"factorial.c"
	.globl	factorial                       // -- Begin function factorial
	.p2align	2
	.type	factorial,@function
factorial:                              // @factorial
	.cfi_startproc
// %bb.0:
	cmp	w0, #2
	b.hs	.LBB0_2
// %bb.1:
	mov	w0, #1                          // =0x1
	ret
.LBB0_2:
	add	w8, w0, #1
	cmp	w8, #3
	mov	w8, #3                          // =0x3
	csinc	w8, w8, w0, ls
	sub	x10, x8, #2
	cmp	x10, #2
	b.hs	.LBB0_4
// %bb.3:
	mov	w0, #1                          // =0x1
	mov	w9, #2                          // =0x2
	b	.LBB0_7
.LBB0_4:
	and	x11, x10, #0xfffffffffffffffe
	mov	x13, xzr
	mov	w12, #1                         // =0x1
	add	x9, x11, #2
	mov	w14, #1                         // =0x1
.LBB0_5:                                // =>This Inner Loop Header: Depth=1
	add	x15, x13, #2
	add	x13, x13, #3
	mul	x12, x12, x15
	cmp	x11, x15
	mul	x14, x14, x13
	mov	x13, x15
	b.ne	.LBB0_5
// %bb.6:
	mul	x0, x14, x12
	cmp	x10, x11
	b.eq	.LBB0_8
.LBB0_7:                                // =>This Inner Loop Header: Depth=1
	mul	x0, x0, x9
	add	x9, x9, #1
	cmp	x8, x9
	b.ne	.LBB0_7
.LBB0_8:
	ret
.Lfunc_end0:
	.size	factorial, .Lfunc_end0-factorial
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
