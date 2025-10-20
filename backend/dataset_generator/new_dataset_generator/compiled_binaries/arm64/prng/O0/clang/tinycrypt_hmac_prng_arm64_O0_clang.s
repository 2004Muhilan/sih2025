	.text
	.file	"tinycrypt_hmac_prng.c"
	.globl	tc_hmac_prng_init               // -- Begin function tc_hmac_prng_init
	.p2align	2
	.type	tc_hmac_prng_init,@function
tc_hmac_prng_init:                      // @tc_hmac_prng_init
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	str	w2, [sp, #20]
	ldur	x8, [x29, #-16]
	cbz	x8, .LBB0_3
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #24]
	cbz	x8, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldr	w8, [sp, #20]
	adds	w8, w8, #1
	b.ls	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	stur	wzr, [x29, #-4]
	b	.LBB0_5
.LBB0_4:
	ldur	x8, [x29, #-16]
	add	x0, x8, #240
	mov	w1, wzr
	str	w1, [sp, #12]                   // 4-byte Folded Spill
	mov	w2, #32                         // =0x20
	str	w2, [sp, #8]                    // 4-byte Folded Spill
	bl	_set
	ldr	w2, [sp, #8]                    // 4-byte Folded Reload
	ldur	x8, [x29, #-16]
	add	x0, x8, #272
	mov	w1, #1                          // =0x1
	str	w1, [sp, #16]                   // 4-byte Folded Spill
	bl	_set
	ldr	w4, [sp, #12]                   // 4-byte Folded Reload
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #24]
	ldr	w2, [sp, #20]
	mov	x3, xzr
	bl	update
	ldr	w8, [sp, #16]                   // 4-byte Folded Reload
	ldur	x9, [x29, #-16]
	str	wzr, [x9, #304]
	stur	w8, [x29, #-4]
	b	.LBB0_5
.LBB0_5:
	ldur	w0, [x29, #-4]
	.cfi_def_cfa wsp, 64
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end0:
	.size	tc_hmac_prng_init, .Lfunc_end0-tc_hmac_prng_init
	.cfi_endproc
                                        // -- End function
	.p2align	2                               // -- Begin function update
	.type	update,@function
update:                                 // @update
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	w2, [x29, #-20]
	str	x3, [sp, #32]
	str	w4, [sp, #28]
	add	x8, sp, #27
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	strb	wzr, [sp, #27]
	mov	w8, #1                          // =0x1
	strb	w8, [sp, #26]
	ldur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	add	x1, x8, #240
	mov	w2, #32                         // =0x20
	str	w2, [sp, #12]                   // 4-byte Folded Spill
	bl	tc_hmac_set_key
	ldur	x0, [x29, #-8]
	bl	tc_hmac_init
	ldr	w2, [sp, #12]                   // 4-byte Folded Reload
	ldur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	add	x1, x8, #272
	bl	tc_hmac_update
	ldr	x1, [sp, #16]                   // 8-byte Folded Reload
	ldur	x0, [x29, #-8]
	mov	w2, #1                          // =0x1
	bl	tc_hmac_update
	ldur	x8, [x29, #-16]
	cbz	x8, .LBB1_3
	b	.LBB1_1
.LBB1_1:
	ldur	w8, [x29, #-20]
	cbz	w8, .LBB1_3
	b	.LBB1_2
.LBB1_2:
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	ldur	w2, [x29, #-20]
	bl	tc_hmac_update
	b	.LBB1_3
.LBB1_3:
	ldr	x8, [sp, #32]
	cbz	x8, .LBB1_6
	b	.LBB1_4
.LBB1_4:
	ldr	w8, [sp, #28]
	cbz	w8, .LBB1_6
	b	.LBB1_5
.LBB1_5:
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #32]
	ldr	w2, [sp, #28]
	bl	tc_hmac_update
	b	.LBB1_6
.LBB1_6:
	ldur	x8, [x29, #-8]
	add	x0, x8, #240
	ldur	x2, [x29, #-8]
	mov	w1, #32                         // =0x20
	str	w1, [sp, #8]                    // 4-byte Folded Spill
	bl	tc_hmac_final
	ldr	w2, [sp, #8]                    // 4-byte Folded Reload
	ldur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	add	x1, x8, #240
	bl	tc_hmac_set_key
	ldur	x0, [x29, #-8]
	bl	tc_hmac_init
	ldr	w2, [sp, #8]                    // 4-byte Folded Reload
	ldur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	add	x1, x8, #272
	bl	tc_hmac_update
	ldr	w1, [sp, #8]                    // 4-byte Folded Reload
	ldur	x8, [x29, #-8]
	add	x0, x8, #272
	ldur	x2, [x29, #-8]
	bl	tc_hmac_final
	ldur	x8, [x29, #-16]
	cbz	x8, .LBB1_8
	b	.LBB1_7
.LBB1_7:
	ldur	w8, [x29, #-20]
	cbnz	w8, .LBB1_9
	b	.LBB1_8
.LBB1_8:
	b	.LBB1_13
.LBB1_9:
	ldur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	add	x1, x8, #240
	mov	w2, #32                         // =0x20
	str	w2, [sp, #4]                    // 4-byte Folded Spill
	bl	tc_hmac_set_key
	ldur	x0, [x29, #-8]
	bl	tc_hmac_init
	ldr	w2, [sp, #4]                    // 4-byte Folded Reload
	ldur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	add	x1, x8, #272
	bl	tc_hmac_update
	ldur	x0, [x29, #-8]
	add	x1, sp, #26
	mov	w2, #1                          // =0x1
	bl	tc_hmac_update
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	ldur	w2, [x29, #-20]
	bl	tc_hmac_update
	ldr	x8, [sp, #32]
	cbz	x8, .LBB1_12
	b	.LBB1_10
.LBB1_10:
	ldr	w8, [sp, #28]
	cbz	w8, .LBB1_12
	b	.LBB1_11
.LBB1_11:
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #32]
	ldr	w2, [sp, #28]
	bl	tc_hmac_update
	b	.LBB1_12
.LBB1_12:
	ldur	x8, [x29, #-8]
	add	x0, x8, #240
	ldur	x2, [x29, #-8]
	mov	w1, #32                         // =0x20
	str	w1, [sp]                        // 4-byte Folded Spill
	bl	tc_hmac_final
	ldr	w2, [sp]                        // 4-byte Folded Reload
	ldur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	add	x1, x8, #240
	bl	tc_hmac_set_key
	ldur	x0, [x29, #-8]
	bl	tc_hmac_init
	ldr	w2, [sp]                        // 4-byte Folded Reload
	ldur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	add	x1, x8, #272
	bl	tc_hmac_update
	ldr	w1, [sp]                        // 4-byte Folded Reload
	ldur	x8, [x29, #-8]
	add	x0, x8, #272
	ldur	x2, [x29, #-8]
	bl	tc_hmac_final
	b	.LBB1_13
.LBB1_13:
	.cfi_def_cfa wsp, 80
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end1:
	.size	update, .Lfunc_end1-update
	.cfi_endproc
                                        // -- End function
	.globl	tc_hmac_prng_reseed             // -- Begin function tc_hmac_prng_reseed
	.p2align	2
	.type	tc_hmac_prng_reseed,@function
tc_hmac_prng_reseed:                    // @tc_hmac_prng_reseed
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	str	w2, [sp, #20]
	str	x3, [sp, #8]
	str	w4, [sp, #4]
	ldur	x8, [x29, #-16]
	cbz	x8, .LBB2_4
	b	.LBB2_1
.LBB2_1:
	ldr	x8, [sp, #24]
	cbz	x8, .LBB2_4
	b	.LBB2_2
.LBB2_2:
	ldr	w8, [sp, #20]
	subs	w8, w8, #32
	b.lo	.LBB2_4
	b	.LBB2_3
.LBB2_3:
	ldr	w8, [sp, #20]
	adds	w8, w8, #1
	b.ls	.LBB2_5
	b	.LBB2_4
.LBB2_4:
	stur	wzr, [x29, #-4]
	b	.LBB2_13
.LBB2_5:
	ldr	x8, [sp, #8]
	cbz	x8, .LBB2_11
	b	.LBB2_6
.LBB2_6:
	ldr	w8, [sp, #4]
	cbz	w8, .LBB2_8
	b	.LBB2_7
.LBB2_7:
	ldr	w8, [sp, #4]
	adds	w8, w8, #1
	b.ls	.LBB2_9
	b	.LBB2_8
.LBB2_8:
	stur	wzr, [x29, #-4]
	b	.LBB2_13
.LBB2_9:
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #24]
	ldr	w2, [sp, #20]
	ldr	x3, [sp, #8]
	ldr	w4, [sp, #4]
	bl	update
	b	.LBB2_10
.LBB2_10:
	b	.LBB2_12
.LBB2_11:
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #24]
	ldr	w2, [sp, #20]
	mov	x3, xzr
	mov	w4, wzr
	bl	update
	b	.LBB2_12
.LBB2_12:
	ldur	x9, [x29, #-16]
	mov	w8, #-1                         // =0xffffffff
	str	w8, [x9, #304]
	mov	w8, #1                          // =0x1
	stur	w8, [x29, #-4]
	b	.LBB2_13
.LBB2_13:
	ldur	w0, [x29, #-4]
	.cfi_def_cfa wsp, 64
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end2:
	.size	tc_hmac_prng_reseed, .Lfunc_end2-tc_hmac_prng_reseed
	.cfi_endproc
                                        // -- End function
	.globl	tc_hmac_prng_generate           // -- Begin function tc_hmac_prng_generate
	.p2align	2
	.type	tc_hmac_prng_generate,@function
tc_hmac_prng_generate:                  // @tc_hmac_prng_generate
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	w1, [x29, #-20]
	str	x2, [sp, #16]
	ldur	x8, [x29, #-16]
	cbz	x8, .LBB3_4
	b	.LBB3_1
.LBB3_1:
	ldr	x8, [sp, #16]
	cbz	x8, .LBB3_4
	b	.LBB3_2
.LBB3_2:
	ldur	w8, [x29, #-20]
	cbz	w8, .LBB3_4
	b	.LBB3_3
.LBB3_3:
	ldur	w8, [x29, #-20]
	subs	w8, w8, #128, lsl #12           // =524288
	b.ls	.LBB3_5
	b	.LBB3_4
.LBB3_4:
	stur	wzr, [x29, #-4]
	b	.LBB3_18
.LBB3_5:
	ldr	x8, [sp, #16]
	ldr	w8, [x8, #304]
	cbnz	w8, .LBB3_7
	b	.LBB3_6
.LBB3_6:
	mov	w8, #-1                         // =0xffffffff
	stur	w8, [x29, #-4]
	b	.LBB3_18
.LBB3_7:
	b	.LBB3_8
.LBB3_8:
	ldr	x9, [sp, #16]
	ldr	w8, [x9, #304]
	subs	w8, w8, #1
	str	w8, [x9, #304]
	b	.LBB3_9
.LBB3_9:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-20]
	cbz	w8, .LBB3_17
	b	.LBB3_10
.LBB3_10:                               //   in Loop: Header=BB3_9 Depth=1
	ldr	x0, [sp, #16]
	ldr	x8, [sp, #16]
	add	x1, x8, #240
	mov	w2, #32                         // =0x20
	str	w2, [sp, #8]                    // 4-byte Folded Spill
	bl	tc_hmac_set_key
	ldr	x0, [sp, #16]
	bl	tc_hmac_init
	ldr	w2, [sp, #8]                    // 4-byte Folded Reload
	ldr	x0, [sp, #16]
	ldr	x8, [sp, #16]
	add	x1, x8, #272
	bl	tc_hmac_update
	ldr	w1, [sp, #8]                    // 4-byte Folded Reload
	ldr	x8, [sp, #16]
	add	x0, x8, #272
	ldr	x2, [sp, #16]
	bl	tc_hmac_final
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	ldur	w9, [x29, #-20]
	subs	w8, w8, w9
	b.ls	.LBB3_12
	b	.LBB3_11
.LBB3_11:                               //   in Loop: Header=BB3_9 Depth=1
	ldur	w8, [x29, #-20]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB3_13
.LBB3_12:                               //   in Loop: Header=BB3_9 Depth=1
	mov	w8, #32                         // =0x20
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB3_13
.LBB3_13:                               //   in Loop: Header=BB3_9 Depth=1
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	str	w8, [sp, #12]
	ldur	x0, [x29, #-16]
	ldr	w1, [sp, #12]
	ldr	x8, [sp, #16]
	add	x2, x8, #272
	ldr	w3, [sp, #12]
	bl	_copy
	ldr	w8, [sp, #12]
	mov	w9, w8
	ldur	x8, [x29, #-16]
	add	x8, x8, x9
	stur	x8, [x29, #-16]
	ldur	w8, [x29, #-20]
	subs	w8, w8, #32
	b.ls	.LBB3_15
	b	.LBB3_14
.LBB3_14:                               //   in Loop: Header=BB3_9 Depth=1
	ldur	w8, [x29, #-20]
	subs	w8, w8, #32
	str	w8, [sp]                        // 4-byte Folded Spill
	b	.LBB3_16
.LBB3_15:                               //   in Loop: Header=BB3_9 Depth=1
	mov	w8, wzr
	str	w8, [sp]                        // 4-byte Folded Spill
	b	.LBB3_16
.LBB3_16:                               //   in Loop: Header=BB3_9 Depth=1
	ldr	w8, [sp]                        // 4-byte Folded Reload
	stur	w8, [x29, #-20]
	b	.LBB3_9
.LBB3_17:
	ldr	x0, [sp, #16]
	mov	x3, xzr
	mov	x1, x3
	mov	w4, wzr
	mov	w2, w4
	bl	update
	mov	w8, #1                          // =0x1
	stur	w8, [x29, #-4]
	b	.LBB3_18
.LBB3_18:
	ldur	w0, [x29, #-4]
	.cfi_def_cfa wsp, 64
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end3:
	.size	tc_hmac_prng_generate, .Lfunc_end3-tc_hmac_prng_generate
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _set
	.addrsig_sym update
	.addrsig_sym tc_hmac_set_key
	.addrsig_sym tc_hmac_init
	.addrsig_sym tc_hmac_update
	.addrsig_sym tc_hmac_final
	.addrsig_sym _copy
