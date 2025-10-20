	.text
	.file	"ecc_point_doubling.c"
	.globl	ecc_point_double                // -- Begin function ecc_point_double
	.p2align	2
	.type	ecc_point_double,@function
ecc_point_double:                       // @ecc_point_double
	.cfi_startproc
// %bb.0:
	mul	x8, x0, x0
	lsl	x9, x1, #1
	neg	x11, x1
	add	x8, x8, x8, lsl #1
	add	x8, x8, x2
	udiv	x8, x8, x9
	udiv	x9, x8, x3
	msub	x9, x9, x3, x8
	mul	x8, x9, x9
	sub	x8, x8, x0, lsl #1
	udiv	x10, x8, x3
	msub	x8, x10, x3, x8
	sub	x10, x0, x8
	mov	x0, x8
	madd	x9, x10, x9, x11
	udiv	x10, x9, x3
	msub	x1, x10, x3, x9
	ret
.Lfunc_end0:
	.size	ecc_point_double, .Lfunc_end0-ecc_point_double
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
