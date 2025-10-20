	.text
	.file	"ecc_point_addition.c"
	.globl	ecc_point_add                   // -- Begin function ecc_point_add
	.p2align	2
	.type	ecc_point_add,@function
ecc_point_add:                          // @ecc_point_add
	.cfi_startproc
// %bb.0:
	sub	x8, x3, x1
	sub	x9, x2, x0
	neg	x11, x1
	mul	x8, x8, x9
	udiv	x9, x8, x4
	msub	x9, x9, x4, x8
	add	x8, x2, x0
	neg	x8, x8
	madd	x8, x9, x9, x8
	udiv	x10, x8, x4
	msub	x8, x10, x4, x8
	sub	x10, x0, x8
	mov	x0, x8
	madd	x9, x10, x9, x11
	udiv	x10, x9, x4
	msub	x1, x10, x4, x9
	ret
.Lfunc_end0:
	.size	ecc_point_add, .Lfunc_end0-ecc_point_add
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
