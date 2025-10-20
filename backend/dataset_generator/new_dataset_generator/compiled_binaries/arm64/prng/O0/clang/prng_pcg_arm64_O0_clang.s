	.text
	.file	"prng_pcg.c"
	.globl	prng_pcg                        // -- Begin function prng_pcg
	.p2align	2
	.type	prng_pcg,@function
prng_pcg:                               // @prng_pcg
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	ldr	x8, [sp, #24]
	ldr	x8, [x8]
	str	x8, [sp, #16]
	ldr	x8, [sp, #16]
	mov	x9, #32557                      // =0x7f2d
	movk	x9, #19605, lsl #16
	movk	x9, #62509, lsl #32
	movk	x9, #22609, lsl #48
	mul	x8, x8, x9
	add	x8, x8, #1
	ldr	x9, [sp, #24]
	str	x8, [x9]
	ldr	x9, [sp, #16]
	ldr	x8, [sp, #16]
	eor	x8, x8, x9, lsr #18
	lsr	x8, x8, #27
                                        // kill: def $w8 killed $w8 killed $x8
	str	w8, [sp, #12]
	ldr	x8, [sp, #16]
	lsr	x8, x8, #59
                                        // kill: def $w8 killed $w8 killed $x8
	str	w8, [sp, #8]
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #8]
	lsr	w8, w8, w9
	ldr	w9, [sp, #12]
	ldr	w11, [sp, #8]
	mov	w10, wzr
	subs	w10, w10, w11
	and	w10, w10, #0x1f
	lsl	w9, w9, w10
	orr	w0, w8, w9
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end0:
	.size	prng_pcg, .Lfunc_end0-prng_pcg
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
