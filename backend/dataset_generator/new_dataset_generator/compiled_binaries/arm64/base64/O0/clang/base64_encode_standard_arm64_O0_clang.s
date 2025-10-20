	.text
	.file	"base64_encode_standard.c"
	.globl	base64_encode_standard          // -- Begin function base64_encode_standard
	.p2align	2
	.type	base64_encode_standard,@function
base64_encode_standard:                 // @base64_encode_standard
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	str	x0, [sp, #72]
	str	x1, [sp, #64]
	str	x2, [sp, #56]
	str	xzr, [sp, #48]
	str	xzr, [sp, #40]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #48]
	ldr	x9, [sp, #64]
	subs	x8, x8, x9
	b.hs	.LBB0_12
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #48]
	ldr	x9, [sp, #64]
	subs	x8, x8, x9
	b.hs	.LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #72]
	ldr	x9, [sp, #48]
	add	x10, x9, #1
	str	x10, [sp, #48]
	ldrb	w8, [x8, x9]
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	b	.LBB0_5
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	mov	w8, wzr
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #20]                   // 4-byte Folded Reload
	str	w8, [sp, #36]
	ldr	x8, [sp, #48]
	ldr	x9, [sp, #64]
	subs	x8, x8, x9
	b.hs	.LBB0_7
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #72]
	ldr	x9, [sp, #48]
	add	x10, x9, #1
	str	x10, [sp, #48]
	ldrb	w8, [x8, x9]
	str	w8, [sp, #16]                   // 4-byte Folded Spill
	b	.LBB0_8
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	mov	w8, wzr
	str	w8, [sp, #16]                   // 4-byte Folded Spill
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #16]                   // 4-byte Folded Reload
	str	w8, [sp, #32]
	ldr	x8, [sp, #48]
	ldr	x9, [sp, #64]
	subs	x8, x8, x9
	b.hs	.LBB0_10
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #72]
	ldr	x9, [sp, #48]
	add	x10, x9, #1
	str	x10, [sp, #48]
	ldrb	w8, [x8, x9]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB0_11
.LBB0_10:                               //   in Loop: Header=BB0_1 Depth=1
	mov	w8, wzr
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	str	w8, [sp, #28]
	ldr	w9, [sp, #36]
	ldr	w8, [sp, #32]
	lsl	w8, w8, #8
	add	w8, w8, w9, lsl #16
	ldr	w9, [sp, #28]
	add	w8, w8, w9
	str	w8, [sp, #24]
	ldr	w8, [sp, #24]
	lsr	w8, w8, #18
	and	w8, w8, #0x3f
	mov	w8, w8
	mov	w10, w8
	adrp	x8, b64
	add	x8, x8, :lo12:b64
	mov	x9, x8
	add	x9, x9, x10
	ldrb	w9, [x9]
	ldr	x10, [sp, #56]
	ldr	x11, [sp, #40]
	add	x12, x11, #1
	str	x12, [sp, #40]
	add	x10, x10, x11
	strb	w9, [x10]
	ldr	w9, [sp, #24]
	lsr	w9, w9, #12
	and	w9, w9, #0x3f
	mov	w9, w9
	mov	w10, w9
	mov	x9, x8
	add	x9, x9, x10
	ldrb	w9, [x9]
	ldr	x10, [sp, #56]
	ldr	x11, [sp, #40]
	add	x12, x11, #1
	str	x12, [sp, #40]
	add	x10, x10, x11
	strb	w9, [x10]
	ldr	w9, [sp, #24]
	lsr	w9, w9, #6
	and	w9, w9, #0x3f
	mov	w9, w9
	mov	w10, w9
	mov	x9, x8
	add	x9, x9, x10
	ldrb	w9, [x9]
	ldr	x10, [sp, #56]
	ldr	x11, [sp, #40]
	add	x12, x11, #1
	str	x12, [sp, #40]
	add	x10, x10, x11
	strb	w9, [x10]
	ldr	w9, [sp, #24]
	and	w9, w9, #0x3f
	mov	w9, w9
                                        // kill: def $x9 killed $w9
	add	x8, x8, x9
	ldrb	w8, [x8]
	ldr	x9, [sp, #56]
	ldr	x10, [sp, #40]
	add	x11, x10, #1
	str	x11, [sp, #40]
	add	x9, x9, x10
	strb	w8, [x9]
	b	.LBB0_1
.LBB0_12:
	add	sp, sp, #80
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end0:
	.size	base64_encode_standard, .Lfunc_end0-base64_encode_standard
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
