	.text
	.file	"base64_decode_standard.c"
	.globl	base64_char_value               // -- Begin function base64_char_value
	.p2align	2
	.type	base64_char_value,@function
base64_char_value:                      // @base64_char_value
	.cfi_startproc
// %bb.0:
	and	w8, w0, #0xff
	sub	w0, w8, #65
	cmp	w0, #25
	b.hi	.LBB0_2
// %bb.1:
	ret
.LBB0_2:
	sub	w9, w8, #97
	cmp	w9, #25
	b.hi	.LBB0_4
// %bb.3:
	sub	w0, w8, #71
	ret
.LBB0_4:
	sub	w9, w8, #48
	cmp	w9, #9
	b.hi	.LBB0_6
// %bb.5:
	add	w0, w8, #4
	ret
.LBB0_6:
	cmp	w8, #47
	mov	w9, #63                         // =0x3f
	csinv	w9, w9, wzr, eq
	cmp	w8, #43
	mov	w8, #62                         // =0x3e
	csel	w0, w8, w9, eq
	ret
.Lfunc_end0:
	.size	base64_char_value, .Lfunc_end0-base64_char_value
	.cfi_endproc
                                        // -- End function
	.globl	base64_decode_standard          // -- Begin function base64_decode_standard
	.p2align	2
	.type	base64_decode_standard,@function
base64_decode_standard:                 // @base64_decode_standard
	.cfi_startproc
// %bb.0:
	stp	x29, x30, [sp, #-80]!           // 16-byte Folded Spill
	.cfi_def_cfa_offset 80
	str	x25, [sp, #16]                  // 8-byte Folded Spill
	stp	x24, x23, [sp, #32]             // 16-byte Folded Spill
	stp	x22, x21, [sp, #48]             // 16-byte Folded Spill
	stp	x20, x19, [sp, #64]             // 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 80
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w23, -40
	.cfi_offset w24, -48
	.cfi_offset w25, -64
	.cfi_offset w30, -72
	.cfi_offset w29, -80
	mov	x19, x2
	mov	x20, x1
	mov	x21, x0
	mov	x22, xzr
	mov	x23, x0
	str	xzr, [x2]
.LBB1_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB1_4 Depth 2
	ldrb	w8, [x21, x22]
	cbz	w8, .LBB1_6
// %bb.2:                               //   in Loop: Header=BB1_1 Depth=1
	cmp	w8, #61
	b.eq	.LBB1_6
// %bb.3:                               //   in Loop: Header=BB1_1 Depth=1
	mov	x25, xzr
	mov	w24, wzr
.LBB1_4:                                //   Parent Loop BB1_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldrb	w0, [x23, x25]
	bl	base64_char_value
	add	x25, x25, #1
	orr	w24, w0, w24, lsl #6
	cmp	x25, #4
	b.ne	.LBB1_4
// %bb.5:                               //   in Loop: Header=BB1_1 Depth=1
	ldr	x8, [x19]
	lsr	w10, w24, #16
	add	x22, x22, #4
	add	x23, x23, #4
	add	x9, x8, #1
	str	x9, [x19]
	strb	w10, [x20, x8]
	lsr	w10, w24, #8
	ldr	x8, [x19]
	add	x9, x8, #1
	str	x9, [x19]
	strb	w10, [x20, x8]
	ldr	x8, [x19]
	add	x9, x8, #1
	str	x9, [x19]
	strb	w24, [x20, x8]
	b	.LBB1_1
.LBB1_6:
	.cfi_def_cfa wsp, 80
	ldp	x20, x19, [sp, #64]             // 16-byte Folded Reload
	ldr	x25, [sp, #16]                  // 8-byte Folded Reload
	ldp	x22, x21, [sp, #48]             // 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #80             // 16-byte Folded Reload
	.cfi_def_cfa_offset 0
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w23
	.cfi_restore w24
	.cfi_restore w25
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end1:
	.size	base64_decode_standard, .Lfunc_end1-base64_decode_standard
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
