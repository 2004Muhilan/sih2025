	.text
	.file	"prng_lcg.c"
	.globl	prng_lcg                        // -- Begin function prng_lcg
	.p2align	2
	.type	prng_lcg,@function
prng_lcg:                               // @prng_lcg
	.cfi_startproc
// %bb.0:
	ldr	w9, [x0]
	mov	w10, #20077                     // =0x4e6d
	mov	w11, #12345                     // =0x3039
	movk	w10, #16838, lsl #16
	mov	x8, x0
	madd	w9, w9, w10, w11
	and	w0, w9, #0x7fffffff
	str	w0, [x8]
	ret
.Lfunc_end0:
	.size	prng_lcg, .Lfunc_end0-prng_lcg
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
