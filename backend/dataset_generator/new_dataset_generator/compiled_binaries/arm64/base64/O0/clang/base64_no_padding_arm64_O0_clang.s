	.text
	.file	"base64_no_padding.c"
	.globl	base64_encode_no_padding        // -- Begin function base64_encode_no_padding
	.p2align	2
	.type	base64_encode_no_padding,@function
base64_encode_no_padding:               // @base64_encode_no_padding
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, #40]
	str	x1, [sp, #32]
	str	x2, [sp, #24]
	str	xzr, [sp, #16]
	str	xzr, [sp, #8]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #32]
	subs	x8, x8, x9
	b.hs	.LBB0_12
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #40]
	ldr	x9, [sp, #8]
	ldrb	w8, [x8, x9]
	lsl	w8, w8, #16
	str	w8, [sp, #4]
	ldr	x8, [sp, #8]
	add	x8, x8, #1
	ldr	x9, [sp, #32]
	subs	x8, x8, x9
	b.hs	.LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #40]
	ldr	x9, [sp, #8]
	add	x9, x9, #1
	ldrb	w9, [x8, x9]
	ldr	w8, [sp, #4]
	orr	w8, w8, w9, lsl #8
	str	w8, [sp, #4]
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	add	x8, x8, #2
	ldr	x9, [sp, #32]
	subs	x8, x8, x9
	b.hs	.LBB0_6
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #40]
	ldr	x9, [sp, #8]
	add	x9, x9, #2
	ldrb	w9, [x8, x9]
	ldr	w8, [sp, #4]
	orr	w8, w8, w9
	str	w8, [sp, #4]
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #4]
	lsr	w8, w8, #18
	and	w8, w8, #0x3f
	mov	w8, w8
	mov	w10, w8
	adrp	x8, b64
	add	x8, x8, :lo12:b64
	mov	x9, x8
	add	x9, x9, x10
	ldrb	w9, [x9]
	ldr	x10, [sp, #24]
	ldr	x11, [sp, #16]
	add	x12, x11, #1
	str	x12, [sp, #16]
	add	x10, x10, x11
	strb	w9, [x10]
	ldr	w9, [sp, #4]
	lsr	w9, w9, #12
	and	w9, w9, #0x3f
	mov	w9, w9
                                        // kill: def $x9 killed $w9
	add	x8, x8, x9
	ldrb	w8, [x8]
	ldr	x9, [sp, #24]
	ldr	x10, [sp, #16]
	add	x11, x10, #1
	str	x11, [sp, #16]
	add	x9, x9, x10
	strb	w8, [x9]
	ldr	x8, [sp, #8]
	add	x8, x8, #1
	ldr	x9, [sp, #32]
	subs	x8, x8, x9
	b.hs	.LBB0_8
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #4]
	lsr	w8, w8, #6
	and	w8, w8, #0x3f
	mov	w8, w8
	mov	w9, w8
	adrp	x8, b64
	add	x8, x8, :lo12:b64
	add	x8, x8, x9
	ldrb	w8, [x8]
	ldr	x9, [sp, #24]
	ldr	x10, [sp, #16]
	add	x11, x10, #1
	str	x11, [sp, #16]
	add	x9, x9, x10
	strb	w8, [x9]
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	add	x8, x8, #2
	ldr	x9, [sp, #32]
	subs	x8, x8, x9
	b.hs	.LBB0_10
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #4]
	and	w8, w8, #0x3f
	mov	w8, w8
	mov	w9, w8
	adrp	x8, b64
	add	x8, x8, :lo12:b64
	add	x8, x8, x9
	ldrb	w8, [x8]
	ldr	x9, [sp, #24]
	ldr	x10, [sp, #16]
	add	x11, x10, #1
	str	x11, [sp, #16]
	add	x9, x9, x10
	strb	w8, [x9]
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	add	x8, x8, #3
	str	x8, [sp, #8]
	b	.LBB0_1
.LBB0_12:
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #16]
	add	x8, x8, x9
	strb	wzr, [x8]
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end0:
	.size	base64_encode_no_padding, .Lfunc_end0-base64_encode_no_padding
	.cfi_endproc
                                        // -- End function
	.type	b64,@object                     // @b64
	.section	.rodata,"a",@progbits
b64:
	.asciz	"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
	.size	b64, 65

	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym b64
