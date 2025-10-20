	.text
	.file	"des_permutation_choice.c"
	.globl	des_pc1                         // -- Begin function des_pc1
	.p2align	2
	.type	des_pc1,@function
des_pc1:                                // @des_pc1
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	xzr, [sp, #16]
	str	wzr, [sp, #12]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]
	subs	w8, w8, #56
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #24]
	ldr	w10, [sp, #12]
	mov	w9, #64                         // =0x40
	subs	w9, w9, w10
                                        // kill: def $x9 killed $w9
	lsr	x8, x8, x9
	and	x8, x8, #0x1
	ldr	w10, [sp, #12]
	mov	w9, #55                         // =0x37
	subs	w9, w9, w10
                                        // kill: def $x9 killed $w9
	lsl	x9, x8, x9
	ldr	x8, [sp, #16]
	orr	x8, x8, x9
	str	x8, [sp, #16]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB0_1
.LBB0_4:
	ldr	x0, [sp, #16]
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end0:
	.size	des_pc1, .Lfunc_end0-des_pc1
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
