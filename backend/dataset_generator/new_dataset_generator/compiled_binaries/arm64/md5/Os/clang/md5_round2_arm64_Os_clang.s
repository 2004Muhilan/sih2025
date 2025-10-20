	.text
	.file	"md5_round2.c"
	.globl	md5_round2                      // -- Begin function md5_round2
	.p2align	2
	.type	md5_round2,@function
md5_round2:                             // @md5_round2
	.cfi_startproc
// %bb.0:
	and	w8, w3, w1
	bic	w9, w2, w3
	ldr	w10, [x0]
	orr	w8, w8, w9
	add	w9, w4, w6
	add	w8, w8, w9
	add	w8, w8, w10
	lsl	w8, w8, w5
	add	w8, w8, w1
	str	w8, [x0]
	ret
.Lfunc_end0:
	.size	md5_round2, .Lfunc_end0-md5_round2
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
