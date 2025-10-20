	.text
	.file	"custom_sha1.c"
	.globl	sha1_transform                  // -- Begin function sha1_transform
	.p2align	2
	.type	sha1_transform,@function
sha1_transform:                         // @sha1_transform
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #336
	.cfi_def_cfa_offset 336
	str	x29, [sp, #320]                 // 8-byte Folded Spill
	.cfi_offset w29, -16
	ldp	w11, w12, [x0]
	ldp	w10, w9, [x0, #8]
	ldr	w8, [x0, #16]
	mov	x15, xzr
	mov	x16, sp
	mov	w3, w11
	mov	w13, w12
	mov	w2, w10
	mov	w5, w9
	mov	w14, w8
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w17, [x1, x15]
	rev	w17, w17
	str	w17, [x16, x15]
	add	x15, x15, #4
	cmp	x15, #64
	b.ne	.LBB0_1
// %bb.2:
	mov	x15, xzr
	mov	x16, sp
.LBB0_3:                                // =>This Inner Loop Header: Depth=1
	add	x17, x16, x15
	add	x15, x15, #4
	ldr	w18, [x17, #52]
	ldr	w1, [x17, #32]
	ldr	w4, [x17, #8]
	ldr	w6, [x17]
	cmp	x15, #256
	eor	w18, w1, w18
	eor	w1, w4, w6
	eor	w18, w18, w1
	ror	w18, w18, #31
	str	w18, [x17, #64]
	b.ne	.LBB0_3
// %bb.4:
	mov	w17, #49622                     // =0xc1d6
	mov	w18, #48348                     // =0xbcdc
	mov	x15, xzr
	mov	x16, sp
	movk	w17, #51810, lsl #16
	movk	w18, #36635, lsl #16
	b	.LBB0_7
.LBB0_5:                                //   in Loop: Header=BB0_7 Depth=1
	and	w2, w4, w6
	bic	w3, w1, w6
	orr	w2, w3, w2
	mov	w3, #31129                      // =0x7999
	movk	w3, #23170, lsl #16
.LBB0_6:                                //   in Loop: Header=BB0_7 Depth=1
	ror	w5, w13, #27
	ldr	w7, [x16, x15, lsl #2]
	add	w14, w14, w2
	add	x15, x15, #1
	add	w2, w5, w3
	cmp	x15, #80
	mov	w5, w4
	add	w14, w2, w14
	ror	w2, w6, #2
	add	w3, w14, w7
	mov	w14, w1
	b.eq	.LBB0_11
.LBB0_7:                                // =>This Inner Loop Header: Depth=1
	mov	w6, w13
	cmp	x15, #19
	mov	w4, w2
	mov	w1, w5
	mov	w13, w3
	b.ls	.LBB0_5
// %bb.8:                               //   in Loop: Header=BB0_7 Depth=1
	cmp	x15, #39
	b.hi	.LBB0_10
// %bb.9:                               //   in Loop: Header=BB0_7 Depth=1
	eor	w2, w4, w6
	mov	w3, #60321                      // =0xeba1
	eor	w2, w2, w1
	movk	w3, #28377, lsl #16
	b	.LBB0_6
.LBB0_10:                               //   in Loop: Header=BB0_7 Depth=1
	orr	w2, w1, w4
	eor	w3, w4, w6
	and	w5, w1, w4
	and	w2, w2, w6
	cmp	x15, #59
	eor	w3, w3, w1
	orr	w2, w2, w5
	csel	w2, w3, w2, hi
	csel	w3, w17, w18, hi
	b	.LBB0_6
.LBB0_11:
	add	w11, w3, w11
	add	w12, w13, w12
	add	w10, w2, w10
	add	w9, w4, w9
	add	w8, w1, w8
	ldr	x29, [sp, #320]                 // 8-byte Folded Reload
	stp	w11, w12, [x0]
	stp	w10, w9, [x0, #8]
	str	w8, [x0, #16]
	add	sp, sp, #336
	.cfi_def_cfa_offset 0
	.cfi_restore w29
	ret
.Lfunc_end0:
	.size	sha1_transform, .Lfunc_end0-sha1_transform
	.cfi_endproc
                                        // -- End function
	.globl	sha1_init                       // -- Begin function sha1_init
	.p2align	2
	.type	sha1_init,@function
sha1_init:                              // @sha1_init
	.cfi_startproc
// %bb.0:
	mov	x8, #8961                       // =0x2301
	mov	x9, #56574                      // =0xdcfe
	movk	x8, #26437, lsl #16
	movk	x9, #39098, lsl #16
	movk	x8, #43913, lsl #32
	movk	x9, #21622, lsl #32
	movk	x8, #61389, lsl #48
	movk	x9, #4146, lsl #48
	stp	x8, x9, [x0]
	mov	w8, #57840                      // =0xe1f0
	movk	w8, #50130, lsl #16
	str	w8, [x0, #16]
	ret
.Lfunc_end1:
	.size	sha1_init, .Lfunc_end1-sha1_init
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
