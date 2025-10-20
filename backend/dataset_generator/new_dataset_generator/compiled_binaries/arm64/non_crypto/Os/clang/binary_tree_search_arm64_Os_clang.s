	.text
	.file	"binary_tree_search.c"
	.globl	binary_tree_search              // -- Begin function binary_tree_search
	.p2align	2
	.type	binary_tree_search,@function
binary_tree_search:                     // @binary_tree_search
	.cfi_startproc
// %bb.0:
	cbz	x0, .LBB0_4
// %bb.1:
	mov	w8, #16                         // =0x10
	mov	w9, #8                          // =0x8
.LBB0_2:                                // =>This Inner Loop Header: Depth=1
	ldr	w10, [x0]
	cmp	w10, w1
	b.eq	.LBB0_5
// %bb.3:                               //   in Loop: Header=BB0_2 Depth=1
	csel	x10, x9, x8, gt
	ldr	x0, [x0, x10]
	cbnz	x0, .LBB0_2
.LBB0_4:
	ret
.LBB0_5:
	mov	w0, #1                          // =0x1
	ret
.Lfunc_end0:
	.size	binary_tree_search, .Lfunc_end0-binary_tree_search
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
