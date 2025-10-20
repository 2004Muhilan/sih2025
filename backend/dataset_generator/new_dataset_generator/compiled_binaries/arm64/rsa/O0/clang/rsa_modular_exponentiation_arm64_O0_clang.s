	.text
	.file	"rsa_modular_exponentiation.c"
	.globl	rsa_mod_exp                     // -- Begin function rsa_mod_exp
	.p2align	2
	.type	rsa_mod_exp,@function
rsa_mod_exp:                            // @rsa_mod_exp
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	mov	x8, #1                          // =0x1
	str	x8, [sp]
	ldr	x10, [sp, #8]
	ldr	x8, [sp, #24]
	udiv	x9, x8, x10
	mul	x9, x9, x10
	subs	x8, x8, x9
	str	x8, [sp, #24]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #16]
	subs	x8, x8, #0
	b.ls	.LBB0_5
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]
                                        // kill: def $w8 killed $w8 killed $x8
	tbz	w8, #0, .LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp]
	ldr	x9, [sp, #24]
	mul	x8, x8, x9
	ldr	x10, [sp, #8]
	udiv	x9, x8, x10
	mul	x9, x9, x10
	subs	x8, x8, x9
	str	x8, [sp]
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #24]
	mul	x8, x8, x9
	ldr	x10, [sp, #8]
	udiv	x9, x8, x10
	mul	x9, x9, x10
	subs	x8, x8, x9
	str	x8, [sp, #24]
	ldr	x8, [sp, #16]
	lsr	x8, x8, #1
	str	x8, [sp, #16]
	b	.LBB0_1
.LBB0_5:
	ldr	x0, [sp]
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end0:
	.size	rsa_mod_exp, .Lfunc_end0-rsa_mod_exp
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
