	.text
	.file	"ecc_ecdh_shared_secret.c"
	.globl	ecc_ecdh_shared                 // -- Begin function ecc_ecdh_shared
	.p2align	2
	.type	ecc_ecdh_shared,@function
ecc_ecdh_shared:                        // @ecc_ecdh_shared
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #16]
	str	x1, [sp, #24]
	str	x2, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #8]
	mul	x8, x8, x9
	mov	x10, #4294967295                // =0xffffffff
	udiv	x9, x8, x10
	mul	x9, x9, x10
	subs	x0, x8, x9
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end0:
	.size	ecc_ecdh_shared, .Lfunc_end0-ecc_ecdh_shared
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
