	.text
	.file	"tinycrypt_ecc_dsa.c"
	.globl	uECC_sign_with_k                // -- Begin function uECC_sign_with_k
	.p2align	2
	.type	uECC_sign_with_k,@function
uECC_sign_with_k:                       // @uECC_sign_with_k
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #256
	.cfi_def_cfa_offset 256
	stp	x29, x30, [sp, #240]            // 16-byte Folded Spill
	add	x29, sp, #240
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	w2, [x29, #-28]
	stur	x3, [x29, #-40]
	stur	x4, [x29, #-48]
	stur	x5, [x29, #-56]
	sub	x8, x29, #88
	str	x8, [sp, #104]
	add	x8, sp, #120
	str	x8, [sp, #112]
	ldur	x8, [x29, #-56]
	ldrb	w8, [x8]
	strb	w8, [sp, #35]
	ldur	x8, [x29, #-56]
	ldrsh	w8, [x8, #2]
	add	w8, w8, #31
	mov	w9, #32                         // =0x20
	sdiv	w8, w8, w9
	strb	w8, [sp, #34]
	ldur	x8, [x29, #-56]
	ldrh	w8, [x8, #2]
	strh	w8, [sp, #32]
	ldur	x0, [x29, #-40]
	ldrb	w1, [sp, #35]
	bl	uECC_vli_isZero
	cbnz	w0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-56]
	add	x0, x8, #36
	ldur	x1, [x29, #-40]
	ldrb	w2, [sp, #34]
	bl	uECC_vli_cmp
	sxtb	w8, w0
	subs	w8, w8, #1
	b.eq	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	stur	wzr, [x29, #-4]
	b	.LBB0_13
.LBB0_3:
	ldur	x0, [x29, #-40]
	ldur	x3, [x29, #-56]
	sub	x1, x29, #88
	add	x2, sp, #120
	bl	regularize_k
	str	w0, [sp, #36]
	ldur	x8, [x29, #-56]
	add	x1, x8, #68
	ldr	w8, [sp, #36]
	subs	w8, w8, #0
	cset	w9, eq
                                        // implicit-def: $x8
	mov	w8, w9
	and	x9, x8, #0x1
	add	x8, sp, #104
	ldr	x2, [x8, x9, lsl #3]
	ldrsh	w8, [sp, #32]
	add	w4, w8, #1
	ldur	x5, [x29, #-56]
	add	x0, sp, #40
	str	x0, [sp, #24]                   // 8-byte Folded Spill
	mov	x3, xzr
	bl	EccPoint_mult
	ldr	x0, [sp, #24]                   // 8-byte Folded Reload
	ldrb	w1, [sp, #35]
	bl	uECC_vli_isZero
	cbz	w0, .LBB0_5
	b	.LBB0_4
.LBB0_4:
	stur	wzr, [x29, #-4]
	b	.LBB0_13
.LBB0_5:
	bl	uECC_get_rng
	cbnz	x0, .LBB0_7
	b	.LBB0_6
.LBB0_6:
	ldrb	w1, [sp, #34]
	sub	x0, x29, #88
	bl	uECC_vli_clear
	mov	w8, #1                          // =0x1
	stur	w8, [x29, #-88]
	b	.LBB0_10
.LBB0_7:
	ldur	x8, [x29, #-56]
	add	x1, x8, #36
	ldrb	w2, [sp, #34]
	sub	x0, x29, #88
	bl	uECC_generate_random_int
	cbnz	w0, .LBB0_9
	b	.LBB0_8
.LBB0_8:
	stur	wzr, [x29, #-4]
	b	.LBB0_13
.LBB0_9:
	b	.LBB0_10
.LBB0_10:
	ldur	x0, [x29, #-40]
	ldur	x1, [x29, #-40]
	ldur	x8, [x29, #-56]
	add	x3, x8, #36
	ldrb	w4, [sp, #34]
	sub	x2, x29, #88
	str	x2, [sp, #8]                    // 8-byte Folded Spill
	bl	uECC_vli_modMult
	ldur	x0, [x29, #-40]
	ldur	x1, [x29, #-40]
	ldur	x8, [x29, #-56]
	add	x2, x8, #36
	ldrb	w3, [sp, #34]
	bl	uECC_vli_modInv
	ldr	x2, [sp, #8]                    // 8-byte Folded Reload
	ldur	x0, [x29, #-40]
	ldur	x1, [x29, #-40]
	ldur	x8, [x29, #-56]
	add	x3, x8, #36
	ldrb	w4, [sp, #34]
	bl	uECC_vli_modMult
	ldur	x0, [x29, #-48]
	ldur	x8, [x29, #-56]
	ldrsb	w1, [x8, #1]
	add	x2, sp, #40
	str	x2, [sp]                        // 8-byte Folded Spill
	bl	uECC_vli_nativeToBytes
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	ldur	x1, [x29, #-16]
	ldur	x8, [x29, #-56]
	ldrsh	w8, [x8, #2]
	add	w8, w8, #7
	mov	w9, #8                          // =0x8
	sdiv	w2, w8, w9
	bl	uECC_vli_bytesToNative
	ldr	x1, [sp]                        // 8-byte Folded Reload
	ldrsb	w8, [sp, #34]
	subs	w9, w8, #1
	add	x0, sp, #120
	str	x0, [sp, #16]                   // 8-byte Folded Spill
	mov	w8, wzr
	str	w8, [x0, w9, sxtw #2]
	ldrb	w2, [sp, #35]
	bl	uECC_vli_set
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	ldr	x2, [sp, #16]                   // 8-byte Folded Reload
	ldur	x8, [x29, #-56]
	add	x3, x8, #36
	ldrb	w4, [sp, #34]
	mov	x0, x2
	bl	uECC_vli_modMult
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	ldur	x1, [x29, #-24]
	ldur	w2, [x29, #-28]
	ldur	x3, [x29, #-56]
	bl	bits2int
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	ldr	x2, [sp, #16]                   // 8-byte Folded Reload
	ldur	x8, [x29, #-56]
	add	x3, x8, #36
	ldrb	w4, [sp, #34]
	mov	x0, x2
	bl	uECC_vli_modAdd
	ldr	x1, [sp, #16]                   // 8-byte Folded Reload
	ldur	x2, [x29, #-40]
	ldur	x8, [x29, #-56]
	add	x3, x8, #36
	ldrb	w4, [sp, #34]
	mov	x0, x1
	bl	uECC_vli_modMult
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	ldrb	w1, [sp, #34]
	bl	uECC_vli_numBits
	sxth	w8, w0
	ldur	x9, [x29, #-56]
	ldrsb	w9, [x9, #1]
	subs	w8, w8, w9, lsl #3
	b.le	.LBB0_12
	b	.LBB0_11
.LBB0_11:
	stur	wzr, [x29, #-4]
	b	.LBB0_13
.LBB0_12:
	ldur	x8, [x29, #-48]
	ldur	x9, [x29, #-56]
	ldrsb	x9, [x9, #1]
	add	x0, x8, x9
	ldur	x8, [x29, #-56]
	ldrsb	w1, [x8, #1]
	add	x2, sp, #120
	bl	uECC_vli_nativeToBytes
	mov	w8, #1                          // =0x1
	stur	w8, [x29, #-4]
	b	.LBB0_13
.LBB0_13:
	ldur	w0, [x29, #-4]
	.cfi_def_cfa wsp, 256
	ldp	x29, x30, [sp, #240]            // 16-byte Folded Reload
	add	sp, sp, #256
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end0:
	.size	uECC_sign_with_k, .Lfunc_end0-uECC_sign_with_k
	.cfi_endproc
                                        // -- End function
	.p2align	2                               // -- Begin function bits2int
	.type	bits2int,@function
bits2int:                               // @bits2int
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
	ldr	x8, [sp, #32]
	ldrsh	w8, [x8, #2]
	add	w8, w8, #7
	mov	w9, #8                          // =0x8
	sdiv	w8, w8, w9
	str	w8, [sp, #28]
	ldr	x8, [sp, #32]
	ldrsh	w8, [x8, #2]
	add	w8, w8, #31
	mov	w9, #32                         // =0x20
	sdiv	w8, w8, w9
	str	w8, [sp, #24]
	ldur	w8, [x29, #-20]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	b.ls	.LBB1_2
	b	.LBB1_1
.LBB1_1:
	ldr	w8, [sp, #28]
	stur	w8, [x29, #-20]
	b	.LBB1_2
.LBB1_2:
	ldur	x0, [x29, #-8]
	ldr	w1, [sp, #24]
	bl	uECC_vli_clear
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	ldur	w2, [x29, #-20]
	bl	uECC_vli_bytesToNative
	ldur	w9, [x29, #-20]
	ldr	x8, [sp, #32]
	ldrsh	w8, [x8, #2]
	subs	w8, w8, w9, lsl #3
	b.lo	.LBB1_4
	b	.LBB1_3
.LBB1_3:
	b	.LBB1_9
.LBB1_4:
	ldur	w8, [x29, #-20]
	lsl	w8, w8, #3
	ldr	x9, [sp, #32]
	ldrsh	w9, [x9, #2]
	subs	w8, w8, w9
	str	w8, [sp, #20]
	str	wzr, [sp, #16]
	ldur	x8, [x29, #-8]
	ldr	w9, [sp, #24]
                                        // kill: def $x9 killed $w9
	add	x8, x8, x9, lsl #2
	str	x8, [sp, #8]
	b	.LBB1_5
.LBB1_5:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #8]
	mov	x9, x8
	subs	x9, x9, #4
	str	x9, [sp, #8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	b.ls	.LBB1_7
	b	.LBB1_6
.LBB1_6:                                //   in Loop: Header=BB1_5 Depth=1
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	str	w8, [sp, #4]
	ldr	w8, [sp, #4]
	ldr	w9, [sp, #20]
	lsr	w8, w8, w9
	ldr	w9, [sp, #16]
	orr	w8, w8, w9
	ldr	x9, [sp, #8]
	str	w8, [x9]
	ldr	w8, [sp, #4]
	ldr	w10, [sp, #20]
	mov	w9, #32                         // =0x20
	subs	w9, w9, w10
	lsl	w8, w8, w9
	str	w8, [sp, #16]
	b	.LBB1_5
.LBB1_7:
	ldr	x8, [sp, #32]
	add	x0, x8, #36
	ldur	x1, [x29, #-8]
	ldr	w2, [sp, #24]
	bl	uECC_vli_cmp_unsafe
	sxtb	w8, w0
	subs	w8, w8, #1
	b.eq	.LBB1_9
	b	.LBB1_8
.LBB1_8:
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-8]
	ldr	x8, [sp, #32]
	add	x2, x8, #36
	ldr	w3, [sp, #24]
	bl	uECC_vli_sub
	b	.LBB1_9
.LBB1_9:
	.cfi_def_cfa wsp, 80
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end1:
	.size	bits2int, .Lfunc_end1-bits2int
	.cfi_endproc
                                        // -- End function
	.globl	uECC_sign                       // -- Begin function uECC_sign
	.p2align	2
	.type	uECC_sign,@function
uECC_sign:                              // @uECC_sign
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #192
	.cfi_def_cfa_offset 192
	stp	x29, x30, [sp, #176]            // 16-byte Folded Spill
	add	x29, sp, #176
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	w2, [x29, #-28]
	stur	x3, [x29, #-40]
	stur	x4, [x29, #-48]
	str	wzr, [sp, #28]
	b	.LBB2_1
.LBB2_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #28]
	subs	w8, w8, #64
	b.hs	.LBB2_9
	b	.LBB2_2
.LBB2_2:                                //   in Loop: Header=BB2_1 Depth=1
	bl	uECC_get_rng
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	cbz	x8, .LBB2_4
	b	.LBB2_3
.LBB2_3:                                //   in Loop: Header=BB2_1 Depth=1
	ldr	x8, [sp, #16]
	add	x0, sp, #64
	mov	w1, #64                         // =0x40
	blr	x8
	cbnz	w0, .LBB2_5
	b	.LBB2_4
.LBB2_4:
	stur	wzr, [x29, #-4]
	b	.LBB2_10
.LBB2_5:                                //   in Loop: Header=BB2_1 Depth=1
	ldur	x8, [x29, #-48]
	add	x2, x8, #36
	ldur	x8, [x29, #-48]
	ldrsh	w8, [x8, #2]
	add	w8, w8, #31
	mov	w9, #32                         // =0x20
	sdiv	w3, w8, w9
	add	x0, sp, #32
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	add	x1, sp, #64
	bl	uECC_vli_mmod
	ldr	x3, [sp, #8]                    // 8-byte Folded Reload
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	ldur	w2, [x29, #-28]
	ldur	x4, [x29, #-40]
	ldur	x5, [x29, #-48]
	bl	uECC_sign_with_k
	cbz	w0, .LBB2_7
	b	.LBB2_6
.LBB2_6:
	mov	w8, #1                          // =0x1
	stur	w8, [x29, #-4]
	b	.LBB2_10
.LBB2_7:                                //   in Loop: Header=BB2_1 Depth=1
	b	.LBB2_8
.LBB2_8:                                //   in Loop: Header=BB2_1 Depth=1
	ldr	w8, [sp, #28]
	add	w8, w8, #1
	str	w8, [sp, #28]
	b	.LBB2_1
.LBB2_9:
	stur	wzr, [x29, #-4]
	b	.LBB2_10
.LBB2_10:
	ldur	w0, [x29, #-4]
	.cfi_def_cfa wsp, 192
	ldp	x29, x30, [sp, #176]            // 16-byte Folded Reload
	add	sp, sp, #192
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end2:
	.size	uECC_sign, .Lfunc_end2-uECC_sign
	.cfi_endproc
                                        // -- End function
	.globl	uECC_verify                     // -- Begin function uECC_verify
	.p2align	2
	.type	uECC_verify,@function
uECC_verify:                            // @uECC_verify
	.cfi_startproc
// %bb.0:
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	.cfi_def_cfa_offset 32
	str	x28, [sp, #16]                  // 8-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 32
	.cfi_offset w28, -16
	.cfi_offset w30, -24
	.cfi_offset w29, -32
	sub	sp, sp, #736
	add	x8, sp, #328
	str	x8, [sp, #160]                  // 8-byte Folded Spill
	str	x0, [x8, #392]
	str	x1, [x8, #384]
	stur	w2, [x29, #-28]
	str	x3, [x8, #368]
	str	x4, [x8, #360]
	ldr	x9, [x8, #360]
	ldrb	w9, [x9]
	strb	w9, [sp, #195]
	ldr	x9, [x8, #360]
	ldrsh	w9, [x9, #2]
	add	w9, w9, #31
	mov	w10, #32                        // =0x20
	sdiv	w9, w9, w10
	strb	w9, [sp, #194]
	ldrsb	w9, [sp, #194]
	subs	w11, w9, #1
	sub	x10, x29, #240
	mov	w9, wzr
	str	w9, [x10, w11, sxtw #2]
	ldrsb	w10, [sp, #194]
	subs	w11, w10, #1
	add	x10, sp, #228
	str	x10, [sp, #176]                 // 8-byte Folded Spill
	str	w9, [x10, w11, sxtw #2]
	ldrsb	w10, [sp, #194]
	subs	w11, w10, #1
	add	x10, sp, #196
	str	x10, [sp, #168]                 // 8-byte Folded Spill
	str	w9, [x10, w11, sxtw #2]
	ldr	x1, [x8, #392]
	ldr	x8, [x8, #360]
	ldrsb	w2, [x8, #1]
	add	x0, sp, #260
	str	x0, [sp, #152]                  // 8-byte Folded Spill
	bl	uECC_vli_bytesToNative
	ldr	x10, [sp, #152]                 // 8-byte Folded Reload
	ldr	x12, [sp, #160]                 // 8-byte Folded Reload
	ldrsb	x11, [sp, #195]
	ldr	x8, [x12, #392]
	ldr	x9, [x12, #360]
	ldrsb	x9, [x9, #1]
	ldr	x12, [x12, #360]
	ldrsb	w2, [x12, #1]
	add	x0, x10, x11, lsl #2
	add	x1, x8, x9
	bl	uECC_vli_bytesToNative
	ldr	x8, [sp, #160]                  // 8-byte Folded Reload
	ldr	x0, [sp, #176]                  // 8-byte Folded Reload
	ldr	x1, [x8, #368]
	ldr	x8, [x8, #360]
	ldrsb	w2, [x8, #1]
	bl	uECC_vli_bytesToNative
	ldr	x10, [sp, #160]                 // 8-byte Folded Reload
	ldr	x0, [sp, #168]                  // 8-byte Folded Reload
	ldr	x8, [x10, #368]
	ldr	x9, [x10, #360]
	ldrsb	x9, [x9, #1]
	ldr	x10, [x10, #360]
	ldrsb	w2, [x10, #1]
	add	x1, x8, x9
	bl	uECC_vli_bytesToNative
	ldr	x0, [sp, #176]                  // 8-byte Folded Reload
	ldrb	w1, [sp, #195]
	bl	uECC_vli_isZero
	cbnz	w0, .LBB3_2
	b	.LBB3_1
.LBB3_1:
	ldrb	w1, [sp, #195]
	add	x0, sp, #196
	bl	uECC_vli_isZero
	cbz	w0, .LBB3_3
	b	.LBB3_2
.LBB3_2:
	stur	wzr, [x29, #-4]
	b	.LBB3_15
.LBB3_3:
	ldr	x8, [sp, #160]                  // 8-byte Folded Reload
	ldr	x8, [x8, #360]
	add	x0, x8, #36
	ldrb	w2, [sp, #194]
	add	x1, sp, #228
	bl	uECC_vli_cmp_unsafe
	sxtb	w8, w0
	subs	w8, w8, #1
	b.ne	.LBB3_5
	b	.LBB3_4
.LBB3_4:
	ldr	x8, [sp, #160]                  // 8-byte Folded Reload
	ldr	x8, [x8, #360]
	add	x0, x8, #36
	ldrb	w2, [sp, #194]
	add	x1, sp, #196
	bl	uECC_vli_cmp_unsafe
	sxtb	w8, w0
	subs	w8, w8, #1
	b.eq	.LBB3_6
	b	.LBB3_5
.LBB3_5:
	stur	wzr, [x29, #-4]
	b	.LBB3_15
.LBB3_6:
	ldr	x8, [sp, #160]                  // 8-byte Folded Reload
	ldr	x8, [x8, #360]
	add	x2, x8, #36
	ldrb	w3, [sp, #194]
	sub	x0, x29, #144
	str	x0, [sp, #136]                  // 8-byte Folded Spill
	add	x1, sp, #196
	bl	uECC_vli_modInv
	ldr	x8, [sp, #160]                  // 8-byte Folded Reload
	ldrsb	w9, [sp, #194]
	mov	w10, #1                         // =0x1
	str	w10, [sp, #148]                 // 4-byte Folded Spill
	subs	w10, w9, #1
	sub	x0, x29, #80
	str	x0, [sp, #104]                  // 8-byte Folded Spill
	mov	w9, wzr
	str	w9, [x0, w10, sxtw #2]
	ldr	x1, [x8, #384]
	ldur	w2, [x29, #-28]
	ldr	x3, [x8, #360]
	bl	bits2int
	ldr	x1, [sp, #104]                  // 8-byte Folded Reload
	ldr	x8, [sp, #160]                  // 8-byte Folded Reload
	ldr	x2, [sp, #136]                  // 8-byte Folded Reload
	ldr	x8, [x8, #360]
	add	x3, x8, #36
	ldrb	w4, [sp, #194]
	mov	x0, x1
	bl	uECC_vli_modMult
	ldr	x8, [sp, #160]                  // 8-byte Folded Reload
	ldr	x2, [sp, #136]                  // 8-byte Folded Reload
	ldr	x8, [x8, #360]
	add	x3, x8, #36
	ldrb	w4, [sp, #194]
	sub	x0, x29, #112
	str	x0, [sp, #112]                  // 8-byte Folded Spill
	add	x1, sp, #228
	bl	uECC_vli_modMult
	ldrb	w2, [sp, #195]
	sub	x0, x29, #208
	str	x0, [sp, #88]                   // 8-byte Folded Spill
	add	x1, sp, #260
	str	x1, [sp, #80]                   // 8-byte Folded Spill
	bl	uECC_vli_set
	ldr	x8, [sp, #80]                   // 8-byte Folded Reload
	ldr	x9, [sp, #88]                   // 8-byte Folded Reload
	ldrsb	x10, [sp, #195]
	add	x0, x9, x10, lsl #2
	ldrsb	x9, [sp, #195]
	add	x1, x8, x9, lsl #2
	ldrb	w2, [sp, #195]
	bl	uECC_vli_set
	ldr	x8, [sp, #160]                  // 8-byte Folded Reload
	ldr	x8, [x8, #360]
	add	x1, x8, #68
	ldrb	w2, [sp, #195]
	add	x0, sp, #432
	str	x0, [sp, #64]                   // 8-byte Folded Spill
	bl	uECC_vli_set
	ldr	x8, [sp, #160]                  // 8-byte Folded Reload
	ldr	x8, [x8, #360]
	add	x8, x8, #68
	ldrsb	x9, [sp, #195]
	add	x1, x8, x9, lsl #2
	ldrb	w2, [sp, #195]
	add	x0, sp, #400
	str	x0, [sp, #72]                   // 8-byte Folded Spill
	bl	uECC_vli_set
	ldr	x2, [sp, #64]                   // 8-byte Folded Reload
	ldr	x1, [sp, #88]                   // 8-byte Folded Reload
	ldr	x8, [sp, #160]                  // 8-byte Folded Reload
	ldr	x0, [sp, #136]                  // 8-byte Folded Reload
	ldr	x8, [x8, #360]
	add	x3, x8, #4
	ldrb	w4, [sp, #195]
	bl	uECC_vli_modSub
	ldr	x0, [sp, #64]                   // 8-byte Folded Reload
	ldr	x1, [sp, #72]                   // 8-byte Folded Reload
	ldr	x2, [sp, #88]                   // 8-byte Folded Reload
	ldr	x8, [sp, #160]                  // 8-byte Folded Reload
	ldrsb	x10, [sp, #195]
	mov	x9, x2
	add	x3, x9, x10, lsl #2
	ldr	x4, [x8, #360]
	bl	XYcZ_add
	ldr	x8, [sp, #160]                  // 8-byte Folded Reload
	ldr	x1, [sp, #136]                  // 8-byte Folded Reload
	ldr	x8, [x8, #360]
	add	x2, x8, #4
	ldrb	w3, [sp, #195]
	mov	x0, x1
	bl	uECC_vli_modInv
	ldr	x0, [sp, #88]                   // 8-byte Folded Reload
	ldr	x8, [sp, #160]                  // 8-byte Folded Reload
	ldr	x2, [sp, #136]                  // 8-byte Folded Reload
	ldrsb	x10, [sp, #195]
	mov	x9, x0
	add	x1, x9, x10, lsl #2
	ldr	x3, [x8, #360]
	bl	apply_z
	ldr	x10, [sp, #80]                  // 8-byte Folded Reload
	ldr	x8, [sp, #88]                   // 8-byte Folded Reload
	ldr	x0, [sp, #104]                  // 8-byte Folded Reload
	ldr	x9, [sp, #160]                  // 8-byte Folded Reload
	add	x11, sp, #336
	str	x11, [sp, #128]                 // 8-byte Folded Spill
                                        // kill: def $x11 killed $xzr
	str	xzr, [x9, #8]
	ldr	x11, [x9, #360]
	add	x11, x11, #68
	str	x11, [x9, #16]
	str	x10, [x9, #24]
	str	x8, [x9, #32]
	ldrb	w1, [sp, #194]
	bl	uECC_vli_numBits
	mov	w1, w0
	ldr	x0, [sp, #112]                  // 8-byte Folded Reload
	str	w1, [sp, #100]                  // 4-byte Folded Spill
	ldrb	w1, [sp, #194]
	bl	uECC_vli_numBits
	mov	w1, w0
	ldr	w0, [sp, #100]                  // 4-byte Folded Reload
	bl	smax
	mov	w8, w0
	ldr	x0, [sp, #104]                  // 8-byte Folded Reload
	strh	w8, [sp, #326]
	ldrsh	w8, [sp, #326]
	subs	w1, w8, #1
	bl	uECC_vli_testBit
	mov	w8, w0
	ldr	x0, [sp, #112]                  // 8-byte Folded Reload
	subs	w8, w8, #0
	cset	w8, ne
	str	w8, [sp, #124]                  // 4-byte Folded Spill
	ldrsh	w8, [sp, #326]
	subs	w1, w8, #1
	bl	uECC_vli_testBit
	ldr	w10, [sp, #124]                 // 4-byte Folded Reload
	ldr	x9, [sp, #128]                  // 8-byte Folded Reload
	ldr	x8, [sp, #160]                  // 8-byte Folded Reload
	subs	w11, w0, #0
	cset	w11, ne
	orr	w10, w10, w11, lsl #1
	ldr	x9, [x9, w10, sxtw #3]
	str	x9, [x8]
	ldr	x1, [x8]
	ldrb	w2, [sp, #195]
	sub	x0, x29, #240
	bl	uECC_vli_set
	ldr	x8, [sp, #160]                  // 8-byte Folded Reload
	ldr	x8, [x8]
	ldrsb	x9, [sp, #195]
	add	x1, x8, x9, lsl #2
	ldrb	w2, [sp, #195]
	add	x0, sp, #464
	bl	uECC_vli_set
	ldr	x0, [sp, #136]                  // 8-byte Folded Reload
	ldrb	w1, [sp, #195]
	bl	uECC_vli_clear
	ldr	w8, [sp, #148]                  // 4-byte Folded Reload
	stur	w8, [x29, #-144]
	ldrsh	w8, [sp, #326]
	subs	w8, w8, #2
	strh	w8, [sp, #324]
	b	.LBB3_7
.LBB3_7:                                // =>This Inner Loop Header: Depth=1
	ldrsh	w8, [sp, #324]
	tbnz	w8, #31, .LBB3_12
	b	.LBB3_8
.LBB3_8:                                //   in Loop: Header=BB3_7 Depth=1
	ldr	x9, [sp, #160]                  // 8-byte Folded Reload
	ldr	x8, [x9, #360]
	ldr	x8, [x8, #168]
	ldr	x3, [x9, #360]
	sub	x0, x29, #240
	add	x1, sp, #464
	sub	x2, x29, #144
	blr	x8
	ldrh	w1, [sp, #324]
	sub	x0, x29, #80
	bl	uECC_vli_testBit
	subs	w8, w0, #0
	cset	w8, ne
	str	w8, [sp, #60]                   // 4-byte Folded Spill
	ldrh	w1, [sp, #324]
	sub	x0, x29, #112
	bl	uECC_vli_testBit
	ldr	w9, [sp, #60]                   // 4-byte Folded Reload
	ldr	x8, [sp, #160]                  // 8-byte Folded Reload
	subs	w10, w0, #0
	cset	w10, ne
	orr	w9, w9, w10, lsl #1
	str	w9, [sp, #188]
	ldr	w9, [sp, #188]
	mov	w10, w9
	add	x9, sp, #336
	ldr	x9, [x9, x10, lsl #3]
	str	x9, [x8]
	ldr	x8, [x8]
	cbz	x8, .LBB3_10
	b	.LBB3_9
.LBB3_9:                                //   in Loop: Header=BB3_7 Depth=1
	ldr	x8, [sp, #160]                  // 8-byte Folded Reload
	ldr	x1, [x8]
	ldrb	w2, [sp, #195]
	add	x0, sp, #432
	str	x0, [sp, #16]                   // 8-byte Folded Spill
	bl	uECC_vli_set
	ldr	x8, [sp, #160]                  // 8-byte Folded Reload
	ldr	x8, [x8]
	ldrsb	x9, [sp, #195]
	add	x1, x8, x9, lsl #2
	ldrb	w2, [sp, #195]
	add	x0, sp, #400
	str	x0, [sp, #24]                   // 8-byte Folded Spill
	bl	uECC_vli_set
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	ldr	x1, [sp, #24]                   // 8-byte Folded Reload
	ldr	x8, [sp, #160]                  // 8-byte Folded Reload
	ldr	x3, [x8, #360]
	sub	x2, x29, #144
	str	x2, [sp, #40]                   // 8-byte Folded Spill
	bl	apply_z
	ldr	x2, [sp, #16]                   // 8-byte Folded Reload
	ldr	x8, [sp, #160]                  // 8-byte Folded Reload
	ldr	x8, [x8, #360]
	add	x3, x8, #4
	ldrb	w4, [sp, #195]
	add	x0, sp, #368
	str	x0, [sp, #48]                   // 8-byte Folded Spill
	sub	x1, x29, #240
	str	x1, [sp, #32]                   // 8-byte Folded Spill
	bl	uECC_vli_modSub
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	ldr	x1, [sp, #24]                   // 8-byte Folded Reload
	ldr	x2, [sp, #32]                   // 8-byte Folded Reload
	ldr	x8, [sp, #160]                  // 8-byte Folded Reload
	ldr	x4, [x8, #360]
	add	x3, sp, #464
	bl	XYcZ_add
	ldr	x8, [sp, #160]                  // 8-byte Folded Reload
	ldr	x1, [sp, #40]                   // 8-byte Folded Reload
	ldr	x2, [sp, #48]                   // 8-byte Folded Reload
	ldr	x3, [x8, #360]
	mov	x0, x1
	bl	uECC_vli_modMult_fast
	b	.LBB3_10
.LBB3_10:                               //   in Loop: Header=BB3_7 Depth=1
	b	.LBB3_11
.LBB3_11:                               //   in Loop: Header=BB3_7 Depth=1
	ldrh	w9, [sp, #324]
	mov	w8, #-1                         // =0xffffffff
	add	w8, w8, w9, uxth
	strh	w8, [sp, #324]
	b	.LBB3_7
.LBB3_12:
	ldr	x8, [sp, #160]                  // 8-byte Folded Reload
	ldr	x8, [x8, #360]
	add	x2, x8, #4
	ldrb	w3, [sp, #195]
	sub	x1, x29, #144
	str	x1, [sp]                        // 8-byte Folded Spill
	mov	x0, x1
	bl	uECC_vli_modInv
	ldr	x2, [sp]                        // 8-byte Folded Reload
	ldr	x8, [sp, #160]                  // 8-byte Folded Reload
	ldr	x3, [x8, #360]
	sub	x0, x29, #240
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	add	x1, sp, #464
	bl	apply_z
	ldr	x8, [sp, #160]                  // 8-byte Folded Reload
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8, #360]
	add	x0, x8, #36
	ldrb	w2, [sp, #194]
	bl	uECC_vli_cmp_unsafe
	sxtb	w8, w0
	subs	w8, w8, #1
	b.eq	.LBB3_14
	b	.LBB3_13
.LBB3_13:
	ldr	x8, [sp, #160]                  // 8-byte Folded Reload
	ldr	x8, [x8, #360]
	add	x2, x8, #36
	ldrb	w3, [sp, #194]
	sub	x1, x29, #240
	mov	x0, x1
	bl	uECC_vli_sub
	b	.LBB3_14
.LBB3_14:
	ldrb	w2, [sp, #195]
	sub	x0, x29, #240
	add	x1, sp, #228
	bl	uECC_vli_equal
	subs	w8, w0, #0
	cset	w8, eq
	stur	w8, [x29, #-4]
	b	.LBB3_15
.LBB3_15:
	ldur	w0, [x29, #-4]
	add	sp, sp, #736
	.cfi_def_cfa wsp, 32
	ldr	x28, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	.cfi_def_cfa_offset 0
	.cfi_restore w28
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end3:
	.size	uECC_verify, .Lfunc_end3-uECC_verify
	.cfi_endproc
                                        // -- End function
	.p2align	2                               // -- Begin function smax
	.type	smax,@function
smax:                                   // @smax
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	strh	w0, [sp, #14]
	strh	w1, [sp, #12]
	ldrsh	w8, [sp, #14]
	ldrsh	w9, [sp, #12]
	subs	w8, w8, w9
	b.le	.LBB4_2
	b	.LBB4_1
.LBB4_1:
	ldrsh	w8, [sp, #14]
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB4_3
.LBB4_2:
	ldrsh	w8, [sp, #12]
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB4_3
.LBB4_3:
	ldr	w0, [sp, #8]                    // 4-byte Folded Reload
	add	sp, sp, #16
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end4:
	.size	smax, .Lfunc_end4-smax
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym uECC_sign_with_k
	.addrsig_sym uECC_vli_isZero
	.addrsig_sym uECC_vli_cmp
	.addrsig_sym regularize_k
	.addrsig_sym EccPoint_mult
	.addrsig_sym uECC_get_rng
	.addrsig_sym uECC_vli_clear
	.addrsig_sym uECC_generate_random_int
	.addrsig_sym uECC_vli_modMult
	.addrsig_sym uECC_vli_modInv
	.addrsig_sym uECC_vli_nativeToBytes
	.addrsig_sym uECC_vli_bytesToNative
	.addrsig_sym uECC_vli_set
	.addrsig_sym bits2int
	.addrsig_sym uECC_vli_modAdd
	.addrsig_sym uECC_vli_numBits
	.addrsig_sym uECC_vli_mmod
	.addrsig_sym uECC_vli_cmp_unsafe
	.addrsig_sym uECC_vli_modSub
	.addrsig_sym XYcZ_add
	.addrsig_sym apply_z
	.addrsig_sym smax
	.addrsig_sym uECC_vli_testBit
	.addrsig_sym uECC_vli_modMult_fast
	.addrsig_sym uECC_vli_sub
	.addrsig_sym uECC_vli_equal
