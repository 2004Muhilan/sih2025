	.text
	.file	"custom_sha1.c"
	.globl	sha1_transform                  // -- Begin function sha1_transform
	.p2align	2
	.type	sha1_transform,@function
sha1_transform:                         // @sha1_transform
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #416
	.cfi_def_cfa_offset 416
	str	x29, [sp, #400]                 // 8-byte Folded Spill
	.cfi_offset w29, -16
	add	x8, sp, #384
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	str	x0, [x8, #8]
	str	x1, [x8]
	ldr	x9, [x8, #8]
	ldr	w9, [x9]
	str	w9, [sp, #380]
	ldr	x9, [x8, #8]
	ldr	w9, [x9, #4]
	str	w9, [sp, #376]
	ldr	x9, [x8, #8]
	ldr	w9, [x9, #8]
	str	w9, [sp, #372]
	ldr	x9, [x8, #8]
	ldr	w9, [x9, #12]
	str	w9, [sp, #368]
	ldr	x8, [x8, #8]
	ldr	w8, [x8, #16]
	str	w8, [sp, #364]
	str	wzr, [sp, #40]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #40]
	subs	w8, w8, #16
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x9]
	ldr	w10, [sp, #40]
	lsl	w10, w10, #2
	ldrb	w10, [x8, w10, sxtw]
	ldr	x8, [x9]
	ldr	w11, [sp, #40]
	lsl	w11, w11, #2
	add	w11, w11, #1
	ldrb	w8, [x8, w11, sxtw]
	lsl	w8, w8, #16
	orr	w8, w8, w10, lsl #24
	ldr	x10, [x9]
	ldr	w11, [sp, #40]
	lsl	w11, w11, #2
	add	w11, w11, #2
	ldrb	w10, [x10, w11, sxtw]
	orr	w8, w8, w10, lsl #8
	ldr	x9, [x9]
	ldr	w10, [sp, #40]
	lsl	w10, w10, #2
	add	w10, w10, #3
	ldrb	w9, [x9, w10, sxtw]
	orr	w8, w8, w9
	ldrsw	x10, [sp, #40]
	add	x9, sp, #44
	str	w8, [x9, x10, lsl #2]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #40]
	add	w8, w8, #1
	str	w8, [sp, #40]
	b	.LBB0_1
.LBB0_4:
	mov	w8, #16                         // =0x10
	str	w8, [sp, #36]
	b	.LBB0_5
.LBB0_5:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #36]
	subs	w8, w8, #80
	b.ge	.LBB0_8
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #36]
	subs	w8, w8, #3
	add	x9, sp, #44
	str	x9, [sp]                        // 8-byte Folded Spill
	ldr	w8, [x9, w8, sxtw #2]
	ldr	w10, [sp, #36]
	subs	w10, w10, #8
	ldr	w10, [x9, w10, sxtw #2]
	eor	w8, w8, w10
	ldr	w10, [sp, #36]
	subs	w10, w10, #14
	ldr	w10, [x9, w10, sxtw #2]
	eor	w8, w8, w10
	ldr	w10, [sp, #36]
	subs	w10, w10, #16
	ldr	w10, [x9, w10, sxtw #2]
	eor	w10, w8, w10
	ldr	w8, [sp, #36]
	subs	w8, w8, #3
	ldr	w8, [x9, w8, sxtw #2]
	ldr	w11, [sp, #36]
	subs	w11, w11, #8
	ldr	w11, [x9, w11, sxtw #2]
	eor	w8, w8, w11
	ldr	w11, [sp, #36]
	subs	w11, w11, #14
	ldr	w11, [x9, w11, sxtw #2]
	eor	w8, w8, w11
	ldr	w11, [sp, #36]
	subs	w11, w11, #16
	ldr	w11, [x9, w11, sxtw #2]
	eor	w8, w8, w11
	lsr	w8, w8, #31
	orr	w8, w8, w10, lsl #1
	ldrsw	x10, [sp, #36]
	str	w8, [x9, x10, lsl #2]
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #36]
	add	w8, w8, #1
	str	w8, [sp, #36]
	b	.LBB0_5
.LBB0_8:
	str	wzr, [sp, #32]
	b	.LBB0_9
.LBB0_9:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #32]
	subs	w8, w8, #80
	b.ge	.LBB0_21
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_9 Depth=1
	ldr	w8, [sp, #32]
	subs	w8, w8, #20
	b.ge	.LBB0_12
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_9 Depth=1
	ldr	w8, [sp, #376]
	ldr	w9, [sp, #372]
	and	w8, w8, w9
	ldr	w10, [sp, #376]
	ldr	w9, [sp, #368]
	bic	w9, w9, w10
	orr	w8, w8, w9
	str	w8, [sp, #28]
	mov	w8, #31129                      // =0x7999
	movk	w8, #23170, lsl #16
	str	w8, [sp, #24]
	b	.LBB0_19
.LBB0_12:                               //   in Loop: Header=BB0_9 Depth=1
	ldr	w8, [sp, #32]
	subs	w8, w8, #40
	b.ge	.LBB0_14
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_9 Depth=1
	ldr	w8, [sp, #376]
	ldr	w9, [sp, #372]
	eor	w8, w8, w9
	ldr	w9, [sp, #368]
	eor	w8, w8, w9
	str	w8, [sp, #28]
	mov	w8, #60321                      // =0xeba1
	movk	w8, #28377, lsl #16
	str	w8, [sp, #24]
	b	.LBB0_18
.LBB0_14:                               //   in Loop: Header=BB0_9 Depth=1
	ldr	w8, [sp, #32]
	subs	w8, w8, #60
	b.ge	.LBB0_16
	b	.LBB0_15
.LBB0_15:                               //   in Loop: Header=BB0_9 Depth=1
	ldr	w8, [sp, #376]
	ldr	w9, [sp, #372]
	and	w8, w8, w9
	ldr	w9, [sp, #376]
	ldr	w10, [sp, #368]
	and	w9, w9, w10
	orr	w8, w8, w9
	ldr	w9, [sp, #372]
	ldr	w10, [sp, #368]
	and	w9, w9, w10
	orr	w8, w8, w9
	str	w8, [sp, #28]
	mov	w8, #48348                      // =0xbcdc
	movk	w8, #36635, lsl #16
	str	w8, [sp, #24]
	b	.LBB0_17
.LBB0_16:                               //   in Loop: Header=BB0_9 Depth=1
	ldr	w8, [sp, #376]
	ldr	w9, [sp, #372]
	eor	w8, w8, w9
	ldr	w9, [sp, #368]
	eor	w8, w8, w9
	str	w8, [sp, #28]
	mov	w8, #49622                      // =0xc1d6
	movk	w8, #51810, lsl #16
	str	w8, [sp, #24]
	b	.LBB0_17
.LBB0_17:                               //   in Loop: Header=BB0_9 Depth=1
	b	.LBB0_18
.LBB0_18:                               //   in Loop: Header=BB0_9 Depth=1
	b	.LBB0_19
.LBB0_19:                               //   in Loop: Header=BB0_9 Depth=1
	ldr	w9, [sp, #380]
	ldr	w8, [sp, #380]
	lsr	w8, w8, #27
	orr	w8, w8, w9, lsl #5
	ldr	w9, [sp, #28]
	add	w8, w8, w9
	ldr	w9, [sp, #364]
	add	w8, w8, w9
	ldr	w9, [sp, #24]
	add	w8, w8, w9
	ldrsw	x10, [sp, #32]
	add	x9, sp, #44
	ldr	w9, [x9, x10, lsl #2]
	add	w8, w8, w9
	str	w8, [sp, #20]
	ldr	w8, [sp, #368]
	str	w8, [sp, #364]
	ldr	w8, [sp, #372]
	str	w8, [sp, #368]
	ldr	w9, [sp, #376]
	ldr	w8, [sp, #376]
	lsr	w8, w8, #2
	orr	w8, w8, w9, lsl #30
	str	w8, [sp, #372]
	ldr	w8, [sp, #380]
	str	w8, [sp, #376]
	ldr	w8, [sp, #20]
	str	w8, [sp, #380]
	b	.LBB0_20
.LBB0_20:                               //   in Loop: Header=BB0_9 Depth=1
	ldr	w8, [sp, #32]
	add	w8, w8, #1
	str	w8, [sp, #32]
	b	.LBB0_9
.LBB0_21:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	w11, [sp, #380]
	ldr	x10, [x8, #8]
	ldr	w9, [x10]
	add	w9, w9, w11
	str	w9, [x10]
	ldr	w11, [sp, #376]
	ldr	x10, [x8, #8]
	ldr	w9, [x10, #4]
	add	w9, w9, w11
	str	w9, [x10, #4]
	ldr	w11, [sp, #372]
	ldr	x10, [x8, #8]
	ldr	w9, [x10, #8]
	add	w9, w9, w11
	str	w9, [x10, #8]
	ldr	w11, [sp, #368]
	ldr	x10, [x8, #8]
	ldr	w9, [x10, #12]
	add	w9, w9, w11
	str	w9, [x10, #12]
	ldr	w10, [sp, #364]
	ldr	x9, [x8, #8]
	ldr	w8, [x9, #16]
	add	w8, w8, w10
	str	w8, [x9, #16]
	ldr	x29, [sp, #400]                 // 8-byte Folded Reload
	add	sp, sp, #416
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
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	mov	w8, #8961                       // =0x2301
	movk	w8, #26437, lsl #16
	str	w8, [x9]
	ldr	x9, [sp, #8]
	mov	w8, #43913                      // =0xab89
	movk	w8, #61389, lsl #16
	str	w8, [x9, #4]
	ldr	x9, [sp, #8]
	mov	w8, #56574                      // =0xdcfe
	movk	w8, #39098, lsl #16
	str	w8, [x9, #8]
	ldr	x9, [sp, #8]
	mov	w8, #21622                      // =0x5476
	movk	w8, #4146, lsl #16
	str	w8, [x9, #12]
	ldr	x9, [sp, #8]
	mov	w8, #57840                      // =0xe1f0
	movk	w8, #50130, lsl #16
	str	w8, [x9, #16]
	add	sp, sp, #16
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end1:
	.size	sha1_init, .Lfunc_end1-sha1_init
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
