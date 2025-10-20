	.text
	.file	"sha256_maj.c"
	.globl	sha256_maj                      // -- Begin function sha256_maj
	.p2align	2
	.type	sha256_maj,@function
sha256_maj:                             // @sha256_maj
	.cfi_startproc
// %bb.0:
	eor	w8, w2, w1
	and	w9, w2, w1
	and	w8, w8, w0
	eor	w0, w8, w9
	ret
.Lfunc_end0:
	.size	sha256_maj, .Lfunc_end0-sha256_maj
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
