	.text
	.file	"array_sum.c"
	.globl	array_sum                       // -- Begin function array_sum
	.p2align	2
	.type	array_sum,@function
array_sum:                              // @array_sum
	.cfi_startproc
// %bb.0:
	mov	w8, wzr
	cbz	x1, .LBB0_2
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w9, [x0], #4
	subs	x1, x1, #1
	add	w8, w9, w8
	b.ne	.LBB0_1
.LBB0_2:
	mov	w0, w8
	ret
.Lfunc_end0:
	.size	array_sum, .Lfunc_end0-array_sum
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
