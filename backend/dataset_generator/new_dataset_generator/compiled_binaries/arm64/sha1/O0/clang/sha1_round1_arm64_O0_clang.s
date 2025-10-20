	.text
	.file	"sha1_round1.c"
	.globl	sha1_round1                     // -- Begin function sha1_round1
	.p2align	2
	.type	sha1_round1,@function
sha1_round1:                            // @sha1_round1
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, #28]
	str	w1, [sp, #24]
	str	w2, [sp, #20]
	str	w3, [sp, #16]
	str	w4, [sp, #12]
	str	w5, [sp, #8]
	ldr	w9, [sp, #28]
	ldr	w8, [sp, #28]
	lsr	w8, w8, #27
	orr	w8, w8, w9, lsl #5
	ldr	w9, [sp, #24]
	ldr	w10, [sp, #20]
	and	w9, w9, w10
	ldr	w11, [sp, #24]
	ldr	w10, [sp, #16]
	bic	w10, w10, w11
	orr	w9, w9, w10
	add	w8, w8, w9
	ldr	w9, [sp, #12]
	add	w8, w8, w9
	mov	w9, #31129                      // =0x7999
	movk	w9, #23170, lsl #16
	add	w8, w8, w9
	ldr	w9, [sp, #8]
	add	w0, w8, w9
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end0:
	.size	sha1_round1, .Lfunc_end0-sha1_round1
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
