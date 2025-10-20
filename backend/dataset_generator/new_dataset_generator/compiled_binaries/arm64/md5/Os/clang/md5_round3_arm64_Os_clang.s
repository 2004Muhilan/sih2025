	.text
	.file	"md5_round3.c"
	.globl	md5_round3                      // -- Begin function md5_round3
	.p2align	2
	.type	md5_round3,@function
md5_round3:                             // @md5_round3
	.cfi_startproc
// %bb.0:
	eor	w8, w2, w3
	ldr	w9, [x0]
	add	w10, w4, w6
	eor	w8, w8, w1
	add	w8, w8, w10
	add	w8, w8, w9
	lsl	w8, w8, w5
	add	w8, w8, w1
	str	w8, [x0]
	ret
.Lfunc_end0:
	.size	md5_round3, .Lfunc_end0-md5_round3
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
