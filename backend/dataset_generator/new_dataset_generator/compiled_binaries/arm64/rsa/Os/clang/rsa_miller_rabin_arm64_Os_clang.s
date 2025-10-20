	.text
	.file	"rsa_miller_rabin.c"
	.globl	rsa_miller_rabin                // -- Begin function rsa_miller_rabin
	.p2align	2
	.type	rsa_miller_rabin,@function
rsa_miller_rabin:                       // @rsa_miller_rabin
	.cfi_startproc
// %bb.0:
	and	x9, x0, #0xfffffffffffffffe
	mov	w8, #1                          // =0x1
	cmp	x9, #2
	and	w9, w0, #0x1
	csel	w8, w8, w9, eq
	cmp	x0, #2
	csel	w0, wzr, w8, lo
	ret
.Lfunc_end0:
	.size	rsa_miller_rabin, .Lfunc_end0-rsa_miller_rabin
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
