	.text
	.file	"prng_pcg.c"
	.globl	prng_pcg                        // -- Begin function prng_pcg
	.p2align	2
	.type	prng_pcg,@function
prng_pcg:                               // @prng_pcg
	.cfi_startproc
// %bb.0:
	mov	x9, #32557                      // =0x7f2d
	ldr	x10, [x0]
	mov	x13, #1                         // =0x1
	movk	x9, #19605, lsl #16
	mov	x8, x0
	movk	x9, #62509, lsl #32
	lsr	x11, x10, #45
	lsr	x12, x10, #27
	movk	x9, #22609, lsl #48
	madd	x9, x10, x9, x13
	lsr	x10, x10, #59
	eor	w11, w11, w12
	ror	w0, w11, w10
	str	x9, [x8]
	ret
.Lfunc_end0:
	.size	prng_pcg, .Lfunc_end0-prng_pcg
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
