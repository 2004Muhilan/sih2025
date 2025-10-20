	.text
	.file	"bubblesort.c"
	.globl	bubblesort                      // -- Begin function bubblesort
	.p2align	2
	.type	bubblesort,@function
bubblesort:                             // @bubblesort
	.cfi_startproc
// %bb.0:
	subs	x8, x1, #1
	b.eq	.LBB0_9
// %bb.1:
	mov	x9, xzr
	mov	x10, x8
.LBB0_2:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_4 Depth 2
	cmp	x9, x8
	b.eq	.LBB0_8
// %bb.3:                               //   in Loop: Header=BB0_2 Depth=1
	ldr	w11, [x0]
	mov	x12, xzr
.LBB0_4:                                //   Parent Loop BB0_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	add	x13, x0, x12, lsl #2
	ldr	w14, [x13, #4]
	cmp	w11, w14
	b.le	.LBB0_6
// %bb.5:                               //   in Loop: Header=BB0_4 Depth=2
	str	w14, [x0, x12, lsl #2]
	str	w11, [x13, #4]
	b	.LBB0_7
.LBB0_6:                                //   in Loop: Header=BB0_4 Depth=2
	mov	w11, w14
.LBB0_7:                                //   in Loop: Header=BB0_4 Depth=2
	add	x12, x12, #1
	cmp	x10, x12
	b.ne	.LBB0_4
.LBB0_8:                                //   in Loop: Header=BB0_2 Depth=1
	add	x9, x9, #1
	sub	x10, x10, #1
	cmp	x9, x8
	b.ne	.LBB0_2
.LBB0_9:
	ret
.Lfunc_end0:
	.size	bubblesort, .Lfunc_end0-bubblesort
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
