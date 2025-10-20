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
	ld4	{ v0.16b, v1.16b, v2.16b, v3.16b }, [x1]
	mov	x10, xzr
	mov	x16, sp
	ldr	w8, [x0, #16]
	ldp	w13, w12, [x0]
	ldp	w11, w9, [x0, #8]
	mov	w15, w8
	mov	w4, w13
	mov	w14, w12
	ushll2	v4.8h, v1.16b, #0
	ushll2	v5.8h, v2.16b, #0
	ushll	v6.8h, v0.8b, #0
	ushll2	v7.8h, v0.16b, #0
	ushll	v16.8h, v1.8b, #0
	ushll	v17.8h, v2.8b, #0
	ushll2	v18.8h, v3.16b, #0
	ushll	v0.8h, v3.8b, #0
	mov	w3, w11
	shll2	v19.4s, v4.8h, #16
	ushll2	v20.4s, v5.8h, #8
	ushll	v21.4s, v6.4h, #0
	ushll2	v6.4s, v6.8h, #0
	ushll2	v22.4s, v7.8h, #0
	ushll	v7.4s, v7.4h, #0
	shll	v4.4s, v4.4h, #16
	ushll	v5.4s, v5.4h, #8
	shll2	v23.4s, v16.8h, #16
	orr	v19.16b, v19.16b, v20.16b
	ushll2	v20.4s, v17.8h, #8
	shll	v16.4s, v16.4h, #16
	ushll	v17.4s, v17.4h, #8
	shl	v22.4s, v22.4s, #24
	shl	v1.4s, v7.4s, #24
	orr	v2.16b, v4.16b, v5.16b
	shl	v4.4s, v6.4s, #24
	shl	v6.4s, v21.4s, #24
	orr	v5.16b, v23.16b, v20.16b
	ushll2	v3.4s, v18.8h, #0
	mov	w6, w9
	orr	v7.16b, v16.16b, v17.16b
	orr	v16.16b, v19.16b, v22.16b
	ushll	v17.4s, v18.4h, #0
	orr	v1.16b, v2.16b, v1.16b
	ushll2	v2.4s, v0.8h, #0
	ushll	v0.4s, v0.4h, #0
	orr	v4.16b, v5.16b, v4.16b
	orr	v5.16b, v7.16b, v6.16b
	orr	v3.16b, v16.16b, v3.16b
	orr	v1.16b, v1.16b, v17.16b
	orr	v2.16b, v4.16b, v2.16b
	orr	v0.16b, v5.16b, v0.16b
	stp	q1, q3, [sp, #32]
	stp	q0, q2, [sp]
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	add	x17, x16, x10
	add	x10, x10, #4
	ldr	w18, [x17, #52]
	ldr	w1, [x17, #32]
	ldr	w2, [x17, #8]
	ldr	w5, [x17]
	cmp	x10, #256
	eor	w18, w1, w18
	eor	w1, w2, w5
	eor	w18, w18, w1
	ror	w18, w18, #31
	str	w18, [x17, #64]
	b.ne	.LBB0_1
// %bb.2:
	mov	w17, #49622                     // =0xc1d6
	mov	w18, #48348                     // =0xbcdc
	mov	x10, xzr
	mov	x16, sp
	movk	w17, #51810, lsl #16
	movk	w18, #36635, lsl #16
	b	.LBB0_5
.LBB0_3:                                //   in Loop: Header=BB0_5 Depth=1
	and	w3, w2, w5
	bic	w4, w1, w5
	orr	w3, w4, w3
	mov	w4, #31129                      // =0x7999
	movk	w4, #23170, lsl #16
.LBB0_4:                                //   in Loop: Header=BB0_5 Depth=1
	ror	w6, w14, #27
	ldr	w7, [x16, x10, lsl #2]
	add	w15, w15, w3
	add	x10, x10, #1
	add	w3, w6, w4
	cmp	x10, #80
	mov	w6, w2
	add	w15, w3, w15
	ror	w3, w5, #2
	add	w4, w15, w7
	mov	w15, w1
	b.eq	.LBB0_9
.LBB0_5:                                // =>This Inner Loop Header: Depth=1
	mov	w5, w14
	cmp	x10, #19
	mov	w2, w3
	mov	w1, w6
	mov	w14, w4
	b.ls	.LBB0_3
// %bb.6:                               //   in Loop: Header=BB0_5 Depth=1
	cmp	x10, #39
	b.hi	.LBB0_8
// %bb.7:                               //   in Loop: Header=BB0_5 Depth=1
	eor	w3, w2, w5
	mov	w4, #60321                      // =0xeba1
	eor	w3, w3, w1
	movk	w4, #28377, lsl #16
	b	.LBB0_4
.LBB0_8:                                //   in Loop: Header=BB0_5 Depth=1
	orr	w3, w1, w2
	eor	w4, w2, w5
	and	w6, w1, w2
	and	w3, w3, w5
	cmp	x10, #59
	eor	w4, w4, w1
	orr	w3, w3, w6
	csel	w3, w4, w3, hi
	csel	w4, w17, w18, hi
	b	.LBB0_4
.LBB0_9:
	add	w10, w4, w13
	add	w12, w14, w12
	add	w9, w2, w9
	stp	w10, w12, [x0]
	add	w10, w3, w11
	add	w8, w1, w8
	ldr	x29, [sp, #320]                 // 8-byte Folded Reload
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
