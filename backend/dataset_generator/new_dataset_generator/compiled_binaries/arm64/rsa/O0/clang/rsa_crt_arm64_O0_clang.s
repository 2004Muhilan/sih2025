	.text
	.file	"rsa_crt.c"
	.globl	rsa_crt_decrypt                 // -- Begin function rsa_crt_decrypt
	.p2align	2
	.type	rsa_crt_decrypt,@function
rsa_crt_decrypt:                        // @rsa_crt_decrypt
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	str	x0, [sp, #56]
	str	x1, [sp, #48]
	str	x2, [sp, #40]
	str	x3, [sp, #32]
	ldr	x8, [sp, #48]
	ldr	x9, [sp, #40]
	subs	x10, x9, #1
	udiv	x9, x8, x10
	mul	x9, x9, x10
	subs	x8, x8, x9
	str	x8, [sp, #24]
	ldr	x8, [sp, #48]
	ldr	x9, [sp, #32]
	subs	x10, x9, #1
	udiv	x9, x8, x10
	mul	x9, x9, x10
	subs	x8, x8, x9
	str	x8, [sp, #16]
	ldr	x8, [sp, #56]
	ldr	x10, [sp, #40]
	udiv	x9, x8, x10
	mul	x9, x9, x10
	subs	x8, x8, x9
	str	x8, [sp, #8]
	ldr	x8, [sp, #56]
	ldr	x10, [sp, #32]
	udiv	x9, x8, x10
	mul	x9, x9, x10
	subs	x8, x8, x9
	str	x8, [sp]
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #32]
	mul	x8, x8, x9
	ldr	x9, [sp]
	ldr	x10, [sp, #40]
	mul	x9, x9, x10
	add	x8, x8, x9
	ldr	x9, [sp, #40]
	ldr	x10, [sp, #32]
	mul	x10, x9, x10
	udiv	x9, x8, x10
	mul	x9, x9, x10
	subs	x0, x8, x9
	add	sp, sp, #64
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end0:
	.size	rsa_crt_decrypt, .Lfunc_end0-rsa_crt_decrypt
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
