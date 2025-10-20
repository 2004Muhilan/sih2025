	.text
	.file	"prng_lcg.c"
	.globl	prng_lcg                        // -- Begin function prng_lcg
	.p2align	2
	.type	prng_lcg,@function
prng_lcg:                               // @prng_lcg
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	mov	w9, #20077                      // =0x4e6d
	movk	w9, #16838, lsl #16
	mul	w8, w8, w9
	mov	w9, #12345                      // =0x3039
	add	w8, w8, w9
	and	w8, w8, #0x7fffffff
	ldr	x9, [sp, #8]
	str	w8, [x9]
	ldr	x8, [sp, #8]
	ldr	w0, [x8]
	add	sp, sp, #16
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end0:
	.size	prng_lcg, .Lfunc_end0-prng_lcg
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
