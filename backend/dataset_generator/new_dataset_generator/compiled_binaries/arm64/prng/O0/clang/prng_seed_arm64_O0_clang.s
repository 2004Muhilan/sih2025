	.text
	.file	"prng_seed.c"
	.globl	prng_seed                       // -- Begin function prng_seed
	.p2align	2
	.type	prng_seed,@function
prng_seed:                              // @prng_seed
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	w8, [sp, #4]
	ldr	x9, [sp, #8]
	str	w8, [x9]
	ldr	w8, [sp, #4]
	mov	w9, #35173                      // =0x8965
	movk	w9, #27655, lsl #16
	eor	w8, w8, w9
	ldr	x9, [sp, #8]
	str	w8, [x9, #4]
	ldr	w8, [sp, #4]
	mov	w9, #32144                      // =0x7d90
	movk	w9, #12532, lsl #16
	eor	w8, w8, w9
	ldr	x9, [sp, #8]
	str	w8, [x9, #8]
	ldr	w8, [sp, #4]
	mov	w9, #25749                      // =0x6495
	movk	w9, #24373, lsl #16
	eor	w8, w8, w9
	ldr	x9, [sp, #8]
	str	w8, [x9, #12]
	add	sp, sp, #16
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end0:
	.size	prng_seed, .Lfunc_end0-prng_seed
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
