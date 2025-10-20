	.text
	.file	"rsa_key_generation.c"
	.globl	rsa_generate_keys               // -- Begin function rsa_generate_keys
	.p2align	2
	.type	rsa_generate_keys,@function
rsa_generate_keys:                      // @rsa_generate_keys
	.cfi_startproc
// %bb.0:
	mov	w8, #3233                       // =0xca1
	mov	w9, #17                         // =0x11
	str	x8, [x0]
	str	x9, [x1]
	str	xzr, [x2]
	ret
.Lfunc_end0:
	.size	rsa_generate_keys, .Lfunc_end0-rsa_generate_keys
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
