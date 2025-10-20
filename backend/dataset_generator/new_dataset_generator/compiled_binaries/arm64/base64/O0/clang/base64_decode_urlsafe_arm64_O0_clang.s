	.text
	.file	"base64_decode_urlsafe.c"
	.globl	base64_url_char_value           // -- Begin function base64_url_char_value
	.p2align	2
	.type	base64_url_char_value,@function
base64_url_char_value:                  // @base64_url_char_value
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	strb	w0, [sp, #11]
	ldrb	w8, [sp, #11]
	subs	w8, w8, #65
	b.lt	.LBB0_3
	b	.LBB0_1
.LBB0_1:
	ldrb	w8, [sp, #11]
	subs	w8, w8, #90
	b.gt	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldrb	w8, [sp, #11]
	subs	w8, w8, #65
	str	w8, [sp, #12]
	b	.LBB0_14
.LBB0_3:
	ldrb	w8, [sp, #11]
	subs	w8, w8, #97
	b.lt	.LBB0_6
	b	.LBB0_4
.LBB0_4:
	ldrb	w8, [sp, #11]
	subs	w8, w8, #122
	b.gt	.LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldrb	w8, [sp, #11]
	subs	w8, w8, #97
	add	w8, w8, #26
	str	w8, [sp, #12]
	b	.LBB0_14
.LBB0_6:
	ldrb	w8, [sp, #11]
	subs	w8, w8, #48
	b.lt	.LBB0_9
	b	.LBB0_7
.LBB0_7:
	ldrb	w8, [sp, #11]
	subs	w8, w8, #57
	b.gt	.LBB0_9
	b	.LBB0_8
.LBB0_8:
	ldrb	w8, [sp, #11]
	subs	w8, w8, #48
	add	w8, w8, #52
	str	w8, [sp, #12]
	b	.LBB0_14
.LBB0_9:
	ldrb	w8, [sp, #11]
	subs	w8, w8, #45
	b.ne	.LBB0_11
	b	.LBB0_10
.LBB0_10:
	mov	w8, #62                         // =0x3e
	str	w8, [sp, #12]
	b	.LBB0_14
.LBB0_11:
	ldrb	w8, [sp, #11]
	subs	w8, w8, #95
	b.ne	.LBB0_13
	b	.LBB0_12
.LBB0_12:
	mov	w8, #63                         // =0x3f
	str	w8, [sp, #12]
	b	.LBB0_14
.LBB0_13:
	mov	w8, #-1                         // =0xffffffff
	str	w8, [sp, #12]
	b	.LBB0_14
.LBB0_14:
	ldr	w0, [sp, #12]
	add	sp, sp, #16
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	xzr, [sp, #8]
	b	.LBB1_1
.LBB1_1:                                // =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-8]
	ldr	x9, [sp, #8]
	add	x8, x8, x9
	ldrb	w8, [x8]
	cbz	w8, .LBB1_4
	b	.LBB1_2
.LBB1_2:                                //   in Loop: Header=BB1_1 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x9, [sp, #8]
	ldrb	w0, [x8, x9]
	bl	base64_url_char_value
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #8]
	strb	w0, [x8, x9]
	b	.LBB1_3
.LBB1_3:                                //   in Loop: Header=BB1_1 Depth=1
	ldr	x8, [sp, #8]
	add	x8, x8, #1
	str	x8, [sp, #8]
	b	.LBB1_1
.LBB1_4:
	.cfi_def_cfa wsp, 48
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end1:
	.size	base64_decode_urlsafe, .Lfunc_end1-base64_decode_urlsafe
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym base64_url_char_value
