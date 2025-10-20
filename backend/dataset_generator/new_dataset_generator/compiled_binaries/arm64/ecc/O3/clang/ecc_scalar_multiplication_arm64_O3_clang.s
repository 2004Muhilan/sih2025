	.text
	.file	"ecc_scalar_multiplication.c"
	.globl	ecc_scalar_mult                 // -- Begin function ecc_scalar_mult
	.p2align	2
	.type	ecc_scalar_mult,@function
ecc_scalar_mult:                        // @ecc_scalar_mult
	.cfi_startproc
// %bb.0:
	mov	x0, xzr
	mov	x1, xzr
	ret
.Lfunc_end0:
	.size	ecc_scalar_mult, .Lfunc_end0-ecc_scalar_mult
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
