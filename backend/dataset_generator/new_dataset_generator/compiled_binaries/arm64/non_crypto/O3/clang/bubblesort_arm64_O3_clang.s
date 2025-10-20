	.text
	.file	"bubblesort.c"
	.globl	bubblesort                      // -- Begin function bubblesort
	.p2align	2
	.type	bubblesort,@function
bubblesort:                             // @bubblesort
	.cfi_startproc
// %bb.0:
	subs	x8, x1, #1
	b.eq	.LBB0_8
// %bb.1:
	mov	x9, xzr
	mov	x10, x8
	b	.LBB0_3
.LBB0_2:                                //   in Loop: Header=BB0_3 Depth=1
	add	x9, x9, #1
	sub	x10, x10, #1
	cmp	x9, x8
	b.eq	.LBB0_8
.LBB0_3:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_6 Depth 2
	cmp	x9, x8
	b.eq	.LBB0_2
// %bb.4:                               //   in Loop: Header=BB0_3 Depth=1
	ldr	w11, [x0]
	mov	x12, xzr
	b	.LBB0_6
.LBB0_5:                                //   in Loop: Header=BB0_6 Depth=2
	str	w14, [x0, x12, lsl #2]
	str	w11, [x13, #4]
	add	x12, x12, #1
	cmp	x10, x12
	b.eq	.LBB0_2
.LBB0_6:                                //   Parent Loop BB0_3 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	add	x13, x0, x12, lsl #2
	ldr	w14, [x13, #4]
	cmp	w11, w14
	b.gt	.LBB0_5
// %bb.7:                               //   in Loop: Header=BB0_6 Depth=2
	mov	w11, w14
	add	x12, x12, #1
	cmp	x10, x12
	b.ne	.LBB0_6
	b	.LBB0_2
.LBB0_8:
	ret
.Lfunc_end0:
	.size	bubblesort, .Lfunc_end0-bubblesort
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
