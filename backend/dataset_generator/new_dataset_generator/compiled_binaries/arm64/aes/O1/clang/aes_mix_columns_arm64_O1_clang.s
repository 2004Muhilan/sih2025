	.text
	.file	"aes_mix_columns.c"
	.globl	aes_mix_columns                 // -- Begin function aes_mix_columns
	.p2align	2
	.type	aes_mix_columns,@function
aes_mix_columns:                        // @aes_mix_columns
	.cfi_startproc
// %bb.0:
	mov	x8, xzr
	mov	w9, #27                         // =0x1b
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_2 Depth 2
                                        //     Child Loop BB0_4 Depth 2
                                        //     Child Loop BB0_6 Depth 2
                                        //     Child Loop BB0_8 Depth 2
                                        //     Child Loop BB0_10 Depth 2
                                        //     Child Loop BB0_12 Depth 2
                                        //     Child Loop BB0_14 Depth 2
                                        //     Child Loop BB0_16 Depth 2
	add	x10, x0, x8, lsl #2
	mov	w15, wzr
	mov	w16, #2                         // =0x2
	mov	w17, #8                         // =0x8
	ldrb	w14, [x10]
	ldrb	w11, [x10, #1]
	ldrb	w12, [x10, #2]
	ldrb	w13, [x10, #3]
	mov	w18, w14
.LBB0_2:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	sbfx	w1, w16, #0, #1
	sxtb	w2, w18
	lsl	w3, w18, #1
	lsr	w16, w16, #1
	and	w1, w1, w18
	eor	w18, w3, w9
	cmp	w2, #0
	csel	w18, w18, w3, lt
	subs	w17, w17, #1
	eor	w15, w1, w15
	b.ne	.LBB0_2
// %bb.3:                               //   in Loop: Header=BB0_1 Depth=1
	mov	w16, #3                         // =0x3
	mov	w18, #8                         // =0x8
	mov	w1, w11
.LBB0_4:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	sbfx	w2, w16, #0, #1
	sxtb	w3, w1
	lsl	w4, w1, #1
	lsr	w16, w16, #1
	and	w2, w2, w1
	eor	w1, w4, w9
	cmp	w3, #0
	csel	w1, w1, w4, lt
	subs	w18, w18, #1
	eor	w17, w2, w17
	b.ne	.LBB0_4
// %bb.5:                               //   in Loop: Header=BB0_1 Depth=1
	eor	w18, w13, w12
	mov	w16, wzr
	eor	w15, w18, w15
	mov	w18, w11
	eor	w15, w15, w17
	mov	w17, #8                         // =0x8
	strb	w15, [x10]
	mov	w15, #2                         // =0x2
.LBB0_6:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	sbfx	w1, w15, #0, #1
	sxtb	w2, w18
	lsl	w3, w18, #1
	lsr	w15, w15, #1
	and	w1, w1, w18
	eor	w18, w3, w9
	cmp	w2, #0
	csel	w18, w18, w3, lt
	subs	w17, w17, #1
	eor	w16, w1, w16
	b.ne	.LBB0_6
// %bb.7:                               //   in Loop: Header=BB0_1 Depth=1
	mov	w15, #3                         // =0x3
	mov	w18, #8                         // =0x8
	mov	w1, w12
.LBB0_8:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	sbfx	w2, w15, #0, #1
	sxtb	w3, w1
	lsl	w4, w1, #1
	lsr	w15, w15, #1
	and	w2, w2, w1
	eor	w1, w4, w9
	cmp	w3, #0
	csel	w1, w1, w4, lt
	subs	w18, w18, #1
	eor	w17, w2, w17
	b.ne	.LBB0_8
// %bb.9:                               //   in Loop: Header=BB0_1 Depth=1
	eor	w18, w13, w14
	mov	w15, wzr
	eor	w16, w18, w16
	mov	w18, w12
	eor	w16, w16, w17
	mov	w17, #8                         // =0x8
	strb	w16, [x10, #1]
	mov	w16, #2                         // =0x2
.LBB0_10:                               //   Parent Loop BB0_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	sbfx	w1, w16, #0, #1
	sxtb	w2, w18
	lsl	w3, w18, #1
	lsr	w16, w16, #1
	and	w1, w1, w18
	eor	w18, w3, w9
	cmp	w2, #0
	csel	w18, w18, w3, lt
	subs	w17, w17, #1
	eor	w15, w1, w15
	b.ne	.LBB0_10
// %bb.11:                              //   in Loop: Header=BB0_1 Depth=1
	mov	w16, #3                         // =0x3
	mov	w18, #8                         // =0x8
	mov	w1, w13
.LBB0_12:                               //   Parent Loop BB0_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	sbfx	w2, w16, #0, #1
	sxtb	w3, w1
	lsl	w4, w1, #1
	lsr	w16, w16, #1
	and	w2, w2, w1
	eor	w1, w4, w9
	cmp	w3, #0
	csel	w1, w1, w4, lt
	subs	w18, w18, #1
	eor	w17, w2, w17
	b.ne	.LBB0_12
// %bb.13:                              //   in Loop: Header=BB0_1 Depth=1
	eor	w18, w11, w14
	mov	w16, wzr
	eor	w15, w18, w15
	eor	w15, w15, w17
	mov	w17, #8                         // =0x8
	strb	w15, [x10, #2]
	mov	w15, #3                         // =0x3
.LBB0_14:                               //   Parent Loop BB0_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	sbfx	w18, w15, #0, #1
	sxtb	w1, w14
	lsl	w2, w14, #1
	lsr	w15, w15, #1
	and	w18, w18, w14
	eor	w14, w2, w9
	cmp	w1, #0
	csel	w14, w14, w2, lt
	subs	w17, w17, #1
	eor	w16, w18, w16
	b.ne	.LBB0_14
// %bb.15:                              //   in Loop: Header=BB0_1 Depth=1
	mov	w14, wzr
	mov	w15, #2                         // =0x2
	mov	w17, #8                         // =0x8
.LBB0_16:                               //   Parent Loop BB0_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	sbfx	w18, w15, #0, #1
	sxtb	w1, w13
	lsl	w2, w13, #1
	lsr	w15, w15, #1
	and	w18, w18, w13
	eor	w13, w2, w9
	cmp	w1, #0
	csel	w13, w13, w2, lt
	subs	w17, w17, #1
	eor	w14, w18, w14
	b.ne	.LBB0_16
// %bb.17:                              //   in Loop: Header=BB0_1 Depth=1
	eor	w11, w12, w11
	add	x8, x8, #1
	eor	w11, w11, w16
	cmp	x8, #4
	eor	w11, w11, w14
	strb	w11, [x10, #3]
	b.ne	.LBB0_1
// %bb.18:
	ret
.Lfunc_end0:
	.size	aes_mix_columns, .Lfunc_end0-aes_mix_columns
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
