	.text
	.file	"des3_triple.c"
	.globl	des3_encrypt                    // -- Begin function des3_encrypt
	.p2align	2
	.type	des3_encrypt,@function
des3_encrypt:                           // @des3_encrypt
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	str	x3, [sp]
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #16]
	eor	x8, x8, x9
	str	x8, [sp, #24]
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #8]
	eor	x8, x8, x9
	str	x8, [sp, #24]
	ldr	x8, [sp, #24]
	ldr	x9, [sp]
	eor	x8, x8, x9
	str	x8, [sp, #24]
	ldr	x0, [sp, #24]
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end0:
	.size	des3_encrypt, .Lfunc_end0-des3_encrypt
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
