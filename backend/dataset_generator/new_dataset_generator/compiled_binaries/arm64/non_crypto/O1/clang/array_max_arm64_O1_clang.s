	.text
	.file	"array_max.c"
	.globl	array_max                       // -- Begin function array_max
	.p2align	2
	.type	array_max,@function
array_max:                              // @array_max
	.cfi_startproc
// %bb.0:
	cbz	x1, .LBB0_5
// %bb.1:
	mov	x8, x0
	ldr	w0, [x0]
	subs	x9, x1, #1
	b.eq	.LBB0_4
// %bb.2:
	add	x8, x8, #4
.LBB0_3:                                // =>This Inner Loop Header: Depth=1
	ldr	w10, [x8], #4
	cmp	w10, w0
	csel	w0, w10, w0, gt
	subs	x9, x9, #1
	b.ne	.LBB0_3
.LBB0_4:
	ret
.LBB0_5:
	mov	w0, wzr
	ret
.Lfunc_end0:
	.size	array_max, .Lfunc_end0-array_max
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
