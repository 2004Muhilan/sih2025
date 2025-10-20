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
	add	x8, x0, #3
	mov	w9, #63                         // =0x3f
	mov	w10, #62                        // =0x3e
	str	xzr, [x2]
	b	.LBB1_3
.LBB1_1:                                //   in Loop: Header=BB1_3 Depth=1
	sub	w14, w15, #71
.LBB1_2:                                //   in Loop: Header=BB1_3 Depth=1
	lsl	w11, w11, #12
	add	x8, x8, #4
	orr	w11, w11, w12, lsl #6
	ldr	x12, [x2]
	orr	w11, w13, w11
	add	x13, x12, #1
	lsl	w11, w11, #6
	str	x13, [x2]
	orr	w11, w14, w11
	lsr	w13, w11, #16
	lsr	w14, w11, #8
	strb	w13, [x1, x12]
	ldr	x12, [x2]
	add	x13, x12, #1
	str	x13, [x2]
	strb	w14, [x1, x12]
	ldr	x12, [x2]
	add	x13, x12, #1
	str	x13, [x2]
	strb	w11, [x1, x12]
.LBB1_3:                                // =>This Inner Loop Header: Depth=1
	ldurb	w11, [x8, #-3]
	cbz	w11, .LBB1_29
// %bb.4:                               //   in Loop: Header=BB1_3 Depth=1
	cmp	w11, #61
	b.eq	.LBB1_29
// %bb.5:                               //   in Loop: Header=BB1_3 Depth=1
	sub	w12, w11, #65
	cmp	w12, #26
	b.hs	.LBB1_7
// %bb.6:                               //   in Loop: Header=BB1_3 Depth=1
	sub	w11, w11, #65
	b	.LBB1_12
.LBB1_7:                                //   in Loop: Header=BB1_3 Depth=1
	sub	w12, w11, #97
	cmp	w12, #25
	b.hi	.LBB1_9
// %bb.8:                               //   in Loop: Header=BB1_3 Depth=1
	sub	w11, w11, #71
	b	.LBB1_12
.LBB1_9:                                //   in Loop: Header=BB1_3 Depth=1
	sub	w12, w11, #48
	cmp	w12, #9
	b.hi	.LBB1_11
// %bb.10:                              //   in Loop: Header=BB1_3 Depth=1
	add	w11, w11, #4
	b	.LBB1_12
.LBB1_11:                               //   in Loop: Header=BB1_3 Depth=1
	cmp	w11, #47
	csinv	w12, w9, wzr, eq
	cmp	w11, #43
	csel	w11, w10, w12, eq
.LBB1_12:                               //   in Loop: Header=BB1_3 Depth=1
	ldurb	w13, [x8, #-2]
	sub	w12, w13, #65
	cmp	w12, #26
	b.lo	.LBB1_18
// %bb.13:                              //   in Loop: Header=BB1_3 Depth=1
	sub	w12, w13, #97
	cmp	w12, #26
	b.hs	.LBB1_15
// %bb.14:                              //   in Loop: Header=BB1_3 Depth=1
	sub	w12, w13, #71
	b	.LBB1_18
.LBB1_15:                               //   in Loop: Header=BB1_3 Depth=1
	sub	w12, w13, #48
	cmp	w12, #10
	b.hs	.LBB1_17
// %bb.16:                              //   in Loop: Header=BB1_3 Depth=1
	add	w12, w13, #4
	b	.LBB1_18
.LBB1_17:                               //   in Loop: Header=BB1_3 Depth=1
	cmp	w13, #47
	csinv	w12, w9, wzr, eq
	cmp	w13, #43
	csel	w12, w10, w12, eq
.LBB1_18:                               //   in Loop: Header=BB1_3 Depth=1
	ldurb	w14, [x8, #-1]
	sub	w13, w14, #65
	cmp	w13, #26
	b.lo	.LBB1_24
// %bb.19:                              //   in Loop: Header=BB1_3 Depth=1
	sub	w13, w14, #97
	cmp	w13, #26
	b.hs	.LBB1_21
// %bb.20:                              //   in Loop: Header=BB1_3 Depth=1
	sub	w13, w14, #71
	b	.LBB1_24
.LBB1_21:                               //   in Loop: Header=BB1_3 Depth=1
	sub	w13, w14, #48
	cmp	w13, #10
	b.hs	.LBB1_23
// %bb.22:                              //   in Loop: Header=BB1_3 Depth=1
	add	w13, w14, #4
	b	.LBB1_24
.LBB1_23:                               //   in Loop: Header=BB1_3 Depth=1
	cmp	w14, #47
	csinv	w13, w9, wzr, eq
	cmp	w14, #43
	csel	w13, w10, w13, eq
.LBB1_24:                               //   in Loop: Header=BB1_3 Depth=1
	ldrb	w15, [x8]
	sub	w14, w15, #65
	cmp	w14, #26
	b.lo	.LBB1_2
// %bb.25:                              //   in Loop: Header=BB1_3 Depth=1
	sub	w14, w15, #97
	cmp	w14, #26
	b.lo	.LBB1_1
// %bb.26:                              //   in Loop: Header=BB1_3 Depth=1
	sub	w14, w15, #48
	cmp	w14, #10
	b.hs	.LBB1_28
// %bb.27:                              //   in Loop: Header=BB1_3 Depth=1
	add	w14, w15, #4
	b	.LBB1_2
.LBB1_28:                               //   in Loop: Header=BB1_3 Depth=1
	cmp	w15, #47
	csinv	w14, w9, wzr, eq
	cmp	w15, #43
	csel	w14, w10, w14, eq
	b	.LBB1_2
.LBB1_29:
	ret
.Lfunc_end1:
	.size	base64_decode_standard, .Lfunc_end1-base64_decode_standard
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
