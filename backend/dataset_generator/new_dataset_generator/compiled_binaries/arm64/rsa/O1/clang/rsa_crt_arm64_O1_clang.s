	.text
	.file	"rsa_crt.c"
	.globl	rsa_crt_decrypt                 // -- Begin function rsa_crt_decrypt
	.p2align	2
	.type	rsa_crt_decrypt,@function
rsa_crt_decrypt:                        // @rsa_crt_decrypt
	.cfi_startproc
// %bb.0:
	udiv	x8, x0, x2
	udiv	x9, x0, x3
	msub	x8, x8, x2, x0
	mul	x8, x8, x3
	msub	x9, x9, x3, x0
	madd	x8, x9, x2, x8
	mul	x9, x3, x2
	udiv	x10, x8, x9
	msub	x0, x10, x9, x8
	ret
.Lfunc_end0:
	.size	rsa_crt_decrypt, .Lfunc_end0-rsa_crt_decrypt
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
