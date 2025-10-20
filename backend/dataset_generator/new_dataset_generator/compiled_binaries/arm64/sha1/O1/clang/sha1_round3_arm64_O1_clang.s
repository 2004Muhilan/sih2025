	.text
	.file	"sha1_round3.c"
	.globl	sha1_round3                     // -- Begin function sha1_round3
	.p2align	2
	.type	sha1_round3,@function
sha1_round3:                            // @sha1_round3
	.cfi_startproc
// %bb.0:
	ror	w8, w0, #27
	orr	w9, w3, w2
	and	w10, w3, w2
	and	w9, w9, w1
	add	w11, w4, w5
	orr	w9, w9, w10
	add	w8, w8, w11
	add	w8, w8, w9
	mov	w9, #48348                      // =0xbcdc
	movk	w9, #36635, lsl #16
	add	w0, w8, w9
	ret
.Lfunc_end0:
	.size	sha1_round3, .Lfunc_end0-sha1_round3
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
