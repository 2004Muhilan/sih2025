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
	mov	w9, #2                          // =0x2
	cmp	w8, #3
	mov	w8, #3                          // =0x3
	csinc	w8, w8, w0, ls
	mov	w0, #1                          // =0x1
.LBB0_3:                                // =>This Inner Loop Header: Depth=1
	mul	x0, x0, x9
	add	x9, x9, #1
	cmp	x8, x9
	b.ne	.LBB0_3
// %bb.4:
	ret
.Lfunc_end0:
	.size	factorial, .Lfunc_end0-factorial
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
