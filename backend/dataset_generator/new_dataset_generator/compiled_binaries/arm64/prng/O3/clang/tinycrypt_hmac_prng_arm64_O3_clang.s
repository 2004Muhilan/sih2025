	.text
	.file	"tinycrypt_hmac_prng.c"
	.globl	tc_hmac_prng_init               // -- Begin function tc_hmac_prng_init
	.p2align	2
	.type	tc_hmac_prng_init,@function
tc_hmac_prng_init:                      // @tc_hmac_prng_init
	.cfi_startproc
// %bb.0:
	stp	x29, x30, [sp, #-48]!           // 16-byte Folded Spill
	.cfi_def_cfa_offset 48
	stp	x22, x21, [sp, #16]             // 16-byte Folded Spill
	stp	x20, x19, [sp, #32]             // 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 48
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w30, -40
	.cfi_offset w29, -48
	mov	w19, wzr
	cbz	x0, .LBB0_3
// %bb.1:
	cbz	x1, .LBB0_3
// %bb.2:
	mov	x20, x0
	add	x0, x0, #240
	mov	x21, x1
	mov	w1, wzr
	mov	w22, w2
	mov	w2, #32                         // =0x20
	bl	_set
	add	x0, x20, #272
	mov	w1, #1                          // =0x1
	mov	w2, #32                         // =0x20
	mov	w19, #1                         // =0x1
	bl	_set
	mov	x0, x20
	mov	x1, x21
	mov	w2, w22
	mov	x3, xzr
	mov	w4, wzr
	bl	update
	str	wzr, [x20, #304]
.LBB0_3:
	mov	w0, w19
	.cfi_def_cfa wsp, 48
	ldp	x20, x19, [sp, #32]             // 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #48             // 16-byte Folded Reload
	.cfi_def_cfa_offset 0
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
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
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	stp	x24, x23, [sp, #32]             // 16-byte Folded Spill
	stp	x22, x21, [sp, #48]             // 16-byte Folded Spill
	stp	x20, x19, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 64
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w23, -40
	.cfi_offset w24, -48
	.cfi_offset w30, -56
	.cfi_offset w29, -64
	mov	w22, w2
	mov	x23, x1
	mov	w8, #1                          // =0x1
	add	x1, x0, #240
	mov	w2, #32                         // =0x20
	mov	w20, w4
	mov	x21, x3
	mov	x19, x0
	sturb	wzr, [x29, #-4]
	strb	w8, [sp, #8]
	bl	tc_hmac_set_key
	mov	x0, x19
	bl	tc_hmac_init
	add	x1, x19, #272
	mov	x0, x19
	mov	w2, #32                         // =0x20
	bl	tc_hmac_update
	sub	x1, x29, #4
	mov	x0, x19
	mov	w2, #1                          // =0x1
	bl	tc_hmac_update
	cbz	x23, .LBB1_3
// %bb.1:
	cbz	w22, .LBB1_3
// %bb.2:
	mov	x0, x19
	mov	x1, x23
	mov	w2, w22
	bl	tc_hmac_update
.LBB1_3:
	cmp	x21, #0
	ccmp	w20, #0, #4, ne
	cset	w24, ne
	b.eq	.LBB1_5
// %bb.4:
	mov	x0, x19
	mov	x1, x21
	mov	w2, w20
	bl	tc_hmac_update
.LBB1_5:
	add	x0, x19, #240
	mov	w1, #32                         // =0x20
	mov	x2, x19
	bl	tc_hmac_final
	add	x1, x19, #240
	mov	x0, x19
	mov	w2, #32                         // =0x20
	bl	tc_hmac_set_key
	mov	x0, x19
	bl	tc_hmac_init
	add	x1, x19, #272
	mov	x0, x19
	mov	w2, #32                         // =0x20
	bl	tc_hmac_update
	add	x0, x19, #272
	mov	w1, #32                         // =0x20
	mov	x2, x19
	bl	tc_hmac_final
	cbz	x23, .LBB1_10
// %bb.6:
	cbz	w22, .LBB1_10
// %bb.7:
	add	x1, x19, #240
	mov	x0, x19
	mov	w2, #32                         // =0x20
	bl	tc_hmac_set_key
	mov	x0, x19
	bl	tc_hmac_init
	add	x1, x19, #272
	mov	x0, x19
	mov	w2, #32                         // =0x20
	bl	tc_hmac_update
	add	x1, sp, #8
	mov	x0, x19
	mov	w2, #1                          // =0x1
	bl	tc_hmac_update
	mov	x0, x19
	mov	x1, x23
	mov	w2, w22
	bl	tc_hmac_update
	cbz	w24, .LBB1_9
// %bb.8:
	mov	x0, x19
	mov	x1, x21
	mov	w2, w20
	bl	tc_hmac_update
.LBB1_9:
	add	x0, x19, #240
	mov	w1, #32                         // =0x20
	mov	x2, x19
	bl	tc_hmac_final
	add	x1, x19, #240
	mov	x0, x19
	mov	w2, #32                         // =0x20
	bl	tc_hmac_set_key
	mov	x0, x19
	bl	tc_hmac_init
	add	x1, x19, #272
	mov	x0, x19
	mov	w2, #32                         // =0x20
	bl	tc_hmac_update
	add	x0, x19, #272
	mov	w1, #32                         // =0x20
	mov	x2, x19
	bl	tc_hmac_final
.LBB1_10:
	.cfi_def_cfa wsp, 80
	ldp	x20, x19, [sp, #64]             // 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             // 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             // 16-byte Folded Reload
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #80
	.cfi_def_cfa_offset 0
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w23
	.cfi_restore w24
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
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	.cfi_def_cfa_offset 32
	str	x19, [sp, #16]                  // 8-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 32
	.cfi_offset w19, -16
	.cfi_offset w30, -24
	.cfi_offset w29, -32
	.cfi_remember_state
	mov	x19, x0
	mov	w0, wzr
	cbz	x19, .LBB2_8
// %bb.1:
	cbz	x1, .LBB2_8
// %bb.2:
	cmp	w2, #32
	b.lo	.LBB2_8
// %bb.3:
	cbz	x3, .LBB2_6
// %bb.4:
	cbz	w4, .LBB2_9
// %bb.5:
	mov	x0, x19
	b	.LBB2_7
.LBB2_6:
	mov	x0, x19
	mov	w4, wzr
.LBB2_7:
	bl	update
	mov	w8, #-1                         // =0xffffffff
	mov	w0, #1                          // =0x1
	str	w8, [x19, #304]
.LBB2_8:
	.cfi_def_cfa wsp, 32
	ldr	x19, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	.cfi_def_cfa_offset 0
	.cfi_restore w19
	.cfi_restore w30
	.cfi_restore w29
	ret
.LBB2_9:
	.cfi_restore_state
	mov	w0, wzr
	.cfi_def_cfa wsp, 32
	ldr	x19, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	.cfi_def_cfa_offset 0
	.cfi_restore w19
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
	stp	x29, x30, [sp, #-64]!           // 16-byte Folded Spill
	.cfi_def_cfa_offset 64
	str	x23, [sp, #16]                  // 8-byte Folded Spill
	stp	x22, x21, [sp, #32]             // 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             // 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 64
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w23, -48
	.cfi_offset w30, -56
	.cfi_offset w29, -64
	.cfi_remember_state
	sub	w8, w1, #128, lsl #12           // =524288
	mov	x21, x0
	mov	w0, wzr
	sub	w8, w8, #1
	cmn	w8, #128, lsl #12               // =524288
	b.lo	.LBB3_7
// %bb.1:
	cbz	x21, .LBB3_7
// %bb.2:
	mov	x19, x2
	cbz	x2, .LBB3_7
// %bb.3:
	ldr	w8, [x19, #304]
	cbz	w8, .LBB3_8
// %bb.4:
	mov	w20, w1
	sub	w8, w8, #1
	mov	w23, #32                        // =0x20
	str	w8, [x19, #304]
.LBB3_5:                                // =>This Inner Loop Header: Depth=1
	add	x1, x19, #240
	mov	x0, x19
	mov	w2, #32                         // =0x20
	bl	tc_hmac_set_key
	mov	x0, x19
	bl	tc_hmac_init
	add	x1, x19, #272
	mov	x0, x19
	mov	w2, #32                         // =0x20
	bl	tc_hmac_update
	add	x0, x19, #272
	mov	w1, #32                         // =0x20
	mov	x2, x19
	bl	tc_hmac_final
	cmp	w20, #32
	add	x2, x19, #272
	mov	x0, x21
	csel	w22, w20, w23, lo
	mov	w1, w22
	mov	w3, w22
	bl	_copy
	subs	w20, w20, #32
	add	x21, x21, x22
	b.hi	.LBB3_5
// %bb.6:
	add	x1, x19, #240
	mov	x0, x19
	mov	w2, #32                         // =0x20
	strb	wzr, [x29, #28]
	bl	tc_hmac_set_key
	mov	x0, x19
	bl	tc_hmac_init
	add	x1, x19, #272
	mov	x0, x19
	mov	w2, #32                         // =0x20
	bl	tc_hmac_update
	add	x1, x29, #28
	mov	x0, x19
	mov	w2, #1                          // =0x1
	bl	tc_hmac_update
	add	x0, x19, #240
	mov	w1, #32                         // =0x20
	mov	x2, x19
	bl	tc_hmac_final
	add	x1, x19, #240
	mov	x0, x19
	mov	w2, #32                         // =0x20
	bl	tc_hmac_set_key
	mov	x0, x19
	bl	tc_hmac_init
	add	x1, x19, #272
	mov	x0, x19
	mov	w2, #32                         // =0x20
	bl	tc_hmac_update
	add	x0, x19, #272
	mov	w1, #32                         // =0x20
	mov	x2, x19
	bl	tc_hmac_final
	mov	w0, #1                          // =0x1
.LBB3_7:
	.cfi_def_cfa wsp, 64
	ldp	x20, x19, [sp, #48]             // 16-byte Folded Reload
	ldr	x23, [sp, #16]                  // 8-byte Folded Reload
	ldp	x22, x21, [sp, #32]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #64             // 16-byte Folded Reload
	.cfi_def_cfa_offset 0
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w23
	.cfi_restore w30
	.cfi_restore w29
	ret
.LBB3_8:
	.cfi_restore_state
	mov	w0, #-1                         // =0xffffffff
	.cfi_def_cfa wsp, 64
	ldp	x20, x19, [sp, #48]             // 16-byte Folded Reload
	ldr	x23, [sp, #16]                  // 8-byte Folded Reload
	ldp	x22, x21, [sp, #32]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #64             // 16-byte Folded Reload
	.cfi_def_cfa_offset 0
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w23
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
