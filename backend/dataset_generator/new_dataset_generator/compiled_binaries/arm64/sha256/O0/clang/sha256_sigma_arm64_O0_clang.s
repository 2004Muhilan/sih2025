	.text
	.file	"sha256_sigma.c"
	.globl	sha256_sigma0                   // -- Begin function sha256_sigma0
	.p2align	2
	.type	sha256_sigma0,@function
sha256_sigma0:                          // @sha256_sigma0
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, #12]
	ldr	w9, [sp, #12]
	ldr	w8, [sp, #12]
	lsl	w8, w8, #30
	orr	w8, w8, w9, lsr #2
	ldr	w10, [sp, #12]
	ldr	w9, [sp, #12]
	lsl	w9, w9, #19
	orr	w9, w9, w10, lsr #13
	eor	w8, w8, w9
	ldr	w10, [sp, #12]
	ldr	w9, [sp, #12]
	lsl	w9, w9, #10
	orr	w9, w9, w10, lsr #22
	eor	w0, w8, w9
	add	sp, sp, #16
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end0:
	.size	sha256_sigma0, .Lfunc_end0-sha256_sigma0
	.cfi_endproc
                                        // -- End function
	.globl	sha256_sigma1                   // -- Begin function sha256_sigma1
	.p2align	2
	.type	sha256_sigma1,@function
sha256_sigma1:                          // @sha256_sigma1
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, #12]
	ldr	w9, [sp, #12]
	ldr	w8, [sp, #12]
	lsl	w8, w8, #26
	orr	w8, w8, w9, lsr #6
	ldr	w10, [sp, #12]
	ldr	w9, [sp, #12]
	lsl	w9, w9, #21
	orr	w9, w9, w10, lsr #11
	eor	w8, w8, w9
	ldr	w10, [sp, #12]
	ldr	w9, [sp, #12]
	lsl	w9, w9, #7
	orr	w9, w9, w10, lsr #25
	eor	w0, w8, w9
	add	sp, sp, #16
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end1:
	.size	sha256_sigma1, .Lfunc_end1-sha256_sigma1
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
