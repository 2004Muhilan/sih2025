	.text
	.file	"ecc_scalar_multiplication.c"
	.globl	ecc_scalar_mult                 // -- Begin function ecc_scalar_mult
	.p2align	2
	.type	ecc_scalar_mult,@function
ecc_scalar_mult:                        // @ecc_scalar_mult
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	str	x0, [sp, #32]
	str	x1, [sp, #40]
	str	x2, [sp, #24]
	str	x3, [sp, #16]
	str	xzr, [sp, #48]
	str	xzr, [sp, #56]
	ldr	q0, [sp, #32]
	str	q0, [sp]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #24]
	subs	x8, x8, #0
	b.ls	.LBB0_5
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #24]
                                        // kill: def $w8 killed $w8 killed $x8
	tbz	w8, #0, .LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #24]
	lsr	x8, x8, #1
	str	x8, [sp, #24]
	b	.LBB0_1
.LBB0_5:
	ldr	x0, [sp, #48]
	ldr	x1, [sp, #56]
	add	sp, sp, #64
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end0:
	.size	ecc_scalar_mult, .Lfunc_end0-ecc_scalar_mult
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
