	.text
	.file	"ecc_ecdh_shared_secret.c"
	.globl	ecc_ecdh_shared                 // -- Begin function ecc_ecdh_shared
	.p2align	2
	.type	ecc_ecdh_shared,@function
ecc_ecdh_shared:                        // @ecc_ecdh_shared
	.cfi_startproc
// %bb.0:
	mul	x8, x0, x2
	mov	x9, #-9223372034707292160       // =0x8000000080000000
	movk	x9, #1
	umulh	x9, x8, x9
	lsr	x9, x9, #31
	sub	x9, x9, x9, lsl #32
	add	x0, x8, x9
	ret
.Lfunc_end0:
	.size	ecc_ecdh_shared, .Lfunc_end0-ecc_ecdh_shared
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
