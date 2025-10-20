	.text
	.file	"base64_no_padding.c"
	.globl	base64_encode_no_padding        // -- Begin function base64_encode_no_padding
	.p2align	2
	.type	base64_encode_no_padding,@function
base64_encode_no_padding:               // @base64_encode_no_padding
	.cfi_startproc
// %bb.0:
	cbz	x1, .LBB0_11
// %bb.1:
	mov	x8, xzr
	mov	x10, xzr
	adrp	x9, b64
	add	x9, x9, :lo12:b64
.LBB0_2:                                // =>This Inner Loop Header: Depth=1
	ldrb	w11, [x0, x8]
	add	x13, x8, #1
	cmp	x13, x1
	lsl	w11, w11, #16
	b.hs	.LBB0_4
// %bb.3:                               //   in Loop: Header=BB0_2 Depth=1
	add	x12, x0, x8
	ldrb	w12, [x12, #1]
	orr	w11, w11, w12, lsl #8
.LBB0_4:                                //   in Loop: Header=BB0_2 Depth=1
	add	x12, x8, #2
	cmp	x12, x1
	b.hs	.LBB0_6
// %bb.5:                               //   in Loop: Header=BB0_2 Depth=1
	add	x14, x0, x8
	ldrb	w14, [x14, #2]
	orr	w11, w11, w14
.LBB0_6:                                //   in Loop: Header=BB0_2 Depth=1
	mov	w14, w11
	add	x15, x2, x10
	ubfx	x16, x11, #12, #6
	lsr	x14, x14, #18
	cmp	x13, x1
	add	x13, x10, #2
	ldrb	w14, [x9, x14]
	strb	w14, [x15]
	ldrb	w14, [x9, x16]
	strb	w14, [x15, #1]
	b.hs	.LBB0_8
// %bb.7:                               //   in Loop: Header=BB0_2 Depth=1
	mov	w14, w11
	add	x10, x10, #3
	ubfx	x14, x14, #6, #6
	ldrb	w14, [x9, x14]
	strb	w14, [x2, x13]
	mov	x13, x10
.LBB0_8:                                //   in Loop: Header=BB0_2 Depth=1
	cmp	x12, x1
	b.hs	.LBB0_10
// %bb.9:                               //   in Loop: Header=BB0_2 Depth=1
                                        // kill: def $w11 killed $w11 killed $x11 def $x11
	and	x10, x11, #0x3f
	ldrb	w10, [x9, x10]
	add	x11, x13, #1
	strb	w10, [x2, x13]
	mov	x13, x11
.LBB0_10:                               //   in Loop: Header=BB0_2 Depth=1
	add	x8, x8, #3
	mov	x10, x13
	cmp	x8, x1
	b.lo	.LBB0_2
	b	.LBB0_12
.LBB0_11:
	mov	x13, xzr
.LBB0_12:
	strb	wzr, [x2, x13]
	ret
.Lfunc_end0:
	.size	base64_encode_no_padding, .Lfunc_end0-base64_encode_no_padding
	.cfi_endproc
                                        // -- End function
	.type	b64,@object                     // @b64
	.section	.rodata.str1.1,"aMS",@progbits,1
b64:
	.asciz	"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
	.size	b64, 65

	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
