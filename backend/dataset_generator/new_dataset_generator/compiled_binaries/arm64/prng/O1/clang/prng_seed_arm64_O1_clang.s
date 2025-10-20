	.text
	.file	"prng_seed.c"
	.globl	prng_seed                       // -- Begin function prng_seed
	.p2align	2
	.type	prng_seed,@function
prng_seed:                              // @prng_seed
	.cfi_startproc
// %bb.0:
	mov	w8, #35173                      // =0x8965
	mov	w9, #32144                      // =0x7d90
	mov	w10, #25749                     // =0x6495
	movk	w8, #27655, lsl #16
	movk	w9, #12532, lsl #16
	movk	w10, #24373, lsl #16
	eor	w8, w1, w8
	eor	w9, w1, w9
	stp	w1, w8, [x0]
	eor	w8, w1, w10
	stp	w9, w8, [x0, #8]
	ret
.Lfunc_end0:
	.size	prng_seed, .Lfunc_end0-prng_seed
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
