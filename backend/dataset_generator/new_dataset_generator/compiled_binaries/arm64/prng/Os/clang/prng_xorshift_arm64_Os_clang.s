	.text
	.file	"prng_xorshift.c"
	.globl	prng_xorshift                   // -- Begin function prng_xorshift
	.p2align	2
	.type	prng_xorshift,@function
prng_xorshift:                          // @prng_xorshift
	.cfi_startproc
// %bb.0:
	ldr	w9, [x0]
	mov	x8, x0
	eor	w9, w9, w9, lsl #13
	eor	w9, w9, w9, lsr #17
	eor	w0, w9, w9, lsl #5
	str	w0, [x8]
	ret
.Lfunc_end0:
	.size	prng_xorshift, .Lfunc_end0-prng_xorshift
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
