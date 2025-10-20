	.text
	.file	"binary_tree_search.c"
	.globl	binary_tree_search              // -- Begin function binary_tree_search
	.p2align	2
	.type	binary_tree_search,@function
binary_tree_search:                     // @binary_tree_search
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	str	w1, [sp, #12]
	ldr	x8, [sp, #16]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	stur	wzr, [x29, #-4]
	b	.LBB0_7
.LBB0_2:
	ldr	x8, [sp, #16]
	ldr	w8, [x8]
	ldr	w9, [sp, #12]
	subs	w8, w8, w9
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	mov	w8, #1                          // =0x1
	stur	w8, [x29, #-4]
	b	.LBB0_7
.LBB0_4:
	ldr	w8, [sp, #12]
	ldr	x9, [sp, #16]
	ldr	w9, [x9]
	subs	w8, w8, w9
	b.ge	.LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldr	x8, [sp, #16]
	ldr	x0, [x8, #8]
	ldr	w1, [sp, #12]
	bl	binary_tree_search
	stur	w0, [x29, #-4]
	b	.LBB0_7
.LBB0_6:
	ldr	x8, [sp, #16]
	ldr	x0, [x8, #16]
	ldr	w1, [sp, #12]
	bl	binary_tree_search
	stur	w0, [x29, #-4]
	b	.LBB0_7
.LBB0_7:
	ldur	w0, [x29, #-4]
	.cfi_def_cfa wsp, 48
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end0:
	.size	binary_tree_search, .Lfunc_end0-binary_tree_search
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym binary_tree_search
