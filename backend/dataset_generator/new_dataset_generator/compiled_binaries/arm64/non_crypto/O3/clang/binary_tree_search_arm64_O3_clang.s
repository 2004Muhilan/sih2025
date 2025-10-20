	.text
	.file	"binary_tree_search.c"
	.globl	binary_tree_search              // -- Begin function binary_tree_search
	.p2align	2
	.type	binary_tree_search,@function
binary_tree_search:                     // @binary_tree_search
	.cfi_startproc
// %bb.0:
	cbz	x0, .LBB0_3
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [x0]
	cmp	w8, w1
	b.eq	.LBB0_4
// %bb.2:                               //   in Loop: Header=BB0_1 Depth=1
	add	x8, x0, #16
	add	x9, x0, #8
	csel	x8, x8, x9, le
	ldr	x0, [x8]
	cbnz	x0, .LBB0_1
.LBB0_3:
	ret
.LBB0_4:
	mov	w0, #1                          // =0x1
	ret
.Lfunc_end0:
	.size	binary_tree_search, .Lfunc_end0-binary_tree_search
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
