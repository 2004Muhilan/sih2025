	.text
	.file	"sha256_ch.c"
	.globl	sha256_ch                       // -- Begin function sha256_ch
	.p2align	2
	.type	sha256_ch,@function
sha256_ch:                              // @sha256_ch
	.cfi_startproc
// %bb.0:
	and	w8, w1, w0
	bic	w9, w2, w0
	orr	w0, w9, w8
	ret
.Lfunc_end0:
	.size	sha256_ch, .Lfunc_end0-sha256_ch
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
