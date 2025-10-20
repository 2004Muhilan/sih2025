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
	mov	x8, x0
	cmp	w1, w2
	b.ge	.LBB1_6
// %bb.1:
	add	x12, x8, w1, sxtw #2
	sub	x13, x9, w1, sxtw
	sub	w11, w1, #1
.LBB1_2:                                // =>This Inner Loop Header: Depth=1
	ldr	w14, [x12]
	cmp	w14, w10
	b.ge	.LBB1_4
// %bb.3:                               //   in Loop: Header=BB1_2 Depth=1
	add	w11, w11, #1
	ldr	w15, [x8, w11, sxtw #2]
	str	w14, [x8, w11, sxtw #2]
	str	w15, [x12]
.LBB1_4:                                //   in Loop: Header=BB1_2 Depth=1
	subs	x13, x13, #1
	add	x12, x12, #4
	b.ne	.LBB1_2
// %bb.5:
	ldr	w10, [x8, x9, lsl #2]
	add	w1, w11, #1
.LBB1_6:
	ldr	w11, [x8, w1, sxtw #2]
	mov	w0, w1
	str	w10, [x8, w1, sxtw #2]
	str	w11, [x8, x9, lsl #2]
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
	b.ge	.LBB2_4
// %bb.1:
	stp	x29, x30, [sp, #-48]!           // 16-byte Folded Spill
	.cfi_def_cfa_offset 48
	stp	x22, x21, [sp, #16]             // 16-byte Folded Spill
	stp	x20, x19, [sp, #32]             // 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 48
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w30, -40
	.cfi_offset w29, -48
	mov	w19, w2
	mov	w21, w1
	mov	x20, x0
.LBB2_2:                                // =>This Inner Loop Header: Depth=1
	mov	x0, x20
	mov	w1, w21
	mov	w2, w19
	bl	partition
	mov	w22, w0
	sub	w2, w0, #1
	mov	x0, x20
	mov	w1, w21
	bl	quicksort
	add	w21, w22, #1
	cmp	w21, w19
	b.lt	.LBB2_2
// %bb.3:
	.cfi_def_cfa wsp, 48
	ldp	x20, x19, [sp, #32]             // 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #48             // 16-byte Folded Reload
	.cfi_def_cfa_offset 0
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w30
	.cfi_restore w29
.LBB2_4:
	ret
.Lfunc_end2:
	.size	quicksort, .Lfunc_end2-quicksort
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
