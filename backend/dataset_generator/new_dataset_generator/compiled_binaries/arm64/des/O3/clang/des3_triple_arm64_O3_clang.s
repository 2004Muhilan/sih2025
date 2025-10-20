	.text
	.file	"des3_triple.c"
	.globl	des3_encrypt                    // -- Begin function des3_encrypt
	.p2align	2
	.type	des3_encrypt,@function
des3_encrypt:                           // @des3_encrypt
	.cfi_startproc
// %bb.0:
	eor	x8, x2, x3
	eor	x9, x1, x0
	eor	x0, x9, x8
	ret
.Lfunc_end0:
	.size	des3_encrypt, .Lfunc_end0-des3_encrypt
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
