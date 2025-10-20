	.text
	.file	"sha1_round2.c"
	.globl	sha1_round2                     // -- Begin function sha1_round2
	.p2align	2
	.type	sha1_round2,@function
sha1_round2:                            // @sha1_round2
	.cfi_startproc
// %bb.0:
	ror	w8, w0, #27
	eor	w9, w2, w1
	mov	w11, #60321                     // =0xeba1
	eor	w9, w9, w3
	add	w10, w4, w5
	movk	w11, #28377, lsl #16
	add	w8, w8, w9
	add	w9, w10, w11
	add	w0, w8, w9
	ret
.Lfunc_end0:
	.size	sha1_round2, .Lfunc_end0-sha1_round2
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
