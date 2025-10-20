	.text
	.file	"prng_xorshift.c"
	.globl	prng_xorshift                   // -- Begin function prng_xorshift
	.p2align	2
	.type	prng_xorshift,@function
prng_xorshift:                          // @prng_xorshift
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	str	w8, [sp, #4]
	ldr	w9, [sp, #4]
	ldr	w8, [sp, #4]
	eor	w8, w8, w9, lsl #13
	str	w8, [sp, #4]
	ldr	w9, [sp, #4]
	ldr	w8, [sp, #4]
	eor	w8, w8, w9, lsr #17
	str	w8, [sp, #4]
	ldr	w9, [sp, #4]
	ldr	w8, [sp, #4]
	eor	w8, w8, w9, lsl #5
	str	w8, [sp, #4]
	ldr	w8, [sp, #4]
	ldr	x9, [sp, #8]
	str	w8, [x9]
	ldr	w0, [sp, #4]
	add	sp, sp, #16
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end0:
	.size	prng_xorshift, .Lfunc_end0-prng_xorshift
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
