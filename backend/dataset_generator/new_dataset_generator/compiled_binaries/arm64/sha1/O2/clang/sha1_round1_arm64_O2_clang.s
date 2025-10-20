	.text
	.file	"sha1_round1.c"
	.globl	sha1_round1                     // -- Begin function sha1_round1
	.p2align	2
	.type	sha1_round1,@function
sha1_round1:                            // @sha1_round1
	.cfi_startproc
// %bb.0:
	ror	w8, w0, #27
	and	w9, w2, w1
	bic	w10, w3, w1
	mov	w11, #31129                     // =0x7999
	add	w9, w9, w10
	add	w10, w4, w5
	movk	w11, #23170, lsl #16
	add	w8, w8, w9
	add	w9, w10, w11
	add	w0, w8, w9
	ret
.Lfunc_end0:
	.size	sha1_round1, .Lfunc_end0-sha1_round1
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
