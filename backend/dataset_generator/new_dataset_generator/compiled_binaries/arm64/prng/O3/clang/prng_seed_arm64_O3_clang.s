	.text
	.file	"prng_seed.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          // -- Begin function prng_seed
.LCPI0_0:
	.word	1812433253                      // 0x6c078965
	.word	821329296                       // 0x30f47d90
	.text
	.globl	prng_seed
	.p2align	2
	.type	prng_seed,@function
prng_seed:                              // @prng_seed
	.cfi_startproc
// %bb.0:
	dup	v0.2s, w1
	adrp	x8, .LCPI0_0
	str	w1, [x0]
	ldr	d1, [x8, :lo12:.LCPI0_0]
	mov	w8, #25749                      // =0x6495
	movk	w8, #24373, lsl #16
	eor	w8, w1, w8
	eor	v0.8b, v0.8b, v1.8b
	str	w8, [x0, #12]
	stur	d0, [x0, #4]
	ret
.Lfunc_end0:
	.size	prng_seed, .Lfunc_end0-prng_seed
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
