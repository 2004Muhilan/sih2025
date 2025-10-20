	.text
	.file	"fibonacci.c"
	.globl	fibonacci                       // -- Begin function fibonacci
	.p2align	2
	.type	fibonacci,@function
fibonacci:                              // @fibonacci
	.cfi_startproc
// %bb.0:
	cmp	w0, #2
	b.lo	.LBB0_3
// %bb.1:
	add	w9, w0, #1
	mov	w8, wzr
	cmp	w9, #3
	mov	w9, #3                          // =0x3
	csinc	w9, w9, w0, ls
	mov	w0, #1                          // =0x1
	sub	w9, w9, #2
.LBB0_2:                                // =>This Inner Loop Header: Depth=1
	mov	w10, w0
	subs	w9, w9, #1
	add	w0, w0, w8
	mov	w8, w10
	b.ne	.LBB0_2
.LBB0_3:
	ret
.Lfunc_end0:
	.size	fibonacci, .Lfunc_end0-fibonacci
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
