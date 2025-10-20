	.text
	.file	"sha1_compress.c"
	.globl	sha1_compress                   // -- Begin function sha1_compress
	.p2align	2
	.type	sha1_compress,@function
sha1_compress:                          // @sha1_compress
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #336
	.cfi_def_cfa_offset 336
	str	x29, [sp, #320]                 // 8-byte Folded Spill
	.cfi_offset w29, -16
	ldp	q0, q1, [x1]
	mov	x8, xzr
	mov	x9, sp
	stp	q0, q1, [sp]
	ldp	q0, q2, [x1, #32]
	stp	q0, q2, [sp, #32]
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	add	x10, x9, x8
	add	x8, x8, #4
	ldr	w11, [x10, #52]
	ldr	w12, [x10, #32]
	ldr	w13, [x10, #8]
	ldr	w14, [x10]
	cmp	x8, #256
	eor	w11, w12, w11
	eor	w12, w13, w14
	eor	w11, w11, w12
	ror	w11, w11, #31
	str	w11, [x10, #64]
	b.ne	.LBB0_1
// %bb.2:
	ldp	w10, w9, [x0, #8]
	ldp	w13, w12, [x0]
	ldr	w8, [x0, #16]
	mov	w15, #49622                     // =0xc1d6
	mov	w16, #48348                     // =0xbcdc
	mov	x11, xzr
	mov	x14, sp
	movk	w15, #51810, lsl #16
	movk	w16, #36635, lsl #16
	mov	w3, w8
	mov	w5, w9
	mov	w4, w10
	mov	w2, w12
	mov	w6, w13
.LBB0_3:                                // =>This Inner Loop Header: Depth=1
	cmp	x11, #19
	mov	w1, w6
	mov	w18, w4
	mov	w17, w5
	b.hi	.LBB0_5
// %bb.4:                               //   in Loop: Header=BB0_3 Depth=1
	and	w4, w18, w2
	bic	w5, w17, w2
	orr	w4, w5, w4
	mov	w5, #31129                      // =0x7999
	movk	w5, #23170, lsl #16
	b	.LBB0_8
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=1
	cmp	x11, #39
	b.hi	.LBB0_7
// %bb.6:                               //   in Loop: Header=BB0_3 Depth=1
	eor	w4, w18, w2
	mov	w5, #60321                      // =0xeba1
	eor	w4, w4, w17
	movk	w5, #28377, lsl #16
	b	.LBB0_8
.LBB0_7:                                //   in Loop: Header=BB0_3 Depth=1
	orr	w4, w17, w18
	eor	w5, w18, w2
	and	w6, w17, w18
	and	w4, w4, w2
	cmp	x11, #59
	eor	w5, w5, w17
	orr	w4, w4, w6
	csel	w4, w5, w4, hi
	csel	w5, w15, w16, hi
.LBB0_8:                                //   in Loop: Header=BB0_3 Depth=1
	ror	w6, w1, #27
	ldr	w7, [x14, x11, lsl #2]
	add	w3, w3, w4
	add	x11, x11, #1
	add	w4, w6, w5
	cmp	x11, #80
	mov	w5, w18
	add	w3, w3, w4
	ror	w4, w2, #2
	mov	w2, w1
	add	w6, w3, w7
	mov	w3, w17
	b.ne	.LBB0_3
// %bb.9:
	add	w11, w6, w13
	add	w12, w1, w12
	add	w10, w4, w10
	add	w9, w18, w9
	add	w8, w17, w8
	ldr	x29, [sp, #320]                 // 8-byte Folded Reload
	stp	w11, w12, [x0]
	stp	w10, w9, [x0, #8]
	str	w8, [x0, #16]
	add	sp, sp, #336
	.cfi_def_cfa_offset 0
	.cfi_restore w29
	ret
.Lfunc_end0:
	.size	sha1_compress, .Lfunc_end0-sha1_compress
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
