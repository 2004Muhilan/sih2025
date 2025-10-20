	.text
	.file	"base64_encode_urlsafe.c"
	.globl	base64_encode_urlsafe           // -- Begin function base64_encode_urlsafe
	.p2align	2
	.type	base64_encode_urlsafe,@function
base64_encode_urlsafe:                  // @base64_encode_urlsafe
	.cfi_startproc
// %bb.0:
	cbz	x1, .LBB0_8
// %bb.1:
	mov	x11, xzr
	add	x8, x2, #3
	adrp	x9, b64url
	add	x9, x9, :lo12:b64url
	b	.LBB0_4
.LBB0_2:                                //   in Loop: Header=BB0_4 Depth=1
	ldrb	w13, [x0, x10]
	add	x10, x10, #1
.LBB0_3:                                //   in Loop: Header=BB0_4 Depth=1
	ldrb	w11, [x0, x11]
	mov	w15, w13
	cmp	x10, x1
	bfi	w15, w12, #8, #8
	lsl	w14, w11, #16
	lsr	x11, x11, #2
	orr	w14, w14, w12, lsl #8
	ldrb	w11, [x9, x11]
	ubfx	x12, x15, #6, #6
	ubfx	x14, x14, #12, #6
	sturb	w11, [x8, #-3]
	ldrb	w11, [x9, x14]
	sturb	w11, [x8, #-2]
	ldrb	w11, [x9, x12]
	sturb	w11, [x8, #-1]
	and	x11, x13, #0x3f
	ldrb	w11, [x9, x11]
	strb	w11, [x8], #4
	mov	x11, x10
	b.hs	.LBB0_8
.LBB0_4:                                // =>This Inner Loop Header: Depth=1
	add	x10, x11, #1
	cmp	x10, x1
	b.hs	.LBB0_6
// %bb.5:                               //   in Loop: Header=BB0_4 Depth=1
	ldrb	w12, [x0, x10]
	add	x10, x11, #2
	cmp	x10, x1
	b.lo	.LBB0_2
	b	.LBB0_7
.LBB0_6:                                //   in Loop: Header=BB0_4 Depth=1
	mov	w12, wzr
	cmp	x10, x1
	b.lo	.LBB0_2
.LBB0_7:                                //   in Loop: Header=BB0_4 Depth=1
	mov	w13, wzr
	b	.LBB0_3
.LBB0_8:
	ret
.Lfunc_end0:
	.size	base64_encode_urlsafe, .Lfunc_end0-base64_encode_urlsafe
	.cfi_endproc
                                        // -- End function
	.type	b64url,@object                  // @b64url
	.section	.rodata.str1.1,"aMS",@progbits,1
b64url:
	.asciz	"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"
	.size	b64url, 65

	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
