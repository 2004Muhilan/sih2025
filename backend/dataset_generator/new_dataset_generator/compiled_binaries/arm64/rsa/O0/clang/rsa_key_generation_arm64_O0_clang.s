	.text
	.file	"rsa_key_generation.c"
	.globl	rsa_generate_keys               // -- Begin function rsa_generate_keys
	.p2align	2
	.type	rsa_generate_keys,@function
rsa_generate_keys:                      // @rsa_generate_keys
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, #40]
	str	x1, [sp, #32]
	str	x2, [sp, #24]
	mov	x8, #61                         // =0x3d
	str	x8, [sp, #16]
	mov	x8, #53                         // =0x35
	str	x8, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #8]
	mul	x8, x8, x9
	ldr	x9, [sp, #40]
	str	x8, [x9]
	ldr	x8, [sp, #16]
	subs	x8, x8, #1
	ldr	x9, [sp, #8]
	subs	x9, x9, #1
	mul	x8, x8, x9
	str	x8, [sp]
	ldr	x9, [sp, #32]
	mov	x8, #17                         // =0x11
	str	x8, [x9]
	ldr	x8, [sp, #24]
	str	xzr, [x8]
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end0:
	.size	rsa_generate_keys, .Lfunc_end0-rsa_generate_keys
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
