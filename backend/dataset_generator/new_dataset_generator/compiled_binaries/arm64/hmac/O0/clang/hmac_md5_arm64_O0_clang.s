	.text
	.file	"hmac_md5.c"
	.globl	hmac_md5                        // -- Begin function hmac_md5
	.p2align	2
	.type	hmac_md5,@function
hmac_md5:                               // @hmac_md5
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #208
	.cfi_def_cfa_offset 208
	add	x8, sp, #168
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	str	x0, [x8, #32]
	str	x1, [x8, #24]
	str	x2, [x8, #16]
	str	x3, [x8, #8]
	str	x4, [x8]
	str	xzr, [sp, #32]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #32]
	subs	x8, x8, #64
	b.hs	.LBB0_10
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	ldr	x8, [sp, #32]
	ldr	x9, [x9, #24]
	subs	x8, x8, x9
	b.hs	.LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	x8, [x8, #32]
	ldr	x9, [sp, #32]
	ldrb	w8, [x8, x9]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB0_5
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	mov	w8, wzr
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	mov	w10, #54                        // =0x36
	eor	w8, w8, w10
	ldr	x11, [sp, #32]
	add	x10, sp, #104
	strb	w8, [x10, x11]
	ldr	x8, [sp, #32]
	ldr	x9, [x9, #24]
	subs	x8, x8, x9
	b.hs	.LBB0_7
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	x8, [x8, #32]
	ldr	x9, [sp, #32]
	ldrb	w8, [x8, x9]
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB0_8
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	mov	w8, wzr
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	mov	w9, #92                         // =0x5c
	eor	w8, w8, w9
	ldr	x10, [sp, #32]
	add	x9, sp, #40
	strb	w8, [x9, x10]
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #32]
	add	x8, x8, #1
	str	x8, [sp, #32]
	b	.LBB0_1
.LBB0_10:
	str	wzr, [sp, #28]
	b	.LBB0_11
.LBB0_11:                               // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #28]
	subs	w8, w8, #16
	b.ge	.LBB0_14
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_11 Depth=1
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	ldrsw	x10, [sp, #28]
	add	x8, sp, #104
	ldrb	w8, [x8, x10]
	ldrsw	x11, [sp, #28]
	add	x10, sp, #40
	ldrb	w10, [x10, x11]
	eor	w8, w8, w10
	ldr	x9, [x9]
	ldrsw	x10, [sp, #28]
	strb	w8, [x9, x10]
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_11 Depth=1
	ldr	w8, [sp, #28]
	add	w8, w8, #1
	str	w8, [sp, #28]
	b	.LBB0_11
.LBB0_14:
	add	sp, sp, #208
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end0:
	.size	hmac_md5, .Lfunc_end0-hmac_md5
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
