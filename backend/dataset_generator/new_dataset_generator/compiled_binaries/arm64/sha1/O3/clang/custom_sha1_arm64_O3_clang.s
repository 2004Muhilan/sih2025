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
	ldp	w15, w17, [x1]
	ldp	w18, w2, [x1, #8]
	ldp	w10, w11, [x0]
	rev	w15, w15
	rev	w17, w17
	mov	x16, xzr
	stp	w15, w17, [sp]
	rev	w15, w18
	rev	w18, w2
	ldp	w17, w2, [x1, #16]
	stp	w15, w18, [sp, #8]
	mov	w14, w10
	mov	w12, w11
	ldp	w9, w8, [x0, #8]
	rev	w15, w17
	rev	w18, w2
	ldp	w17, w2, [x1, #24]
	stp	w15, w18, [sp, #16]
	mov	w13, w9
	mov	w6, w8
	rev	w15, w17
	rev	w18, w2
	ldp	w17, w2, [x1, #32]
	stp	w15, w18, [sp, #24]
	rev	w15, w17
	rev	w18, w2
	ldp	w17, w2, [x1, #40]
	stp	w15, w18, [sp, #32]
	rev	w15, w17
	rev	w18, w2
	ldp	w17, w2, [x1, #48]
	stp	w15, w18, [sp, #40]
	rev	w15, w17
	rev	w18, w2
	ldp	w17, w1, [x1, #56]
	stp	w15, w18, [sp, #48]
	ldr	w15, [x0, #16]
	rev	w17, w17
	rev	w18, w1
	stp	w17, w18, [sp, #56]
	mov	w17, w15
	mov	x18, sp
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	add	x1, x18, x16
	add	x16, x16, #4
	ldr	w2, [x1, #52]
	ldr	w3, [x1, #32]
	ldr	w4, [x1, #8]
	ldr	w5, [x1]
	cmp	x16, #256
	eor	w2, w3, w2
	eor	w3, w4, w5
	eor	w2, w2, w3
	ror	w2, w2, #31
	str	w2, [x1, #64]
	b.ne	.LBB0_1
// %bb.2:
	mov	w1, #49622                      // =0xc1d6
	mov	w2, #48348                      // =0xbcdc
	mov	x16, xzr
	mov	x18, sp
	movk	w1, #51810, lsl #16
	movk	w2, #36635, lsl #16
	b	.LBB0_5
.LBB0_3:                                //   in Loop: Header=BB0_5 Depth=1
	and	w13, w4, w5
	bic	w14, w3, w5
	orr	w13, w14, w13
	mov	w14, #31129                     // =0x7999
	movk	w14, #23170, lsl #16
.LBB0_4:                                //   in Loop: Header=BB0_5 Depth=1
	ror	w6, w12, #27
	ldr	w7, [x18, x16, lsl #2]
	add	w13, w17, w13
	add	x16, x16, #1
	mov	w17, w3
	add	w14, w6, w14
	cmp	x16, #80
	mov	w6, w4
	add	w14, w14, w13
	ror	w13, w5, #2
	add	w14, w14, w7
	b.eq	.LBB0_9
.LBB0_5:                                // =>This Inner Loop Header: Depth=1
	mov	w5, w12
	cmp	x16, #19
	mov	w4, w13
	mov	w3, w6
	mov	w12, w14
	b.ls	.LBB0_3
// %bb.6:                               //   in Loop: Header=BB0_5 Depth=1
	cmp	x16, #39
	b.hi	.LBB0_8
// %bb.7:                               //   in Loop: Header=BB0_5 Depth=1
	eor	w13, w4, w5
	mov	w14, #60321                     // =0xeba1
	eor	w13, w13, w3
	movk	w14, #28377, lsl #16
	b	.LBB0_4
.LBB0_8:                                //   in Loop: Header=BB0_5 Depth=1
	orr	w13, w3, w4
	eor	w14, w4, w5
	and	w6, w3, w4
	and	w13, w13, w5
	cmp	x16, #59
	eor	w14, w14, w3
	orr	w13, w13, w6
	csel	w13, w14, w13, hi
	csel	w14, w1, w2, hi
	b	.LBB0_4
.LBB0_9:
	add	w9, w13, w9
	add	w8, w4, w8
	add	w10, w14, w10
	add	w11, w12, w11
	stp	w9, w8, [x0, #8]
	add	w8, w3, w15
	ldr	x29, [sp, #320]                 // 8-byte Folded Reload
	stp	w10, w11, [x0]
	str	w8, [x0, #16]
	add	sp, sp, #336
	.cfi_def_cfa_offset 0
	.cfi_restore w29
	ret
.Lfunc_end0:
	.size	sha1_transform, .Lfunc_end0-sha1_transform
	.cfi_endproc
                                        // -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          // -- Begin function sha1_init
.LCPI1_0:
	.word	1732584193                      // 0x67452301
	.word	4023233417                      // 0xefcdab89
	.word	2562383102                      // 0x98badcfe
	.word	271733878                       // 0x10325476
	.text
	.globl	sha1_init
	.p2align	2
	.type	sha1_init,@function
sha1_init:                              // @sha1_init
	.cfi_startproc
// %bb.0:
	adrp	x8, .LCPI1_0
	ldr	q0, [x8, :lo12:.LCPI1_0]
	mov	w8, #57840                      // =0xe1f0
	movk	w8, #50130, lsl #16
	str	q0, [x0]
	str	w8, [x0, #16]
	ret
.Lfunc_end1:
	.size	sha1_init, .Lfunc_end1-sha1_init
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
