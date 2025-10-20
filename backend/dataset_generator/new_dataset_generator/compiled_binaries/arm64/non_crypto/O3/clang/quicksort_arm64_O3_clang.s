	.text
	.file	"quicksort.c"
	.globl	swap                            // -- Begin function swap
	.p2align	2
	.type	swap,@function
swap:                                   // @swap
	.cfi_startproc
// %bb.0:
	ldr	w8, [x1]
	ldr	w9, [x0]
	str	w8, [x0]
	str	w9, [x1]
	ret
.Lfunc_end0:
	.size	swap, .Lfunc_end0-swap
	.cfi_endproc
                                        // -- End function
	.globl	partition                       // -- Begin function partition
	.p2align	2
	.type	partition,@function
partition:                              // @partition
	.cfi_startproc
// %bb.0:
                                        // kill: def $w2 killed $w2 def $x2
	sxtw	x9, w2
	ldr	w10, [x0, w2, sxtw #2]
                                        // kill: def $w1 killed $w1 def $x1
	mov	x8, x0
	cmp	w1, w2
	b.ge	.LBB1_6
// %bb.1:
	add	x12, x8, w1, sxtw #2
	sub	x13, x9, w1, sxtw
	sub	w11, w1, #1
	b	.LBB1_3
.LBB1_2:                                //   in Loop: Header=BB1_3 Depth=1
	subs	x13, x13, #1
	add	x12, x12, #4
	b.eq	.LBB1_5
.LBB1_3:                                // =>This Inner Loop Header: Depth=1
	ldr	w14, [x12]
	cmp	w14, w10
	b.ge	.LBB1_2
// %bb.4:                               //   in Loop: Header=BB1_3 Depth=1
	add	w11, w11, #1
	sbfiz	x15, x11, #2, #32
	ldr	w16, [x8, x15]
	str	w14, [x8, x15]
	str	w16, [x12]
	b	.LBB1_2
.LBB1_5:
	ldr	w10, [x8, x9, lsl #2]
	add	w1, w11, #1
.LBB1_6:
	sbfiz	x11, x1, #2, #32
	mov	w0, w1
	ldr	w12, [x8, x11]
	str	w10, [x8, x11]
	str	w12, [x8, x9, lsl #2]
	ret
.Lfunc_end1:
	.size	partition, .Lfunc_end1-partition
	.cfi_endproc
                                        // -- End function
	.globl	quicksort                       // -- Begin function quicksort
	.p2align	2
	.type	quicksort,@function
quicksort:                              // @quicksort
	.cfi_startproc
// %bb.0:
	cmp	w1, w2
	b.ge	.LBB2_8
// %bb.1:
	stp	x29, x30, [sp, #-64]!           // 16-byte Folded Spill
	.cfi_def_cfa_offset 64
	stp	x24, x23, [sp, #16]             // 16-byte Folded Spill
	stp	x22, x21, [sp, #32]             // 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             // 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 64
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w23, -40
	.cfi_offset w24, -48
	.cfi_offset w30, -56
	.cfi_offset w29, -64
	mov	w19, w2
	mov	w8, w1
	mov	x20, x0
	sxtw	x22, w19
	add	x24, x0, #4
	lsl	x23, x22, #2
	b	.LBB2_3
.LBB2_2:                                //   in Loop: Header=BB2_3 Depth=1
	mov	w8, w21
	ldr	w9, [x20, x23]
	mov	x0, x20
	sbfiz	x8, x8, #2, #32
	mov	w2, w21
                                        // kill: def $w1 killed $w1 killed $x1
	ldr	w10, [x24, x8]
	str	w9, [x24, x8]
	str	w10, [x20, x23]
	bl	quicksort
	add	w8, w21, #2
	cmp	w8, w19
	b.ge	.LBB2_7
.LBB2_3:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB2_5 Depth 2
	sxtw	x1, w8
	ldr	w9, [x20, x22, lsl #2]
	sub	w21, w8, #1
	mov	x8, x1
	b	.LBB2_5
.LBB2_4:                                //   in Loop: Header=BB2_5 Depth=2
	add	x8, x8, #1
	cmp	x22, x8
	b.eq	.LBB2_2
.LBB2_5:                                //   Parent Loop BB2_3 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w10, [x20, x8, lsl #2]
	cmp	w10, w9
	b.ge	.LBB2_4
// %bb.6:                               //   in Loop: Header=BB2_5 Depth=2
	add	w21, w21, #1
	sbfiz	x11, x21, #2, #32
	ldr	w12, [x20, x11]
	str	w10, [x20, x11]
	str	w12, [x20, x8, lsl #2]
	b	.LBB2_4
.LBB2_7:
	.cfi_def_cfa wsp, 64
	ldp	x20, x19, [sp, #48]             // 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             // 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #64             // 16-byte Folded Reload
	.cfi_def_cfa_offset 0
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w23
	.cfi_restore w24
	.cfi_restore w30
	.cfi_restore w29
.LBB2_8:
	ret
.Lfunc_end2:
	.size	quicksort, .Lfunc_end2-quicksort
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
