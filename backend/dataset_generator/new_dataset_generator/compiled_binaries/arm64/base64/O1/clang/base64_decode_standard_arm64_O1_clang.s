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
	mov	x8, xzr
	mov	w9, #63                         // =0x3f
	mov	w10, #62                        // =0x3e
	mov	x11, x0
	str	xzr, [x2]
	ldrb	w12, [x0, x8]
	cbz	w12, .LBB1_5
.LBB1_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB1_3 Depth 2
	cmp	w12, #61
	b.eq	.LBB1_5
// %bb.2:                               //   in Loop: Header=BB1_1 Depth=1
	mov	x12, xzr
	mov	w13, wzr
.LBB1_3:                                //   Parent Loop BB1_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldrb	w14, [x11, x12]
	lsl	w13, w13, #6
	add	x12, x12, #1
	cmp	w14, #47
	sub	w17, w14, #48
	sub	w16, w14, #97
	csinv	w18, w9, wzr, eq
	cmp	w14, #43
	add	w3, w14, #4
	csel	w18, w10, w18, eq
	cmp	w17, #9
	sub	w15, w14, #65
	csel	w17, w18, w3, hi
	sub	w14, w14, #71
	cmp	w16, #25
	csel	w14, w17, w14, hi
	cmp	w15, #25
	csel	w14, w14, w15, hi
	cmp	x12, #4
	orr	w13, w14, w13
	b.ne	.LBB1_3
// %bb.4:                               //   in Loop: Header=BB1_1 Depth=1
	ldr	x12, [x2]
	lsr	w15, w13, #16
	add	x8, x8, #4
	add	x11, x11, #4
	add	x14, x12, #1
	str	x14, [x2]
	strb	w15, [x1, x12]
	lsr	w15, w13, #8
	ldr	x12, [x2]
	add	x14, x12, #1
	str	x14, [x2]
	strb	w15, [x1, x12]
	ldr	x12, [x2]
	add	x14, x12, #1
	str	x14, [x2]
	strb	w13, [x1, x12]
	ldrb	w12, [x0, x8]
	cbnz	w12, .LBB1_1
.LBB1_5:
	ret
.Lfunc_end1:
	.size	base64_decode_standard, .Lfunc_end1-base64_decode_standard
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
