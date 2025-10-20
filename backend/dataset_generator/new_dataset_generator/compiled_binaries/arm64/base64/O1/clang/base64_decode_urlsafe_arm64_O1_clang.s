	.text
	.file	"base64_decode_urlsafe.c"
	.globl	base64_url_char_value           // -- Begin function base64_url_char_value
	.p2align	2
	.type	base64_url_char_value,@function
base64_url_char_value:                  // @base64_url_char_value
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
	cmp	w8, #95
	mov	w9, #63                         // =0x3f
	csinv	w9, w9, wzr, eq
	cmp	w8, #45
	mov	w8, #62                         // =0x3e
	csel	w0, w8, w9, eq
	ret
.Lfunc_end0:
	.size	base64_url_char_value, .Lfunc_end0-base64_url_char_value
	.cfi_endproc
                                        // -- End function
	.globl	base64_decode_urlsafe           // -- Begin function base64_decode_urlsafe
	.p2align	2
	.type	base64_decode_urlsafe,@function
base64_decode_urlsafe:                  // @base64_decode_urlsafe
	.cfi_startproc
// %bb.0:
	ldrb	w11, [x0]
	cbz	w11, .LBB1_9
// %bb.1:
	add	x8, x0, #1
	mov	w9, #63                         // =0x3f
	mov	w10, #62                        // =0x3e
	b	.LBB1_4
.LBB1_2:                                //   in Loop: Header=BB1_4 Depth=1
	sub	w12, w11, #71
.LBB1_3:                                //   in Loop: Header=BB1_4 Depth=1
	strb	w12, [x1], #1
	ldrb	w11, [x8], #1
	cbz	w11, .LBB1_9
.LBB1_4:                                // =>This Inner Loop Header: Depth=1
	sub	w12, w11, #65
	and	w13, w12, #0xff
	cmp	w13, #25
	b.ls	.LBB1_3
// %bb.5:                               //   in Loop: Header=BB1_4 Depth=1
	sub	w12, w11, #97
	and	w12, w12, #0xff
	cmp	w12, #25
	b.ls	.LBB1_2
// %bb.6:                               //   in Loop: Header=BB1_4 Depth=1
	sub	w12, w11, #48
	and	w12, w12, #0xff
	cmp	w12, #9
	b.hi	.LBB1_8
// %bb.7:                               //   in Loop: Header=BB1_4 Depth=1
	add	w12, w11, #4
	b	.LBB1_3
.LBB1_8:                                //   in Loop: Header=BB1_4 Depth=1
	and	w11, w11, #0xff
	cmp	w11, #95
	csinv	w12, w9, wzr, eq
	cmp	w11, #45
	csel	w12, w10, w12, eq
	b	.LBB1_3
.LBB1_9:
	ret
.Lfunc_end1:
	.size	base64_decode_urlsafe, .Lfunc_end1-base64_decode_urlsafe
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
