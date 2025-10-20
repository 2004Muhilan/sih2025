	.text
	.file	"ecc_point_addition.c"
	.globl	ecc_point_add                   // -- Begin function ecc_point_add
	.p2align	2
	.type	ecc_point_add,@function
ecc_point_add:                          // @ecc_point_add
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	str	x0, [sp, #32]
	str	x1, [sp, #40]
	str	x2, [sp, #16]
	str	x3, [sp, #24]
	str	x4, [sp, #8]
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #40]
	subs	x8, x8, x9
	ldr	x9, [sp, #16]
	ldr	x10, [sp, #32]
	subs	x9, x9, x10
	mul	x8, x8, x9
	ldr	x10, [sp, #8]
	udiv	x9, x8, x10
	mul	x9, x9, x10
	subs	x8, x8, x9
	str	x8, [sp]
	ldr	x8, [sp]
	ldr	x9, [sp]
	mul	x8, x8, x9
	ldr	x9, [sp, #32]
	subs	x8, x8, x9
	ldr	x9, [sp, #16]
	subs	x8, x8, x9
	ldr	x10, [sp, #8]
	udiv	x9, x8, x10
	mul	x9, x9, x10
	subs	x8, x8, x9
	str	x8, [sp, #48]
	ldr	x8, [sp]
	ldr	x9, [sp, #32]
	ldr	x10, [sp, #48]
	subs	x9, x9, x10
	mul	x8, x8, x9
	ldr	x9, [sp, #40]
	subs	x8, x8, x9
	ldr	x10, [sp, #8]
	udiv	x9, x8, x10
	mul	x9, x9, x10
	subs	x8, x8, x9
	str	x8, [sp, #56]
	ldr	x0, [sp, #48]
	ldr	x1, [sp, #56]
	add	sp, sp, #64
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end0:
	.size	ecc_point_add, .Lfunc_end0-ecc_point_add
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
