	.text
	.file	"sha256_sigma.c"
	.globl	sha256_sigma0                   // -- Begin function sha256_sigma0
	.p2align	2
	.type	sha256_sigma0,@function
sha256_sigma0:                          // @sha256_sigma0
	.cfi_startproc
// %bb.0:
	ror	w8, w0, #2
	eor	w8, w8, w0, ror #13
	eor	w0, w8, w0, ror #22
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
	ror	w8, w0, #6
	eor	w8, w8, w0, ror #11
	eor	w0, w8, w0, ror #25
	ret
.Lfunc_end1:
	.size	sha256_sigma1, .Lfunc_end1-sha256_sigma1
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
