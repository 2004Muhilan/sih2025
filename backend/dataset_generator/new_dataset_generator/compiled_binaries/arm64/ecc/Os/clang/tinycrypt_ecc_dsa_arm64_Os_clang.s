	.text
	.file	"tinycrypt_ecc_dsa.c"
	.globl	uECC_sign_with_k                // -- Begin function uECC_sign_with_k
	.p2align	2
	.type	uECC_sign_with_k,@function
uECC_sign_with_k:                       // @uECC_sign_with_k
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #240
	.cfi_def_cfa_offset 240
	stp	x29, x30, [sp, #144]            // 16-byte Folded Spill
	str	x27, [sp, #160]                 // 8-byte Folded Spill
	stp	x26, x25, [sp, #176]            // 16-byte Folded Spill
	stp	x24, x23, [sp, #192]            // 16-byte Folded Spill
	stp	x22, x21, [sp, #208]            // 16-byte Folded Spill
	stp	x20, x19, [sp, #224]            // 16-byte Folded Spill
	add	x29, sp, #144
	.cfi_def_cfa w29, 96
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w23, -40
	.cfi_offset w24, -48
	.cfi_offset w25, -56
	.cfi_offset w26, -64
	.cfi_offset w27, -80
	.cfi_offset w30, -88
	.cfi_offset w29, -96
	.cfi_remember_state
	ldrsh	w27, [x5, #2]
	ldrb	w25, [x5]
	mov	x23, x1
	mov	x26, x0
	sub	x8, x29, #32
	sub	x9, x29, #64
	adds	w10, w27, #31
	add	w11, w27, #62
	mov	x0, x3
	mov	w1, w25
	mov	x20, x5
	mov	x19, x4
	mov	x21, x3
	mov	w22, w2
	stp	x8, x9, [sp, #64]
	csel	w24, w11, w10, lt
	bl	uECC_vli_isZero
	cbnz	w0, .LBB0_3
// %bb.1:
	asr	w24, w24, #5
	add	x0, x20, #36
	mov	x1, x21
	mov	w2, w24
	bl	uECC_vli_cmp
	and	w8, w0, #0xff
	cmp	w8, #1
	b.ne	.LBB0_3
// %bb.2:
	sub	x1, x29, #32
	sub	x2, x29, #64
	mov	x0, x21
	mov	x3, x20
	and	w27, w27, #0xffff
	bl	regularize_k
	cmp	w0, #0
	add	x8, sp, #64
	mov	x0, sp
	cset	w9, eq
	add	x1, x20, #68
	add	w4, w27, #1
	ldr	x2, [x8, w9, uxtw #3]
	mov	x3, xzr
	mov	x5, x20
	bl	EccPoint_mult
	mov	x0, sp
	mov	w1, w25
	bl	uECC_vli_isZero
	cbz	w0, .LBB0_5
.LBB0_3:
	mov	w0, wzr
.LBB0_4:
	.cfi_def_cfa wsp, 240
	ldp	x20, x19, [sp, #224]            // 16-byte Folded Reload
	ldr	x27, [sp, #160]                 // 8-byte Folded Reload
	ldp	x22, x21, [sp, #208]            // 16-byte Folded Reload
	ldp	x24, x23, [sp, #192]            // 16-byte Folded Reload
	ldp	x26, x25, [sp, #176]            // 16-byte Folded Reload
	ldp	x29, x30, [sp, #144]            // 16-byte Folded Reload
	add	sp, sp, #240
	.cfi_def_cfa_offset 0
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w23
	.cfi_restore w24
	.cfi_restore w25
	.cfi_restore w26
	.cfi_restore w27
	.cfi_restore w30
	.cfi_restore w29
	ret
.LBB0_5:
	.cfi_restore_state
	bl	uECC_get_rng
	cbz	x0, .LBB0_7
// %bb.6:
	sub	x0, x29, #32
	add	x1, x20, #36
	mov	w2, w24
	bl	uECC_generate_random_int
	cbnz	w0, .LBB0_8
	b	.LBB0_4
.LBB0_7:
	sub	x0, x29, #32
	mov	w1, w24
	bl	uECC_vli_clear
	mov	w8, #1                          // =0x1
	stur	w8, [x29, #-32]
.LBB0_8:
	sub	x2, x29, #32
	add	x3, x20, #36
	mov	x0, x21
	mov	x1, x21
	mov	w4, w24
	bl	uECC_vli_modMult
	add	x2, x20, #36
	mov	x0, x21
	mov	x1, x21
	mov	w3, w24
	bl	uECC_vli_modInv
	sub	x2, x29, #32
	add	x3, x20, #36
	mov	x0, x21
	mov	x1, x21
	mov	w4, w24
	bl	uECC_vli_modMult
	ldrsb	w1, [x20, #1]
	mov	x2, sp
	mov	x0, x19
	bl	uECC_vli_nativeToBytes
	ldrsh	w8, [x20, #2]
	sub	x0, x29, #32
	mov	x1, x26
	adds	w9, w8, #7
	add	w8, w8, #14
	csel	w8, w8, w9, lt
	asr	w2, w8, #3
	bl	uECC_vli_bytesToNative
	sub	x8, x29, #64
	sub	x0, x29, #64
	mov	x1, sp
	add	x8, x8, w24, sxtb #2
	mov	w2, w25
	stur	wzr, [x8, #-4]
	bl	uECC_vli_set
	sub	x0, x29, #64
	sub	x1, x29, #32
	sub	x2, x29, #64
	add	x3, x20, #36
	mov	w4, w24
	bl	uECC_vli_modMult
	sub	x0, x29, #32
	mov	x1, x23
	mov	w2, w22
	mov	x3, x20
	bl	bits2int
	sub	x0, x29, #64
	sub	x1, x29, #32
	sub	x2, x29, #64
	add	x3, x20, #36
	mov	w4, w24
	bl	uECC_vli_modAdd
	sub	x0, x29, #64
	sub	x1, x29, #64
	add	x3, x20, #36
	mov	x2, x21
	mov	w4, w24
	bl	uECC_vli_modMult
	sub	x0, x29, #64
	mov	w1, w24
	bl	uECC_vli_numBits
	ldrsb	w1, [x20, #1]
	lsl	w8, w1, #3
	cmp	w8, w0, sxth
	mov	w0, wzr
	b.lt	.LBB0_4
// %bb.9:
	add	x0, x19, w1, sxtw
	sub	x2, x29, #64
	bl	uECC_vli_nativeToBytes
	mov	w0, #1                          // =0x1
	b	.LBB0_4
.Lfunc_end0:
	.size	uECC_sign_with_k, .Lfunc_end0-uECC_sign_with_k
	.cfi_endproc
                                        // -- End function
	.p2align	2                               // -- Begin function bits2int
	.type	bits2int,@function
bits2int:                               // @bits2int
	.cfi_startproc
// %bb.0:
	stp	x29, x30, [sp, #-64]!           // 16-byte Folded Spill
	.cfi_def_cfa_offset 64
	stp	x24, x23, [sp, #16]             // 16-byte Folded Spill
	stp	x22, x21, [sp, #32]             // 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             // 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 64
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w23, -40
	.cfi_offset w24, -48
	.cfi_offset w30, -56
	.cfi_offset w29, -64
	.cfi_remember_state
	ldrsh	w8, [x3, #2]
	mov	x22, x1
	mov	x19, x3
	mov	x20, x0
	adds	w9, w8, #7
	add	w10, w8, #14
	add	w24, w8, #62
	csel	w9, w10, w9, lt
	adds	w10, w8, #31
	csel	w8, w24, w10, lt
	asr	w9, w9, #3
	asr	w21, w8, #5
	cmp	w9, w2
	mov	w1, w21
	csel	w23, w9, w2, lo
	bl	uECC_vli_clear
	mov	x0, x20
	mov	x1, x22
	mov	w2, w23
	bl	uECC_vli_bytesToNative
	lsl	w8, w23, #3
	ldrsh	w9, [x19, #2]
	subs	w8, w8, w9
	b.ls	.LBB1_5
// %bb.1:
	cmp	w24, #63
	b.lo	.LBB1_4
// %bb.2:
	add	x9, x20, w21, uxtw #2
	mov	w11, #32                        // =0x20
	mov	w10, wzr
	sub	w11, w11, w8
.LBB1_3:                                // =>This Inner Loop Header: Depth=1
	ldr	w12, [x9, #-4]!
	cmp	x9, x20
	lsr	w13, w12, w8
	orr	w13, w13, w10
	lsl	w10, w12, w11
	str	w13, [x9]
	b.hi	.LBB1_3
.LBB1_4:
	add	x0, x19, #36
	mov	x1, x20
	mov	w2, w21
	bl	uECC_vli_cmp_unsafe
	and	w8, w0, #0xff
	cmp	w8, #1
	b.ne	.LBB1_6
.LBB1_5:
	.cfi_def_cfa wsp, 64
	ldp	x20, x19, [sp, #48]             // 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             // 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #64             // 16-byte Folded Reload
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
.LBB1_6:
	.cfi_restore_state
	add	x2, x19, #36
	mov	x0, x20
	mov	x1, x20
	mov	w3, w21
	.cfi_def_cfa wsp, 64
	ldp	x20, x19, [sp, #48]             // 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             // 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #64             // 16-byte Folded Reload
	.cfi_def_cfa_offset 0
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w23
	.cfi_restore w24
	.cfi_restore w30
	.cfi_restore w29
	b	uECC_vli_sub
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
	sub	sp, sp, #160
	.cfi_def_cfa_offset 160
	stp	x29, x30, [sp, #96]             // 16-byte Folded Spill
	stp	x24, x23, [sp, #112]            // 16-byte Folded Spill
	stp	x22, x21, [sp, #128]            // 16-byte Folded Spill
	stp	x20, x19, [sp, #144]            // 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 64
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w23, -40
	.cfi_offset w24, -48
	.cfi_offset w30, -56
	.cfi_offset w29, -64
	mov	x19, x4
	mov	x20, x3
	mov	w21, w2
	mov	x22, x1
	mov	x23, x0
	mov	w24, #64                        // =0x40
.LBB2_1:                                // =>This Inner Loop Header: Depth=1
	bl	uECC_get_rng
	cbz	x0, .LBB2_7
// %bb.2:                               //   in Loop: Header=BB2_1 Depth=1
	mov	x8, x0
	add	x0, sp, #32
	mov	w1, #64                         // =0x40
	blr	x8
	cbz	w0, .LBB2_7
// %bb.3:                               //   in Loop: Header=BB2_1 Depth=1
	ldrsh	w8, [x19, #2]
	mov	x0, sp
	add	x1, sp, #32
	add	x2, x19, #36
	adds	w9, w8, #31
	add	w8, w8, #62
	csel	w8, w8, w9, lt
	asr	w3, w8, #5
	bl	uECC_vli_mmod
	mov	x3, sp
	mov	x0, x23
	mov	x1, x22
	mov	w2, w21
	mov	x4, x20
	mov	x5, x19
	bl	uECC_sign_with_k
	cbnz	w0, .LBB2_6
// %bb.4:                               //   in Loop: Header=BB2_1 Depth=1
	subs	w24, w24, #1
	b.ne	.LBB2_1
// %bb.5:
	mov	w0, wzr
	b	.LBB2_7
.LBB2_6:
	mov	w0, #1                          // =0x1
.LBB2_7:
	.cfi_def_cfa wsp, 160
	ldp	x20, x19, [sp, #144]            // 16-byte Folded Reload
	ldp	x22, x21, [sp, #128]            // 16-byte Folded Reload
	ldp	x24, x23, [sp, #112]            // 16-byte Folded Reload
	ldp	x29, x30, [sp, #96]             // 16-byte Folded Reload
	add	sp, sp, #160
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
	stp	x29, x30, [sp, #-96]!           // 16-byte Folded Spill
	.cfi_def_cfa_offset 96
	stp	x28, x27, [sp, #16]             // 16-byte Folded Spill
	stp	x26, x25, [sp, #32]             // 16-byte Folded Spill
	stp	x24, x23, [sp, #48]             // 16-byte Folded Spill
	stp	x22, x21, [sp, #64]             // 16-byte Folded Spill
	stp	x20, x19, [sp, #80]             // 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 96
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w23, -40
	.cfi_offset w24, -48
	.cfi_offset w25, -56
	.cfi_offset w26, -64
	.cfi_offset w27, -72
	.cfi_offset w28, -80
	.cfi_offset w30, -88
	.cfi_offset w29, -96
	sub	sp, sp, #480
	ldrsh	w8, [x4, #2]
	mov	w23, w2
	mov	x26, x0
	ldrsb	w2, [x4, #1]
	mov	x24, x1
	mov	x10, sp
	adds	w9, w8, #31
	add	w8, w8, #62
	ldrb	w21, [x4]
	csel	w8, w8, w9, lt
	sub	x9, x29, #192
	add	x0, sp, #64
	asr	w20, w8, #5
	mov	x1, x26
	mov	x19, x4
	mov	x25, x3
	add	x22, sp, #64
	sxtb	x8, w20
	sub	x27, x8, #1
	add	x8, sp, #32
	str	wzr, [x9, x27, lsl #2]
	str	wzr, [x8, x27, lsl #2]
	str	wzr, [x10, x27, lsl #2]
	bl	uECC_vli_bytesToNative
	add	x22, x22, w21, sxtb #2
	ldrsb	x2, [x19, #1]
	add	x1, x26, x2
	mov	x0, x22
                                        // kill: def $w2 killed $w2 killed $x2
	bl	uECC_vli_bytesToNative
	ldrsb	w2, [x19, #1]
	add	x0, sp, #32
	mov	x1, x25
	bl	uECC_vli_bytesToNative
	ldrsb	x2, [x19, #1]
	mov	x0, sp
	add	x1, x25, x2
                                        // kill: def $w2 killed $w2 killed $x2
	bl	uECC_vli_bytesToNative
	add	x0, sp, #32
	mov	w1, w21
	bl	uECC_vli_isZero
	mov	w8, w0
	mov	w0, wzr
	cbnz	w8, .LBB3_13
// %bb.1:
	sxtb	x21, w21
	mov	x0, sp
	mov	w1, w21
	bl	uECC_vli_isZero
	cbnz	w0, .LBB3_12
// %bb.2:
	add	x0, x19, #36
	add	x1, sp, #32
	mov	w2, w20
	bl	uECC_vli_cmp_unsafe
	and	w8, w0, #0xff
	cmp	w8, #1
	b.ne	.LBB3_12
// %bb.3:
	add	x0, x19, #36
	mov	x1, sp
	mov	w2, w20
	bl	uECC_vli_cmp_unsafe
	and	w8, w0, #0xff
	cmp	w8, #1
	b.ne	.LBB3_12
// %bb.4:
	sub	x0, x29, #96
	mov	x1, sp
	add	x2, x19, #36
	mov	w3, w20
	bl	uECC_vli_modInv
	sub	x8, x29, #32
	sub	x0, x29, #32
	mov	x1, x24
	mov	w2, w23
	mov	x3, x19
	str	wzr, [x8, x27, lsl #2]
	bl	bits2int
	sub	x0, x29, #32
	sub	x1, x29, #32
	sub	x2, x29, #96
	add	x3, x19, #36
	mov	w4, w20
	bl	uECC_vli_modMult
	sub	x0, x29, #64
	add	x1, sp, #32
	sub	x2, x29, #96
	add	x3, x19, #36
	mov	w4, w20
	bl	uECC_vli_modMult
	sub	x0, x29, #160
	add	x1, sp, #64
	mov	w2, w21
	sub	x24, x29, #160
	add	x25, sp, #64
	bl	uECC_vli_set
	add	x23, x24, x21, lsl #2
	mov	x1, x22
	mov	w2, w21
	mov	x0, x23
	bl	uECC_vli_set
	add	x22, x19, #68
	add	x0, sp, #224
	mov	w2, w21
	mov	x1, x22
	bl	uECC_vli_set
	add	x1, x22, x21, lsl #2
	add	x0, sp, #192
	mov	w2, w21
	bl	uECC_vli_set
	sub	x0, x29, #96
	sub	x1, x29, #160
	add	x2, sp, #224
	add	x3, x19, #4
	mov	w4, w21
	bl	uECC_vli_modSub
	add	x0, sp, #224
	add	x1, sp, #192
	sub	x2, x29, #160
	mov	x3, x23
	mov	x4, x19
	bl	XYcZ_add
	sub	x0, x29, #96
	sub	x1, x29, #96
	add	x2, x19, #4
	mov	w3, w21
	bl	uECC_vli_modInv
	sub	x0, x29, #160
	sub	x2, x29, #96
	mov	x1, x23
	mov	x3, x19
	bl	apply_z
	sub	x0, x29, #32
	mov	w1, w20
	stp	xzr, x22, [sp, #128]
	stp	x25, x24, [sp, #144]
	bl	uECC_vli_numBits
	sxth	w22, w0
	sub	x0, x29, #64
	mov	w1, w20
	bl	uECC_vli_numBits
	sxth	w8, w0
	cmp	w22, w0, sxth
	sub	x0, x29, #32
	csel	w23, w22, w8, gt
	sub	w22, w23, #1
	mov	w1, w22
	bl	uECC_vli_testBit
	cmp	w0, #0
	sub	x0, x29, #64
	mov	w1, w22
	cset	w24, ne
	bl	uECC_vli_testBit
	ubfiz	x8, x24, #3, #32
	cmp	w0, #0
	add	x24, sp, #128
	cset	w9, ne
	sub	x0, x29, #192
	mov	w2, w21
	orr	x8, x8, x9, lsl #4
	ldr	x22, [x24, x8]
	mov	x1, x22
	bl	uECC_vli_set
	add	x1, x22, x21, lsl #2
	sub	x0, x29, #224
	mov	w2, w21
	bl	uECC_vli_set
	sub	x0, x29, #96
	mov	w1, w21
	bl	uECC_vli_clear
	mov	w9, #1                          // =0x1
	sub	w8, w23, #2
	stur	w9, [x29, #-96]
	tbnz	w8, #15, .LBB3_9
// %bb.5:
	sxth	w22, w8
.LBB3_6:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [x19, #168]
	sub	x0, x29, #192
	sub	x1, x29, #224
	sub	x2, x29, #96
	mov	x3, x19
	blr	x8
	sub	x0, x29, #32
	mov	w1, w22
	bl	uECC_vli_testBit
	cmp	w0, #0
	sub	x0, x29, #64
	mov	w1, w22
	cset	w23, ne
	bl	uECC_vli_testBit
	ubfiz	x8, x23, #3, #32
	cmp	w0, #0
	cset	w9, ne
	orr	x8, x8, x9, lsl #4
	ldr	x23, [x24, x8]
	cbz	x23, .LBB3_8
// %bb.7:                               //   in Loop: Header=BB3_6 Depth=1
	add	x0, sp, #224
	mov	x1, x23
	mov	w2, w21
	bl	uECC_vli_set
	add	x1, x23, x21, lsl #2
	add	x0, sp, #192
	mov	w2, w21
	bl	uECC_vli_set
	add	x0, sp, #224
	add	x1, sp, #192
	sub	x2, x29, #96
	mov	x3, x19
	bl	apply_z
	add	x0, sp, #160
	sub	x1, x29, #192
	add	x2, sp, #224
	add	x3, x19, #4
	mov	w4, w21
	bl	uECC_vli_modSub
	add	x0, sp, #224
	add	x1, sp, #192
	sub	x2, x29, #192
	sub	x3, x29, #224
	mov	x4, x19
	bl	XYcZ_add
	sub	x0, x29, #96
	sub	x1, x29, #96
	add	x2, sp, #160
	mov	x3, x19
	bl	uECC_vli_modMult_fast
.LBB3_8:                                //   in Loop: Header=BB3_6 Depth=1
	sxth	w8, w22
	sub	w22, w22, #1
	cmp	w8, #0
	b.gt	.LBB3_6
.LBB3_9:
	sub	x0, x29, #96
	sub	x1, x29, #96
	add	x2, x19, #4
	mov	w3, w21
	bl	uECC_vli_modInv
	sub	x0, x29, #192
	sub	x1, x29, #224
	sub	x2, x29, #96
	mov	x3, x19
	bl	apply_z
	add	x0, x19, #36
	sub	x1, x29, #192
	mov	w2, w20
	bl	uECC_vli_cmp_unsafe
	and	w8, w0, #0xff
	cmp	w8, #1
	b.eq	.LBB3_11
// %bb.10:
	sub	x0, x29, #192
	sub	x1, x29, #192
	add	x2, x19, #36
	mov	w3, w20
	bl	uECC_vli_sub
.LBB3_11:
	sub	x0, x29, #192
	add	x1, sp, #32
	mov	w2, w21
	bl	uECC_vli_equal
	cmp	w0, #0
	cset	w0, eq
	b	.LBB3_13
.LBB3_12:
	mov	w0, wzr
.LBB3_13:
	add	sp, sp, #480
	.cfi_def_cfa wsp, 96
	ldp	x20, x19, [sp, #80]             // 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             // 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             // 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             // 16-byte Folded Reload
	ldp	x28, x27, [sp, #16]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #96             // 16-byte Folded Reload
	.cfi_def_cfa_offset 0
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w23
	.cfi_restore w24
	.cfi_restore w25
	.cfi_restore w26
	.cfi_restore w27
	.cfi_restore w28
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end3:
	.size	uECC_verify, .Lfunc_end3-uECC_verify
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
