	.text
	.file	"tinycrypt_ecc.c"
	.globl	uECC_set_rng                    // -- Begin function uECC_set_rng
	.p2align	2
	.type	uECC_set_rng,@function
uECC_set_rng:                           // @uECC_set_rng
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	adrp	x9, g_rng_function
	str	x8, [x9, :lo12:g_rng_function]
	add	sp, sp, #16
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end0:
	.size	uECC_set_rng, .Lfunc_end0-uECC_set_rng
	.cfi_endproc
                                        // -- End function
	.globl	uECC_get_rng                    // -- Begin function uECC_get_rng
	.p2align	2
	.type	uECC_get_rng,@function
uECC_get_rng:                           // @uECC_get_rng
	.cfi_startproc
// %bb.0:
	adrp	x8, g_rng_function
	ldr	x0, [x8, :lo12:g_rng_function]
	ret
.Lfunc_end1:
	.size	uECC_get_rng, .Lfunc_end1-uECC_get_rng
	.cfi_endproc
                                        // -- End function
	.globl	uECC_curve_private_key_size     // -- Begin function uECC_curve_private_key_size
	.p2align	2
	.type	uECC_curve_private_key_size,@function
uECC_curve_private_key_size:            // @uECC_curve_private_key_size
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldrsh	w8, [x8, #2]
	add	w8, w8, #7
	mov	w9, #8                          // =0x8
	sdiv	w0, w8, w9
	add	sp, sp, #16
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end2:
	.size	uECC_curve_private_key_size, .Lfunc_end2-uECC_curve_private_key_size
	.cfi_endproc
                                        // -- End function
	.globl	uECC_curve_public_key_size      // -- Begin function uECC_curve_public_key_size
	.p2align	2
	.type	uECC_curve_public_key_size,@function
uECC_curve_public_key_size:             // @uECC_curve_public_key_size
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldrsb	w9, [x8, #1]
	mov	w8, #2                          // =0x2
	mul	w0, w8, w9
	add	sp, sp, #16
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end3:
	.size	uECC_curve_public_key_size, .Lfunc_end3-uECC_curve_public_key_size
	.cfi_endproc
                                        // -- End function
	.globl	uECC_vli_clear                  // -- Begin function uECC_vli_clear
	.p2align	2
	.type	uECC_vli_clear,@function
uECC_vli_clear:                         // @uECC_vli_clear
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	strb	w1, [sp, #7]
	strb	wzr, [sp, #6]
	b	.LBB4_1
.LBB4_1:                                // =>This Inner Loop Header: Depth=1
	ldrsb	w8, [sp, #6]
	ldrsb	w9, [sp, #7]
	subs	w8, w8, w9
	b.ge	.LBB4_4
	b	.LBB4_2
.LBB4_2:                                //   in Loop: Header=BB4_1 Depth=1
	ldr	x9, [sp, #8]
	ldrsb	x10, [sp, #6]
	mov	w8, wzr
	str	w8, [x9, x10, lsl #2]
	b	.LBB4_3
.LBB4_3:                                //   in Loop: Header=BB4_1 Depth=1
	ldrb	w8, [sp, #6]
	add	w8, w8, #1
	strb	w8, [sp, #6]
	b	.LBB4_1
.LBB4_4:
	add	sp, sp, #16
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end4:
	.size	uECC_vli_clear, .Lfunc_end4-uECC_vli_clear
	.cfi_endproc
                                        // -- End function
	.globl	uECC_vli_isZero                 // -- Begin function uECC_vli_isZero
	.p2align	2
	.type	uECC_vli_isZero,@function
uECC_vli_isZero:                        // @uECC_vli_isZero
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	strb	w1, [sp, #23]
	str	wzr, [sp, #16]
	strb	wzr, [sp, #15]
	b	.LBB5_1
.LBB5_1:                                // =>This Inner Loop Header: Depth=1
	ldrsb	w8, [sp, #15]
	ldrsb	w9, [sp, #23]
	subs	w8, w8, w9
	b.ge	.LBB5_4
	b	.LBB5_2
.LBB5_2:                                //   in Loop: Header=BB5_1 Depth=1
	ldr	x8, [sp, #24]
	ldrsb	x9, [sp, #15]
	ldr	w9, [x8, x9, lsl #2]
	ldr	w8, [sp, #16]
	orr	w8, w8, w9
	str	w8, [sp, #16]
	b	.LBB5_3
.LBB5_3:                                //   in Loop: Header=BB5_1 Depth=1
	ldrb	w8, [sp, #15]
	add	w8, w8, #1
	strb	w8, [sp, #15]
	b	.LBB5_1
.LBB5_4:
	ldr	w8, [sp, #16]
	subs	w8, w8, #0
	cset	w0, eq
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end5:
	.size	uECC_vli_isZero, .Lfunc_end5-uECC_vli_isZero
	.cfi_endproc
                                        // -- End function
	.globl	uECC_vli_testBit                // -- Begin function uECC_vli_testBit
	.p2align	2
	.type	uECC_vli_testBit,@function
uECC_vli_testBit:                       // @uECC_vli_testBit
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	strh	w1, [sp, #6]
	ldr	x8, [sp, #8]
	ldrsh	w9, [sp, #6]
	asr	w9, w9, #5
	ldr	w8, [x8, w9, sxtw #2]
	ldrsh	w9, [sp, #6]
	and	w10, w9, #0x1f
	mov	w9, #1                          // =0x1
	lsl	w9, w9, w10
	and	w0, w8, w9
	add	sp, sp, #16
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end6:
	.size	uECC_vli_testBit, .Lfunc_end6-uECC_vli_testBit
	.cfi_endproc
                                        // -- End function
	.globl	uECC_vli_numBits                // -- Begin function uECC_vli_numBits
	.p2align	2
	.type	uECC_vli_numBits,@function
uECC_vli_numBits:                       // @uECC_vli_numBits
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	strb	w1, [sp, #15]
	ldr	x0, [sp, #16]
	ldrb	w1, [sp, #15]
	bl	vli_numDigits
	strb	w0, [sp, #3]
	ldrsb	w8, [sp, #3]
	cbnz	w8, .LBB7_2
	b	.LBB7_1
.LBB7_1:
	sturh	wzr, [x29, #-2]
	b	.LBB7_7
.LBB7_2:
	ldr	x8, [sp, #16]
	ldrsb	w9, [sp, #3]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	str	w8, [sp, #4]
	str	wzr, [sp, #8]
	b	.LBB7_3
.LBB7_3:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #4]
	cbz	w8, .LBB7_6
	b	.LBB7_4
.LBB7_4:                                //   in Loop: Header=BB7_3 Depth=1
	ldr	w8, [sp, #4]
	lsr	w8, w8, #1
	str	w8, [sp, #4]
	b	.LBB7_5
.LBB7_5:                                //   in Loop: Header=BB7_3 Depth=1
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	b	.LBB7_3
.LBB7_6:
	ldrsb	w8, [sp, #3]
	subs	w8, w8, #1
	sxth	w9, w8
	ldr	w8, [sp, #8]
	add	w8, w8, w9, lsl #5
	sturh	w8, [x29, #-2]
	b	.LBB7_7
.LBB7_7:
	ldurh	w0, [x29, #-2]
	.cfi_def_cfa wsp, 48
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end7:
	.size	uECC_vli_numBits, .Lfunc_end7-uECC_vli_numBits
	.cfi_endproc
                                        // -- End function
	.p2align	2                               // -- Begin function vli_numDigits
	.type	vli_numDigits,@function
vli_numDigits:                          // @vli_numDigits
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	strb	w1, [sp, #7]
	ldrsb	w8, [sp, #7]
	subs	w8, w8, #1
	strb	w8, [sp, #6]
	b	.LBB8_1
.LBB8_1:                                // =>This Inner Loop Header: Depth=1
	ldrsb	w8, [sp, #6]
	mov	w9, #0                          // =0x0
	str	w9, [sp]                        // 4-byte Folded Spill
	tbnz	w8, #31, .LBB8_3
	b	.LBB8_2
.LBB8_2:                                //   in Loop: Header=BB8_1 Depth=1
	ldr	x8, [sp, #8]
	ldrsb	x9, [sp, #6]
	ldr	w8, [x8, x9, lsl #2]
	subs	w8, w8, #0
	cset	w8, eq
	str	w8, [sp]                        // 4-byte Folded Spill
	b	.LBB8_3
.LBB8_3:                                //   in Loop: Header=BB8_1 Depth=1
	ldr	w8, [sp]                        // 4-byte Folded Reload
	tbz	w8, #0, .LBB8_6
	b	.LBB8_4
.LBB8_4:                                //   in Loop: Header=BB8_1 Depth=1
	b	.LBB8_5
.LBB8_5:                                //   in Loop: Header=BB8_1 Depth=1
	ldrb	w9, [sp, #6]
	mov	w8, #-1                         // =0xffffffff
	add	w8, w8, w9, uxtb
	strb	w8, [sp, #6]
	b	.LBB8_1
.LBB8_6:
	ldrsb	w8, [sp, #6]
	add	w0, w8, #1
	add	sp, sp, #16
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end8:
	.size	vli_numDigits, .Lfunc_end8-vli_numDigits
	.cfi_endproc
                                        // -- End function
	.globl	uECC_vli_set                    // -- Begin function uECC_vli_set
	.p2align	2
	.type	uECC_vli_set,@function
uECC_vli_set:                           // @uECC_vli_set
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	strb	w2, [sp, #15]
	strb	wzr, [sp, #14]
	b	.LBB9_1
.LBB9_1:                                // =>This Inner Loop Header: Depth=1
	ldrsb	w8, [sp, #14]
	ldrsb	w9, [sp, #15]
	subs	w8, w8, w9
	b.ge	.LBB9_4
	b	.LBB9_2
.LBB9_2:                                //   in Loop: Header=BB9_1 Depth=1
	ldr	x8, [sp, #16]
	ldrsb	x9, [sp, #14]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #24]
	ldrsb	x10, [sp, #14]
	str	w8, [x9, x10, lsl #2]
	b	.LBB9_3
.LBB9_3:                                //   in Loop: Header=BB9_1 Depth=1
	ldrb	w8, [sp, #14]
	add	w8, w8, #1
	strb	w8, [sp, #14]
	b	.LBB9_1
.LBB9_4:
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end9:
	.size	uECC_vli_set, .Lfunc_end9-uECC_vli_set
	.cfi_endproc
                                        // -- End function
	.globl	uECC_vli_cmp_unsafe             // -- Begin function uECC_vli_cmp_unsafe
	.p2align	2
	.type	uECC_vli_cmp_unsafe,@function
uECC_vli_cmp_unsafe:                    // @uECC_vli_cmp_unsafe
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	strb	w2, [sp, #7]
	ldrsb	w8, [sp, #7]
	subs	w8, w8, #1
	strb	w8, [sp, #6]
	b	.LBB10_1
.LBB10_1:                               // =>This Inner Loop Header: Depth=1
	ldrsb	w8, [sp, #6]
	tbnz	w8, #31, .LBB10_9
	b	.LBB10_2
.LBB10_2:                               //   in Loop: Header=BB10_1 Depth=1
	ldr	x8, [sp, #16]
	ldrsb	x9, [sp, #6]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #8]
	ldrsb	x10, [sp, #6]
	ldr	w9, [x9, x10, lsl #2]
	subs	w8, w8, w9
	b.ls	.LBB10_4
	b	.LBB10_3
.LBB10_3:
	mov	w8, #1                          // =0x1
	strb	w8, [sp, #31]
	b	.LBB10_10
.LBB10_4:                               //   in Loop: Header=BB10_1 Depth=1
	ldr	x8, [sp, #16]
	ldrsb	x9, [sp, #6]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #8]
	ldrsb	x10, [sp, #6]
	ldr	w9, [x9, x10, lsl #2]
	subs	w8, w8, w9
	b.hs	.LBB10_6
	b	.LBB10_5
.LBB10_5:
	mov	w8, #255                        // =0xff
	strb	w8, [sp, #31]
	b	.LBB10_10
.LBB10_6:                               //   in Loop: Header=BB10_1 Depth=1
	b	.LBB10_7
.LBB10_7:                               //   in Loop: Header=BB10_1 Depth=1
	b	.LBB10_8
.LBB10_8:                               //   in Loop: Header=BB10_1 Depth=1
	ldrb	w9, [sp, #6]
	mov	w8, #-1                         // =0xffffffff
	add	w8, w8, w9, uxtb
	strb	w8, [sp, #6]
	b	.LBB10_1
.LBB10_9:
	strb	wzr, [sp, #31]
	b	.LBB10_10
.LBB10_10:
	ldrb	w0, [sp, #31]
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end10:
	.size	uECC_vli_cmp_unsafe, .Lfunc_end10-uECC_vli_cmp_unsafe
	.cfi_endproc
                                        // -- End function
	.globl	uECC_vli_equal                  // -- Begin function uECC_vli_equal
	.p2align	2
	.type	uECC_vli_equal,@function
uECC_vli_equal:                         // @uECC_vli_equal
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	strb	w2, [sp, #15]
	str	wzr, [sp, #8]
	ldrsb	w8, [sp, #15]
	subs	w8, w8, #1
	strb	w8, [sp, #7]
	b	.LBB11_1
.LBB11_1:                               // =>This Inner Loop Header: Depth=1
	ldrsb	w8, [sp, #7]
	tbnz	w8, #31, .LBB11_4
	b	.LBB11_2
.LBB11_2:                               //   in Loop: Header=BB11_1 Depth=1
	ldr	x8, [sp, #24]
	ldrsb	x9, [sp, #7]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #16]
	ldrsb	x10, [sp, #7]
	ldr	w9, [x9, x10, lsl #2]
	eor	w9, w8, w9
	ldr	w8, [sp, #8]
	orr	w8, w8, w9
	str	w8, [sp, #8]
	b	.LBB11_3
.LBB11_3:                               //   in Loop: Header=BB11_1 Depth=1
	ldrb	w9, [sp, #7]
	mov	w8, #-1                         // =0xffffffff
	add	w8, w8, w9, uxtb
	strb	w8, [sp, #7]
	b	.LBB11_1
.LBB11_4:
	ldr	w8, [sp, #8]
	subs	w8, w8, #0
	cset	w0, ne
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end11:
	.size	uECC_vli_equal, .Lfunc_end11-uECC_vli_equal
	.cfi_endproc
                                        // -- End function
	.globl	cond_set                        // -- Begin function cond_set
	.p2align	2
	.type	cond_set,@function
cond_set:                               // @cond_set
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, #12]
	str	w1, [sp, #8]
	str	w2, [sp, #4]
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #4]
	mul	w8, w8, w9
	ldr	w9, [sp, #8]
	ldr	w10, [sp, #4]
	subs	w10, w10, #0
	cset	w10, eq
	mul	w9, w9, w10
	orr	w0, w8, w9
	add	sp, sp, #16
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end12:
	.size	cond_set, .Lfunc_end12-cond_set
	.cfi_endproc
                                        // -- End function
	.globl	uECC_vli_sub                    // -- Begin function uECC_vli_sub
	.p2align	2
	.type	uECC_vli_sub,@function
uECC_vli_sub:                           // @uECC_vli_sub
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	strb	w3, [sp, #23]
	str	wzr, [sp, #16]
	strb	wzr, [sp, #15]
	b	.LBB13_1
.LBB13_1:                               // =>This Inner Loop Header: Depth=1
	ldrsb	w8, [sp, #15]
	ldrsb	w9, [sp, #23]
	subs	w8, w8, w9
	b.ge	.LBB13_4
	b	.LBB13_2
.LBB13_2:                               //   in Loop: Header=BB13_1 Depth=1
	ldur	x8, [x29, #-16]
	ldrsb	x9, [sp, #15]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #24]
	ldrsb	x10, [sp, #15]
	ldr	w9, [x9, x10, lsl #2]
	subs	w8, w8, w9
	ldr	w9, [sp, #16]
	subs	w8, w8, w9
	str	w8, [sp, #8]
	ldr	w8, [sp, #8]
	ldur	x9, [x29, #-16]
	ldrsb	x10, [sp, #15]
	ldr	w9, [x9, x10, lsl #2]
	subs	w8, w8, w9
	cset	w8, hi
	str	w8, [sp, #4]
	ldr	w0, [sp, #4]
	ldr	w1, [sp, #16]
	ldr	w8, [sp, #8]
	ldur	x9, [x29, #-16]
	ldrsb	x10, [sp, #15]
	ldr	w9, [x9, x10, lsl #2]
	subs	w8, w8, w9
	cset	w2, ne
	bl	cond_set
	str	w0, [sp, #16]
	ldr	w8, [sp, #8]
	ldur	x9, [x29, #-8]
	ldrsb	x10, [sp, #15]
	str	w8, [x9, x10, lsl #2]
	b	.LBB13_3
.LBB13_3:                               //   in Loop: Header=BB13_1 Depth=1
	ldrb	w8, [sp, #15]
	add	w8, w8, #1
	strb	w8, [sp, #15]
	b	.LBB13_1
.LBB13_4:
	ldr	w0, [sp, #16]
	.cfi_def_cfa wsp, 64
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end13:
	.size	uECC_vli_sub, .Lfunc_end13-uECC_vli_sub
	.cfi_endproc
                                        // -- End function
	.globl	uECC_vli_cmp                    // -- Begin function uECC_vli_cmp
	.p2align	2
	.type	uECC_vli_cmp,@function
uECC_vli_cmp:                           // @uECC_vli_cmp
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	sturb	w2, [x29, #-17]
	ldur	x1, [x29, #-8]
	ldur	x2, [x29, #-16]
	ldurb	w3, [x29, #-17]
	add	x0, sp, #28
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	bl	uECC_vli_sub
	mov	w8, w0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	subs	w8, w8, #0
	cset	w8, ne
	str	w8, [sp, #24]
	ldurb	w1, [x29, #-17]
	bl	uECC_vli_isZero
	str	w0, [sp, #20]
	ldr	w8, [sp, #20]
	subs	w8, w8, #0
	cset	w8, eq
	ldr	w10, [sp, #24]
	mov	w9, #2                          // =0x2
	mul	w9, w9, w10
	subs	w0, w8, w9
	.cfi_def_cfa wsp, 96
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end14:
	.size	uECC_vli_cmp, .Lfunc_end14-uECC_vli_cmp
	.cfi_endproc
                                        // -- End function
	.globl	uECC_vli_modAdd                 // -- Begin function uECC_vli_modAdd
	.p2align	2
	.type	uECC_vli_modAdd,@function
uECC_vli_modAdd:                        // @uECC_vli_modAdd
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	str	x3, [sp, #16]
	strb	w4, [sp, #15]
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	ldr	x2, [sp, #24]
	ldrb	w3, [sp, #15]
	bl	uECC_vli_add
	str	w0, [sp, #8]
	ldr	w8, [sp, #8]
	cbnz	w8, .LBB15_2
	b	.LBB15_1
.LBB15_1:
	ldr	x0, [sp, #16]
	ldur	x1, [x29, #-8]
	ldrb	w2, [sp, #15]
	bl	uECC_vli_cmp_unsafe
	sxtb	w8, w0
	subs	w8, w8, #1
	b.eq	.LBB15_3
	b	.LBB15_2
.LBB15_2:
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-8]
	ldr	x2, [sp, #16]
	ldrb	w3, [sp, #15]
	bl	uECC_vli_sub
	b	.LBB15_3
.LBB15_3:
	.cfi_def_cfa wsp, 64
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end15:
	.size	uECC_vli_modAdd, .Lfunc_end15-uECC_vli_modAdd
	.cfi_endproc
                                        // -- End function
	.p2align	2                               // -- Begin function uECC_vli_add
	.type	uECC_vli_add,@function
uECC_vli_add:                           // @uECC_vli_add
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	strb	w3, [sp, #23]
	str	wzr, [sp, #16]
	strb	wzr, [sp, #15]
	b	.LBB16_1
.LBB16_1:                               // =>This Inner Loop Header: Depth=1
	ldrsb	w8, [sp, #15]
	ldrsb	w9, [sp, #23]
	subs	w8, w8, w9
	b.ge	.LBB16_4
	b	.LBB16_2
.LBB16_2:                               //   in Loop: Header=BB16_1 Depth=1
	ldur	x8, [x29, #-16]
	ldrsb	x9, [sp, #15]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #24]
	ldrsb	x10, [sp, #15]
	ldr	w9, [x9, x10, lsl #2]
	add	w8, w8, w9
	ldr	w9, [sp, #16]
	add	w8, w8, w9
	str	w8, [sp, #8]
	ldr	w8, [sp, #8]
	ldur	x9, [x29, #-16]
	ldrsb	x10, [sp, #15]
	ldr	w9, [x9, x10, lsl #2]
	subs	w8, w8, w9
	cset	w8, lo
	str	w8, [sp, #4]
	ldr	w0, [sp, #4]
	ldr	w1, [sp, #16]
	ldr	w8, [sp, #8]
	ldur	x9, [x29, #-16]
	ldrsb	x10, [sp, #15]
	ldr	w9, [x9, x10, lsl #2]
	subs	w8, w8, w9
	cset	w2, ne
	bl	cond_set
	str	w0, [sp, #16]
	ldr	w8, [sp, #8]
	ldur	x9, [x29, #-8]
	ldrsb	x10, [sp, #15]
	str	w8, [x9, x10, lsl #2]
	b	.LBB16_3
.LBB16_3:                               //   in Loop: Header=BB16_1 Depth=1
	ldrb	w8, [sp, #15]
	add	w8, w8, #1
	strb	w8, [sp, #15]
	b	.LBB16_1
.LBB16_4:
	ldr	w0, [sp, #16]
	.cfi_def_cfa wsp, 64
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end16:
	.size	uECC_vli_add, .Lfunc_end16-uECC_vli_add
	.cfi_endproc
                                        // -- End function
	.globl	uECC_vli_modSub                 // -- Begin function uECC_vli_modSub
	.p2align	2
	.type	uECC_vli_modSub,@function
uECC_vli_modSub:                        // @uECC_vli_modSub
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	str	x3, [sp, #16]
	strb	w4, [sp, #15]
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	ldr	x2, [sp, #24]
	ldrb	w3, [sp, #15]
	bl	uECC_vli_sub
	str	w0, [sp, #8]
	ldr	w8, [sp, #8]
	cbz	w8, .LBB17_2
	b	.LBB17_1
.LBB17_1:
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-8]
	ldr	x2, [sp, #16]
	ldrb	w3, [sp, #15]
	bl	uECC_vli_add
	b	.LBB17_2
.LBB17_2:
	.cfi_def_cfa wsp, 64
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end17:
	.size	uECC_vli_modSub, .Lfunc_end17-uECC_vli_modSub
	.cfi_endproc
                                        // -- End function
	.globl	uECC_vli_mmod                   // -- Begin function uECC_vli_mmod
	.p2align	2
	.type	uECC_vli_mmod,@function
uECC_vli_mmod:                          // @uECC_vli_mmod
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #240
	.cfi_def_cfa_offset 240
	stp	x29, x30, [sp, #224]            // 16-byte Folded Spill
	add	x29, sp, #224
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	sturb	w3, [x29, #-25]
	add	x8, sp, #68
	str	x8, [sp, #48]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #56]
	ldursb	w8, [x29, #-25]
	lsl	w8, w8, #1
	lsl	w8, w8, #5
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	ldur	x0, [x29, #-24]
	ldurb	w1, [x29, #-25]
	bl	uECC_vli_numBits
	ldr	w8, [sp, #20]                   // 4-byte Folded Reload
	subs	w8, w8, w0, sxth
	strh	w8, [sp, #42]
	ldrsh	w8, [sp, #42]
	mov	w10, #32                        // =0x20
	sdiv	w8, w8, w10
	strb	w8, [sp, #41]
	ldrsh	w8, [sp, #42]
	sdiv	w9, w8, w10
	mul	w9, w9, w10
	subs	w8, w8, w9
	strb	w8, [sp, #40]
	str	wzr, [sp, #36]
	ldrb	w1, [sp, #41]
	sub	x0, x29, #92
	bl	uECC_vli_clear
	ldrsb	w8, [sp, #40]
	subs	w8, w8, #0
	b.le	.LBB18_6
	b	.LBB18_1
.LBB18_1:
	str	wzr, [sp, #44]
	b	.LBB18_2
.LBB18_2:                               // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #44]
	ldursb	w9, [x29, #-25]
	subs	w8, w8, w9
	b.hs	.LBB18_5
	b	.LBB18_3
.LBB18_3:                               //   in Loop: Header=BB18_2 Depth=1
	ldur	x8, [x29, #-24]
	ldr	w9, [sp, #44]
                                        // kill: def $x9 killed $w9
	ldr	w8, [x8, x9, lsl #2]
	ldrsb	w9, [sp, #40]
	lsl	w8, w8, w9
	ldr	w9, [sp, #36]
	orr	w8, w8, w9
	ldrsb	w9, [sp, #41]
	ldr	w10, [sp, #44]
	add	w10, w9, w10
	sub	x9, x29, #92
	str	w8, [x9, w10, uxtw #2]
	ldur	x8, [x29, #-24]
	ldr	w9, [sp, #44]
                                        // kill: def $x9 killed $w9
	ldr	w8, [x8, x9, lsl #2]
	ldrsb	w10, [sp, #40]
	mov	w9, #32                         // =0x20
	subs	w9, w9, w10
	lsr	w8, w8, w9
	str	w8, [sp, #36]
	b	.LBB18_4
.LBB18_4:                               //   in Loop: Header=BB18_2 Depth=1
	ldr	w8, [sp, #44]
	add	w8, w8, #1
	str	w8, [sp, #44]
	b	.LBB18_2
.LBB18_5:
	b	.LBB18_7
.LBB18_6:
	ldrsb	x9, [sp, #41]
	sub	x8, x29, #92
	add	x0, x8, x9, lsl #2
	ldur	x1, [x29, #-24]
	ldurb	w2, [x29, #-25]
	bl	uECC_vli_set
	b	.LBB18_7
.LBB18_7:
	mov	w8, #1                          // =0x1
	str	w8, [sp, #44]
	b	.LBB18_8
.LBB18_8:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB18_10 Depth 2
	ldrsh	w8, [sp, #42]
	tbnz	w8, #31, .LBB18_17
	b	.LBB18_9
.LBB18_9:                               //   in Loop: Header=BB18_8 Depth=1
	str	wzr, [sp, #32]
	strb	wzr, [sp, #31]
	b	.LBB18_10
.LBB18_10:                              //   Parent Loop BB18_8 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldrsb	w8, [sp, #31]
	ldursb	w9, [x29, #-25]
	subs	w8, w8, w9, lsl #1
	b.ge	.LBB18_15
	b	.LBB18_11
.LBB18_11:                              //   in Loop: Header=BB18_10 Depth=2
	ldr	w8, [sp, #44]
                                        // kill: def $x8 killed $w8
	add	x9, sp, #48
	ldr	x8, [x9, x8, lsl #3]
	ldrsb	x10, [sp, #31]
	ldr	w8, [x8, x10, lsl #2]
	ldrsb	x11, [sp, #31]
	sub	x10, x29, #92
	ldr	w10, [x10, x11, lsl #2]
	subs	w8, w8, w10
	ldr	w10, [sp, #32]
	subs	w8, w8, w10
	str	w8, [sp, #24]
	ldr	w8, [sp, #24]
	ldr	w10, [sp, #44]
                                        // kill: def $x10 killed $w10
	ldr	x9, [x9, x10, lsl #3]
	ldrsb	x10, [sp, #31]
	ldr	w9, [x9, x10, lsl #2]
	subs	w8, w8, w9
	b.eq	.LBB18_13
	b	.LBB18_12
.LBB18_12:                              //   in Loop: Header=BB18_10 Depth=2
	ldr	w8, [sp, #24]
	ldr	w9, [sp, #44]
	mov	w10, w9
	add	x9, sp, #48
	ldr	x9, [x9, x10, lsl #3]
	ldrsb	x10, [sp, #31]
	ldr	w9, [x9, x10, lsl #2]
	subs	w8, w8, w9
	cset	w8, hi
	str	w8, [sp, #32]
	b	.LBB18_13
.LBB18_13:                              //   in Loop: Header=BB18_10 Depth=2
	ldr	w8, [sp, #24]
	ldr	w10, [sp, #44]
	mov	w9, #1                          // =0x1
	subs	w10, w9, w10
	add	x9, sp, #48
	ldr	x9, [x9, w10, uxtw #3]
	ldrsb	x10, [sp, #31]
	str	w8, [x9, x10, lsl #2]
	b	.LBB18_14
.LBB18_14:                              //   in Loop: Header=BB18_10 Depth=2
	ldrb	w8, [sp, #31]
	add	w8, w8, #1
	strb	w8, [sp, #31]
	b	.LBB18_10
.LBB18_15:                              //   in Loop: Header=BB18_8 Depth=1
	ldr	w8, [sp, #44]
	ldr	w9, [sp, #32]
	eor	w8, w8, w9
	subs	w8, w8, #0
	cset	w8, eq
	str	w8, [sp, #44]
	ldurb	w1, [x29, #-25]
	sub	x0, x29, #92
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	bl	uECC_vli_rshift1
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldursb	x9, [x29, #-25]
	ldr	w11, [x8, x9, lsl #2]
	ldursb	w9, [x29, #-25]
	subs	w9, w9, #1
	add	x10, x8, w9, sxtw #2
	ldr	w9, [x10]
	orr	w9, w9, w11, lsl #31
	str	w9, [x10]
	ldursb	x9, [x29, #-25]
	add	x0, x8, x9, lsl #2
	ldurb	w1, [x29, #-25]
	bl	uECC_vli_rshift1
	b	.LBB18_16
.LBB18_16:                              //   in Loop: Header=BB18_8 Depth=1
	ldrh	w9, [sp, #42]
	mov	w8, #-1                         // =0xffffffff
	add	w8, w8, w9, uxth
	strh	w8, [sp, #42]
	b	.LBB18_8
.LBB18_17:
	ldur	x0, [x29, #-8]
	ldr	w8, [sp, #44]
	mov	w9, w8
	add	x8, sp, #48
	ldr	x1, [x8, x9, lsl #3]
	ldurb	w2, [x29, #-25]
	bl	uECC_vli_set
	.cfi_def_cfa wsp, 240
	ldp	x29, x30, [sp, #224]            // 16-byte Folded Reload
	add	sp, sp, #240
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end18:
	.size	uECC_vli_mmod, .Lfunc_end18-uECC_vli_mmod
	.cfi_endproc
                                        // -- End function
	.p2align	2                               // -- Begin function uECC_vli_rshift1
	.type	uECC_vli_rshift1,@function
uECC_vli_rshift1:                       // @uECC_vli_rshift1
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	strb	w1, [sp, #23]
	ldr	x8, [sp, #24]
	str	x8, [sp, #8]
	str	wzr, [sp, #4]
	ldrsb	x9, [sp, #23]
	ldr	x8, [sp, #24]
	add	x8, x8, x9, lsl #2
	str	x8, [sp, #24]
	b	.LBB19_1
.LBB19_1:                               // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #24]
	mov	x9, x8
	subs	x9, x9, #4
	str	x9, [sp, #24]
	ldr	x9, [sp, #8]
	subs	x8, x8, x9
	b.ls	.LBB19_3
	b	.LBB19_2
.LBB19_2:                               //   in Loop: Header=BB19_1 Depth=1
	ldr	x8, [sp, #24]
	ldr	w8, [x8]
	str	w8, [sp]
	ldr	w9, [sp]
	ldr	w8, [sp, #4]
	orr	w8, w8, w9, lsr #1
	ldr	x9, [sp, #24]
	str	w8, [x9]
	ldr	w8, [sp]
	lsl	w8, w8, #31
	str	w8, [sp, #4]
	b	.LBB19_1
.LBB19_3:
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end19:
	.size	uECC_vli_rshift1, .Lfunc_end19-uECC_vli_rshift1
	.cfi_endproc
                                        // -- End function
	.globl	uECC_vli_modMult                // -- Begin function uECC_vli_modMult
	.p2align	2
	.type	uECC_vli_modMult,@function
uECC_vli_modMult:                       // @uECC_vli_modMult
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #128
	.cfi_def_cfa_offset 128
	stp	x29, x30, [sp, #112]            // 16-byte Folded Spill
	add	x29, sp, #112
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	stur	x3, [x29, #-32]
	sturb	w4, [x29, #-33]
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-24]
	ldurb	w3, [x29, #-33]
	add	x0, sp, #12
	str	x0, [sp]                        // 8-byte Folded Spill
	bl	uECC_vli_mult
	ldr	x1, [sp]                        // 8-byte Folded Reload
	ldur	x0, [x29, #-8]
	ldur	x2, [x29, #-32]
	ldurb	w3, [x29, #-33]
	bl	uECC_vli_mmod
	.cfi_def_cfa wsp, 128
	ldp	x29, x30, [sp, #112]            // 16-byte Folded Reload
	add	sp, sp, #128
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end20:
	.size	uECC_vli_modMult, .Lfunc_end20-uECC_vli_modMult
	.cfi_endproc
                                        // -- End function
	.p2align	2                               // -- Begin function uECC_vli_mult
	.type	uECC_vli_mult,@function
uECC_vli_mult:                          // @uECC_vli_mult
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	strb	w3, [sp, #23]
	str	wzr, [sp, #16]
	str	wzr, [sp, #12]
	str	wzr, [sp, #8]
	strb	wzr, [sp, #6]
	b	.LBB21_1
.LBB21_1:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB21_3 Depth 2
	ldrsb	w8, [sp, #6]
	ldrsb	w9, [sp, #23]
	subs	w8, w8, w9
	b.ge	.LBB21_8
	b	.LBB21_2
.LBB21_2:                               //   in Loop: Header=BB21_1 Depth=1
	strb	wzr, [sp, #7]
	b	.LBB21_3
.LBB21_3:                               //   Parent Loop BB21_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldrsb	w8, [sp, #7]
	ldrsb	w9, [sp, #6]
	subs	w8, w8, w9
	b.gt	.LBB21_6
	b	.LBB21_4
.LBB21_4:                               //   in Loop: Header=BB21_3 Depth=2
	ldur	x8, [x29, #-16]
	ldrsb	x9, [sp, #7]
	ldr	w0, [x8, x9, lsl #2]
	ldr	x8, [sp, #24]
	ldrsb	w9, [sp, #6]
	ldrsb	w10, [sp, #7]
	subs	w9, w9, w10
	ldr	w1, [x8, w9, sxtw #2]
	add	x2, sp, #16
	add	x3, sp, #12
	add	x4, sp, #8
	bl	muladd
	b	.LBB21_5
.LBB21_5:                               //   in Loop: Header=BB21_3 Depth=2
	ldrb	w8, [sp, #7]
	add	w8, w8, #1
	strb	w8, [sp, #7]
	b	.LBB21_3
.LBB21_6:                               //   in Loop: Header=BB21_1 Depth=1
	ldr	w8, [sp, #16]
	ldur	x9, [x29, #-8]
	ldrsb	x10, [sp, #6]
	str	w8, [x9, x10, lsl #2]
	ldr	w8, [sp, #12]
	str	w8, [sp, #16]
	ldr	w8, [sp, #8]
	str	w8, [sp, #12]
	str	wzr, [sp, #8]
	b	.LBB21_7
.LBB21_7:                               //   in Loop: Header=BB21_1 Depth=1
	ldrb	w8, [sp, #6]
	add	w8, w8, #1
	strb	w8, [sp, #6]
	b	.LBB21_1
.LBB21_8:
	ldrb	w8, [sp, #23]
	strb	w8, [sp, #6]
	b	.LBB21_9
.LBB21_9:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB21_11 Depth 2
	ldrsb	w8, [sp, #6]
	ldrsb	w9, [sp, #23]
	lsl	w9, w9, #1
	subs	w9, w9, #1
	subs	w8, w8, w9
	b.ge	.LBB21_16
	b	.LBB21_10
.LBB21_10:                              //   in Loop: Header=BB21_9 Depth=1
	ldrsb	w8, [sp, #6]
	add	w8, w8, #1
	ldrsb	w9, [sp, #23]
	subs	w8, w8, w9
	strb	w8, [sp, #7]
	b	.LBB21_11
.LBB21_11:                              //   Parent Loop BB21_9 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldrsb	w8, [sp, #7]
	ldrsb	w9, [sp, #23]
	subs	w8, w8, w9
	b.ge	.LBB21_14
	b	.LBB21_12
.LBB21_12:                              //   in Loop: Header=BB21_11 Depth=2
	ldur	x8, [x29, #-16]
	ldrsb	x9, [sp, #7]
	ldr	w0, [x8, x9, lsl #2]
	ldr	x8, [sp, #24]
	ldrsb	w9, [sp, #6]
	ldrsb	w10, [sp, #7]
	subs	w9, w9, w10
	ldr	w1, [x8, w9, sxtw #2]
	add	x2, sp, #16
	add	x3, sp, #12
	add	x4, sp, #8
	bl	muladd
	b	.LBB21_13
.LBB21_13:                              //   in Loop: Header=BB21_11 Depth=2
	ldrb	w8, [sp, #7]
	add	w8, w8, #1
	strb	w8, [sp, #7]
	b	.LBB21_11
.LBB21_14:                              //   in Loop: Header=BB21_9 Depth=1
	ldr	w8, [sp, #16]
	ldur	x9, [x29, #-8]
	ldrsb	x10, [sp, #6]
	str	w8, [x9, x10, lsl #2]
	ldr	w8, [sp, #12]
	str	w8, [sp, #16]
	ldr	w8, [sp, #8]
	str	w8, [sp, #12]
	str	wzr, [sp, #8]
	b	.LBB21_15
.LBB21_15:                              //   in Loop: Header=BB21_9 Depth=1
	ldrb	w8, [sp, #6]
	add	w8, w8, #1
	strb	w8, [sp, #6]
	b	.LBB21_9
.LBB21_16:
	ldr	w8, [sp, #16]
	ldur	x9, [x29, #-8]
	ldrsb	w10, [sp, #23]
	lsl	w10, w10, #1
	subs	w10, w10, #1
	str	w8, [x9, w10, sxtw #2]
	.cfi_def_cfa wsp, 64
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end21:
	.size	uECC_vli_mult, .Lfunc_end21-uECC_vli_mult
	.cfi_endproc
                                        // -- End function
	.globl	uECC_vli_modMult_fast           // -- Begin function uECC_vli_modMult_fast
	.p2align	2
	.type	uECC_vli_modMult_fast,@function
uECC_vli_modMult_fast:                  // @uECC_vli_modMult_fast
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #128
	.cfi_def_cfa_offset 128
	stp	x29, x30, [sp, #112]            // 16-byte Folded Spill
	add	x29, sp, #112
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	stur	x3, [x29, #-32]
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-24]
	ldur	x8, [x29, #-32]
	ldrb	w3, [x8]
	add	x0, sp, #16
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	bl	uECC_vli_mult
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	ldur	x8, [x29, #-32]
	ldr	x8, [x8, #184]
	ldur	x0, [x29, #-8]
	blr	x8
	.cfi_def_cfa wsp, 128
	ldp	x29, x30, [sp, #112]            // 16-byte Folded Reload
	add	sp, sp, #128
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end22:
	.size	uECC_vli_modMult_fast, .Lfunc_end22-uECC_vli_modMult_fast
	.cfi_endproc
                                        // -- End function
	.globl	uECC_vli_modInv                 // -- Begin function uECC_vli_modInv
	.p2align	2
	.type	uECC_vli_modInv,@function
uECC_vli_modInv:                        // @uECC_vli_modInv
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #224
	.cfi_def_cfa_offset 224
	stp	x29, x30, [sp, #208]            // 16-byte Folded Spill
	add	x29, sp, #208
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	sub	x8, x29, #24
	str	x8, [sp, #40]                   // 8-byte Folded Spill
	str	x0, [x8, #16]
	str	x1, [x8, #8]
	str	x2, [x8]
	sturb	w3, [x29, #-25]
	ldr	x0, [x8, #8]
	ldurb	w1, [x29, #-25]
	bl	uECC_vli_isZero
	cbz	w0, .LBB23_2
	b	.LBB23_1
.LBB23_1:
	ldr	x8, [sp, #40]                   // 8-byte Folded Reload
	ldr	x0, [x8, #16]
	ldurb	w1, [x29, #-25]
	bl	uECC_vli_clear
	b	.LBB23_19
.LBB23_2:
	ldr	x8, [sp, #40]                   // 8-byte Folded Reload
	ldr	x1, [x8, #8]
	ldurb	w2, [x29, #-25]
	sub	x0, x29, #60
	bl	uECC_vli_set
	ldr	x8, [sp, #40]                   // 8-byte Folded Reload
	ldr	x1, [x8]
	ldurb	w2, [x29, #-25]
	sub	x0, x29, #92
	bl	uECC_vli_set
	ldurb	w1, [x29, #-25]
	add	x0, sp, #84
	bl	uECC_vli_clear
	mov	w8, #1                          // =0x1
	str	w8, [sp, #84]
	ldurb	w1, [x29, #-25]
	add	x0, sp, #52
	bl	uECC_vli_clear
	b	.LBB23_3
.LBB23_3:                               // =>This Inner Loop Header: Depth=1
	ldurb	w2, [x29, #-25]
	sub	x0, x29, #60
	sub	x1, x29, #92
	bl	uECC_vli_cmp_unsafe
	strb	w0, [sp, #51]
	sxtb	w8, w0
	cbz	w8, .LBB23_18
	b	.LBB23_4
.LBB23_4:                               //   in Loop: Header=BB23_3 Depth=1
	ldur	w8, [x29, #-60]
	tbnz	w8, #0, .LBB23_6
	b	.LBB23_5
.LBB23_5:                               //   in Loop: Header=BB23_3 Depth=1
	ldurb	w1, [x29, #-25]
	sub	x0, x29, #60
	bl	uECC_vli_rshift1
	ldr	x8, [sp, #40]                   // 8-byte Folded Reload
	ldr	x1, [x8]
	ldurb	w2, [x29, #-25]
	add	x0, sp, #84
	bl	vli_modInv_update
	b	.LBB23_17
.LBB23_6:                               //   in Loop: Header=BB23_3 Depth=1
	ldur	w8, [x29, #-92]
	tbnz	w8, #0, .LBB23_8
	b	.LBB23_7
.LBB23_7:                               //   in Loop: Header=BB23_3 Depth=1
	ldurb	w1, [x29, #-25]
	sub	x0, x29, #92
	bl	uECC_vli_rshift1
	ldr	x8, [sp, #40]                   // 8-byte Folded Reload
	ldr	x1, [x8]
	ldurb	w2, [x29, #-25]
	add	x0, sp, #52
	bl	vli_modInv_update
	b	.LBB23_16
.LBB23_8:                               //   in Loop: Header=BB23_3 Depth=1
	ldrsb	w8, [sp, #51]
	subs	w8, w8, #0
	b.le	.LBB23_12
	b	.LBB23_9
.LBB23_9:                               //   in Loop: Header=BB23_3 Depth=1
	ldurb	w3, [x29, #-25]
	sub	x1, x29, #60
	str	x1, [sp, #32]                   // 8-byte Folded Spill
	mov	x0, x1
	sub	x2, x29, #92
	bl	uECC_vli_sub
	ldr	x0, [sp, #32]                   // 8-byte Folded Reload
	ldurb	w1, [x29, #-25]
	bl	uECC_vli_rshift1
	ldurb	w2, [x29, #-25]
	add	x0, sp, #84
	add	x1, sp, #52
	bl	uECC_vli_cmp_unsafe
	sxtb	w8, w0
	tbz	w8, #31, .LBB23_11
	b	.LBB23_10
.LBB23_10:                              //   in Loop: Header=BB23_3 Depth=1
	ldr	x8, [sp, #40]                   // 8-byte Folded Reload
	ldr	x2, [x8]
	ldurb	w3, [x29, #-25]
	add	x1, sp, #84
	mov	x0, x1
	bl	uECC_vli_add
	b	.LBB23_11
.LBB23_11:                              //   in Loop: Header=BB23_3 Depth=1
	ldurb	w3, [x29, #-25]
	add	x1, sp, #84
	str	x1, [sp, #24]                   // 8-byte Folded Spill
	mov	x0, x1
	add	x2, sp, #52
	bl	uECC_vli_sub
	ldr	x8, [sp, #40]                   // 8-byte Folded Reload
	ldr	x0, [sp, #24]                   // 8-byte Folded Reload
	ldr	x1, [x8]
	ldurb	w2, [x29, #-25]
	bl	vli_modInv_update
	b	.LBB23_15
.LBB23_12:                              //   in Loop: Header=BB23_3 Depth=1
	ldurb	w3, [x29, #-25]
	sub	x1, x29, #92
	str	x1, [sp, #16]                   // 8-byte Folded Spill
	mov	x0, x1
	sub	x2, x29, #60
	bl	uECC_vli_sub
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	ldurb	w1, [x29, #-25]
	bl	uECC_vli_rshift1
	ldurb	w2, [x29, #-25]
	add	x0, sp, #52
	add	x1, sp, #84
	bl	uECC_vli_cmp_unsafe
	sxtb	w8, w0
	tbz	w8, #31, .LBB23_14
	b	.LBB23_13
.LBB23_13:                              //   in Loop: Header=BB23_3 Depth=1
	ldr	x8, [sp, #40]                   // 8-byte Folded Reload
	ldr	x2, [x8]
	ldurb	w3, [x29, #-25]
	add	x1, sp, #52
	mov	x0, x1
	bl	uECC_vli_add
	b	.LBB23_14
.LBB23_14:                              //   in Loop: Header=BB23_3 Depth=1
	ldurb	w3, [x29, #-25]
	add	x1, sp, #52
	str	x1, [sp, #8]                    // 8-byte Folded Spill
	mov	x0, x1
	add	x2, sp, #84
	bl	uECC_vli_sub
	ldr	x8, [sp, #40]                   // 8-byte Folded Reload
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	ldr	x1, [x8]
	ldurb	w2, [x29, #-25]
	bl	vli_modInv_update
	b	.LBB23_15
.LBB23_15:                              //   in Loop: Header=BB23_3 Depth=1
	b	.LBB23_16
.LBB23_16:                              //   in Loop: Header=BB23_3 Depth=1
	b	.LBB23_17
.LBB23_17:                              //   in Loop: Header=BB23_3 Depth=1
	b	.LBB23_3
.LBB23_18:
	ldr	x8, [sp, #40]                   // 8-byte Folded Reload
	ldr	x0, [x8, #16]
	ldurb	w2, [x29, #-25]
	add	x1, sp, #84
	bl	uECC_vli_set
	b	.LBB23_19
.LBB23_19:
	.cfi_def_cfa wsp, 224
	ldp	x29, x30, [sp, #208]            // 16-byte Folded Reload
	add	sp, sp, #224
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end23:
	.size	uECC_vli_modInv, .Lfunc_end23-uECC_vli_modInv
	.cfi_endproc
                                        // -- End function
	.p2align	2                               // -- Begin function vli_modInv_update
	.type	vli_modInv_update,@function
vli_modInv_update:                      // @vli_modInv_update
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	strb	w2, [sp, #15]
	str	wzr, [sp, #8]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	tbz	w8, #0, .LBB24_2
	b	.LBB24_1
.LBB24_1:
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-8]
	ldr	x2, [sp, #16]
	ldrb	w3, [sp, #15]
	bl	uECC_vli_add
	str	w0, [sp, #8]
	b	.LBB24_2
.LBB24_2:
	ldur	x0, [x29, #-8]
	ldrb	w1, [sp, #15]
	bl	uECC_vli_rshift1
	ldr	w8, [sp, #8]
	cbz	w8, .LBB24_4
	b	.LBB24_3
.LBB24_3:
	ldur	x8, [x29, #-8]
	ldrsb	w9, [sp, #15]
	subs	w9, w9, #1
	add	x9, x8, w9, sxtw #2
	ldr	w8, [x9]
	orr	w8, w8, #0x80000000
	str	w8, [x9]
	b	.LBB24_4
.LBB24_4:
	.cfi_def_cfa wsp, 48
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end24:
	.size	vli_modInv_update, .Lfunc_end24-vli_modInv_update
	.cfi_endproc
                                        // -- End function
	.globl	double_jacobian_default         // -- Begin function double_jacobian_default
	.p2align	2
	.type	double_jacobian_default,@function
double_jacobian_default:                // @double_jacobian_default
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #144
	.cfi_def_cfa_offset 144
	stp	x29, x30, [sp, #128]            // 16-byte Folded Spill
	add	x29, sp, #128
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	stur	x3, [x29, #-32]
	ldur	x8, [x29, #-32]
	ldrb	w8, [x8]
	strb	w8, [sp, #31]
	ldur	x0, [x29, #-24]
	ldrb	w1, [sp, #31]
	bl	uECC_vli_isZero
	cbz	w0, .LBB25_2
	b	.LBB25_1
.LBB25_1:
	b	.LBB25_6
.LBB25_2:
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-32]
	add	x0, sp, #64
	str	x0, [sp, #16]                   // 8-byte Folded Spill
	bl	uECC_vli_modSquare_fast
	ldr	x2, [sp, #16]                   // 8-byte Folded Reload
	ldur	x1, [x29, #-8]
	ldur	x3, [x29, #-32]
	add	x0, sp, #32
	bl	uECC_vli_modMult_fast
	ldr	x1, [sp, #16]                   // 8-byte Folded Reload
	ldur	x2, [x29, #-32]
	mov	x0, x1
	bl	uECC_vli_modSquare_fast
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-24]
	ldur	x3, [x29, #-32]
	bl	uECC_vli_modMult_fast
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-24]
	ldur	x2, [x29, #-32]
	bl	uECC_vli_modSquare_fast
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-8]
	ldur	x2, [x29, #-24]
	ldur	x8, [x29, #-32]
	add	x3, x8, #4
	ldrb	w4, [sp, #31]
	bl	uECC_vli_modAdd
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-24]
	ldur	x2, [x29, #-24]
	ldur	x8, [x29, #-32]
	add	x3, x8, #4
	ldrb	w4, [sp, #31]
	bl	uECC_vli_modAdd
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-8]
	ldur	x2, [x29, #-24]
	ldur	x8, [x29, #-32]
	add	x3, x8, #4
	ldrb	w4, [sp, #31]
	bl	uECC_vli_modSub
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-8]
	ldur	x2, [x29, #-24]
	ldur	x3, [x29, #-32]
	bl	uECC_vli_modMult_fast
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-8]
	ldur	x2, [x29, #-8]
	ldur	x8, [x29, #-32]
	add	x3, x8, #4
	ldrb	w4, [sp, #31]
	bl	uECC_vli_modAdd
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-8]
	ldur	x2, [x29, #-24]
	ldur	x8, [x29, #-32]
	add	x3, x8, #4
	ldrb	w4, [sp, #31]
	bl	uECC_vli_modAdd
	ldur	x0, [x29, #-8]
	mov	w1, wzr
	bl	uECC_vli_testBit
	cbz	w0, .LBB25_4
	b	.LBB25_3
.LBB25_3:
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-8]
	ldur	x8, [x29, #-32]
	add	x2, x8, #4
	ldrb	w3, [sp, #31]
	bl	uECC_vli_add
	str	w0, [sp, #24]
	ldur	x0, [x29, #-8]
	ldrb	w1, [sp, #31]
	bl	uECC_vli_rshift1
	ldr	w10, [sp, #24]
	ldur	x8, [x29, #-8]
	ldrsb	w9, [sp, #31]
	subs	w9, w9, #1
	add	x9, x8, w9, sxtw #2
	ldr	w8, [x9]
	orr	w8, w8, w10, lsl #31
	str	w8, [x9]
	b	.LBB25_5
.LBB25_4:
	ldur	x0, [x29, #-8]
	ldrb	w1, [sp, #31]
	bl	uECC_vli_rshift1
	b	.LBB25_5
.LBB25_5:
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-8]
	ldur	x2, [x29, #-32]
	bl	uECC_vli_modSquare_fast
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-24]
	ldur	x8, [x29, #-32]
	add	x3, x8, #4
	ldrb	w4, [sp, #31]
	add	x2, sp, #32
	str	x2, [sp]                        // 8-byte Folded Spill
	bl	uECC_vli_modSub
	ldr	x2, [sp]                        // 8-byte Folded Reload
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-24]
	ldur	x8, [x29, #-32]
	add	x3, x8, #4
	ldrb	w4, [sp, #31]
	bl	uECC_vli_modSub
	ldr	x1, [sp]                        // 8-byte Folded Reload
	ldur	x2, [x29, #-24]
	ldur	x8, [x29, #-32]
	add	x3, x8, #4
	ldrb	w4, [sp, #31]
	mov	x0, x1
	bl	uECC_vli_modSub
	ldr	x2, [sp]                        // 8-byte Folded Reload
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-8]
	ldur	x3, [x29, #-32]
	bl	uECC_vli_modMult_fast
	ldur	x1, [x29, #-8]
	ldur	x8, [x29, #-32]
	add	x3, x8, #4
	ldrb	w4, [sp, #31]
	add	x2, sp, #64
	str	x2, [sp, #8]                    // 8-byte Folded Spill
	mov	x0, x2
	bl	uECC_vli_modSub
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-24]
	ldrb	w2, [sp, #31]
	bl	uECC_vli_set
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-16]
	ldrb	w2, [sp, #31]
	bl	uECC_vli_set
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	ldur	x0, [x29, #-16]
	ldrb	w2, [sp, #31]
	bl	uECC_vli_set
	b	.LBB25_6
.LBB25_6:
	.cfi_def_cfa wsp, 144
	ldp	x29, x30, [sp, #128]            // 16-byte Folded Reload
	add	sp, sp, #144
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end25:
	.size	double_jacobian_default, .Lfunc_end25-double_jacobian_default
	.cfi_endproc
                                        // -- End function
	.p2align	2                               // -- Begin function uECC_vli_modSquare_fast
	.type	uECC_vli_modSquare_fast,@function
uECC_vli_modSquare_fast:                // @uECC_vli_modSquare_fast
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #16]
	ldr	x3, [sp, #8]
	bl	uECC_vli_modMult_fast
	.cfi_def_cfa wsp, 48
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end26:
	.size	uECC_vli_modSquare_fast, .Lfunc_end26-uECC_vli_modSquare_fast
	.cfi_endproc
                                        // -- End function
	.globl	x_side_default                  // -- Begin function x_side_default
	.p2align	2
	.type	x_side_default,@function
x_side_default:                         // @x_side_default
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	adrp	x8, .L__const.x_side_default._3
	add	x8, x8, :lo12:.L__const.x_side_default._3
	ldr	q0, [x8]
	add	x9, sp, #16
	str	x9, [sp]                        // 8-byte Folded Spill
	str	q0, [sp, #16]
	ldr	q0, [x8, #16]
	str	q0, [sp, #32]
	ldur	x8, [x29, #-24]
	ldrb	w8, [x8]
	strb	w8, [sp, #15]
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-24]
	bl	uECC_vli_modSquare_fast
	ldr	x2, [sp]                        // 8-byte Folded Reload
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-8]
	ldur	x8, [x29, #-24]
	ldrb	w4, [sp, #15]
	add	x3, x8, #4
	bl	uECC_vli_modSub
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-8]
	ldur	x2, [x29, #-16]
	ldur	x3, [x29, #-24]
	bl	uECC_vli_modMult_fast
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-8]
	ldur	x9, [x29, #-24]
	ldur	x8, [x29, #-24]
	ldrb	w4, [sp, #15]
	add	x2, x9, #132
	add	x3, x8, #4
	bl	uECC_vli_modAdd
	.cfi_def_cfa wsp, 96
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end27:
	.size	x_side_default, .Lfunc_end27-x_side_default
	.cfi_endproc
                                        // -- End function
	.globl	uECC_secp256r1                  // -- Begin function uECC_secp256r1
	.p2align	2
	.type	uECC_secp256r1,@function
uECC_secp256r1:                         // @uECC_secp256r1
	.cfi_startproc
// %bb.0:
	adrp	x0, curve_secp256r1
	add	x0, x0, :lo12:curve_secp256r1
	ret
.Lfunc_end28:
	.size	uECC_secp256r1, .Lfunc_end28-uECC_secp256r1
	.cfi_endproc
                                        // -- End function
	.globl	vli_mmod_fast_secp256r1         // -- Begin function vli_mmod_fast_secp256r1
	.p2align	2
	.type	vli_mmod_fast_secp256r1,@function
vli_mmod_fast_secp256r1:                // @vli_mmod_fast_secp256r1
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	mov	w2, #8                          // =0x8
	str	w2, [sp, #24]                   // 4-byte Folded Spill
	bl	uECC_vli_set
	ldr	w3, [sp, #24]                   // 4-byte Folded Reload
	add	x2, sp, #32
	str	x2, [sp, #16]                   // 8-byte Folded Spill
	str	wzr, [sp, #40]
	str	wzr, [sp, #36]
	str	wzr, [sp, #32]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #44]
	str	w8, [sp, #44]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #48]
	str	w8, [sp, #48]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #52]
	str	w8, [sp, #52]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #56]
	str	w8, [sp, #56]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #60]
	str	w8, [sp, #60]
	mov	x0, x2
	mov	x1, x2
	bl	uECC_vli_add
	ldr	x2, [sp, #16]                   // 8-byte Folded Reload
	ldr	w3, [sp, #24]                   // 4-byte Folded Reload
	str	w0, [sp, #28]
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-8]
	bl	uECC_vli_add
	ldr	x2, [sp, #16]                   // 8-byte Folded Reload
	ldr	w3, [sp, #24]                   // 4-byte Folded Reload
	ldr	w8, [sp, #28]
	add	w8, w8, w0
	str	w8, [sp, #28]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #48]
	str	w8, [sp, #44]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #52]
	str	w8, [sp, #48]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #56]
	str	w8, [sp, #52]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #60]
	str	w8, [sp, #56]
	str	wzr, [sp, #60]
	mov	x0, x2
	mov	x1, x2
	bl	uECC_vli_add
	ldr	x2, [sp, #16]                   // 8-byte Folded Reload
	ldr	w3, [sp, #24]                   // 4-byte Folded Reload
	ldr	w8, [sp, #28]
	add	w8, w8, w0
	str	w8, [sp, #28]
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-8]
	bl	uECC_vli_add
	ldr	x2, [sp, #16]                   // 8-byte Folded Reload
	ldr	w3, [sp, #24]                   // 4-byte Folded Reload
	ldr	w8, [sp, #28]
	add	w8, w8, w0
	str	w8, [sp, #28]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #32]
	str	w8, [sp, #32]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #36]
	str	w8, [sp, #36]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #40]
	str	w8, [sp, #40]
	str	wzr, [sp, #52]
	str	wzr, [sp, #48]
	str	wzr, [sp, #44]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #56]
	str	w8, [sp, #56]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #60]
	str	w8, [sp, #60]
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-8]
	bl	uECC_vli_add
	ldr	x2, [sp, #16]                   // 8-byte Folded Reload
	ldr	w3, [sp, #24]                   // 4-byte Folded Reload
	ldr	w8, [sp, #28]
	add	w8, w8, w0
	str	w8, [sp, #28]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #36]
	str	w8, [sp, #32]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #40]
	str	w8, [sp, #36]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #44]
	str	w8, [sp, #40]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #52]
	str	w8, [sp, #44]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #56]
	str	w8, [sp, #48]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #60]
	str	w8, [sp, #52]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #52]
	str	w8, [sp, #56]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #32]
	str	w8, [sp, #60]
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-8]
	bl	uECC_vli_add
	ldr	x2, [sp, #16]                   // 8-byte Folded Reload
	ldr	w3, [sp, #24]                   // 4-byte Folded Reload
	ldr	w8, [sp, #28]
	add	w8, w8, w0
	str	w8, [sp, #28]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #44]
	str	w8, [sp, #32]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #48]
	str	w8, [sp, #36]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #52]
	str	w8, [sp, #40]
	str	wzr, [sp, #52]
	str	wzr, [sp, #48]
	str	wzr, [sp, #44]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #32]
	str	w8, [sp, #56]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #40]
	str	w8, [sp, #60]
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-8]
	bl	uECC_vli_sub
	ldr	x2, [sp, #16]                   // 8-byte Folded Reload
	ldr	w3, [sp, #24]                   // 4-byte Folded Reload
	ldr	w8, [sp, #28]
	subs	w8, w8, w0
	str	w8, [sp, #28]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #48]
	str	w8, [sp, #32]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #52]
	str	w8, [sp, #36]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #56]
	str	w8, [sp, #40]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #60]
	str	w8, [sp, #44]
	str	wzr, [sp, #52]
	str	wzr, [sp, #48]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #36]
	str	w8, [sp, #56]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #44]
	str	w8, [sp, #60]
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-8]
	bl	uECC_vli_sub
	ldr	x2, [sp, #16]                   // 8-byte Folded Reload
	ldr	w3, [sp, #24]                   // 4-byte Folded Reload
	ldr	w8, [sp, #28]
	subs	w8, w8, w0
	str	w8, [sp, #28]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #52]
	str	w8, [sp, #32]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #56]
	str	w8, [sp, #36]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #60]
	str	w8, [sp, #40]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #32]
	str	w8, [sp, #44]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #36]
	str	w8, [sp, #48]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #40]
	str	w8, [sp, #52]
	str	wzr, [sp, #56]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #48]
	str	w8, [sp, #60]
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-8]
	bl	uECC_vli_sub
	ldr	x2, [sp, #16]                   // 8-byte Folded Reload
	ldr	w3, [sp, #24]                   // 4-byte Folded Reload
	ldr	w8, [sp, #28]
	subs	w8, w8, w0
	str	w8, [sp, #28]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #56]
	str	w8, [sp, #32]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #60]
	str	w8, [sp, #36]
	str	wzr, [sp, #40]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #36]
	str	w8, [sp, #44]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #40]
	str	w8, [sp, #48]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #44]
	str	w8, [sp, #52]
	str	wzr, [sp, #56]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #52]
	str	w8, [sp, #60]
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-8]
	bl	uECC_vli_sub
	ldr	w8, [sp, #28]
	subs	w8, w8, w0
	str	w8, [sp, #28]
	ldr	w8, [sp, #28]
	tbz	w8, #31, .LBB29_5
	b	.LBB29_1
.LBB29_1:
	b	.LBB29_2
.LBB29_2:                               // =>This Inner Loop Header: Depth=1
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-8]
	adrp	x8, curve_secp256r1
	add	x8, x8, :lo12:curve_secp256r1
	add	x2, x8, #4
	mov	w3, #8                          // =0x8
	bl	uECC_vli_add
	ldr	w8, [sp, #28]
	add	w8, w8, w0
	str	w8, [sp, #28]
	b	.LBB29_3
.LBB29_3:                               //   in Loop: Header=BB29_2 Depth=1
	ldr	w8, [sp, #28]
	tbnz	w8, #31, .LBB29_2
	b	.LBB29_4
.LBB29_4:
	b	.LBB29_11
.LBB29_5:
	b	.LBB29_6
.LBB29_6:                               // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #28]
	mov	w9, #1                          // =0x1
	str	w9, [sp, #12]                   // 4-byte Folded Spill
	cbnz	w8, .LBB29_8
	b	.LBB29_7
.LBB29_7:                               //   in Loop: Header=BB29_6 Depth=1
	ldur	x1, [x29, #-8]
	adrp	x8, curve_secp256r1
	add	x8, x8, :lo12:curve_secp256r1
	add	x0, x8, #4
	mov	w2, #8                          // =0x8
	bl	uECC_vli_cmp_unsafe
	sxtb	w8, w0
	subs	w8, w8, #1
	cset	w8, ne
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB29_8
.LBB29_8:                               //   in Loop: Header=BB29_6 Depth=1
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	tbz	w8, #0, .LBB29_10
	b	.LBB29_9
.LBB29_9:                               //   in Loop: Header=BB29_6 Depth=1
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-8]
	adrp	x8, curve_secp256r1
	add	x8, x8, :lo12:curve_secp256r1
	add	x2, x8, #4
	mov	w3, #8                          // =0x8
	bl	uECC_vli_sub
	ldr	w8, [sp, #28]
	subs	w8, w8, w0
	str	w8, [sp, #28]
	b	.LBB29_6
.LBB29_10:
	b	.LBB29_11
.LBB29_11:
	.cfi_def_cfa wsp, 96
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end29:
	.size	vli_mmod_fast_secp256r1, .Lfunc_end29-vli_mmod_fast_secp256r1
	.cfi_endproc
                                        // -- End function
	.globl	EccPoint_isZero                 // -- Begin function EccPoint_isZero
	.p2align	2
	.type	EccPoint_isZero,@function
EccPoint_isZero:                        // @EccPoint_isZero
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x8, [sp]
	ldrsb	w8, [x8]
	lsl	w1, w8, #1
	bl	uECC_vli_isZero
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end30:
	.size	EccPoint_isZero, .Lfunc_end30-EccPoint_isZero
	.cfi_endproc
                                        // -- End function
	.globl	apply_z                         // -- Begin function apply_z
	.p2align	2
	.type	apply_z,@function
apply_z:                                // @apply_z
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	stur	x3, [x29, #-32]
	ldur	x1, [x29, #-24]
	ldur	x2, [x29, #-32]
	add	x0, sp, #16
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	bl	uECC_vli_modSquare_fast
	ldr	x2, [sp, #8]                    // 8-byte Folded Reload
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-8]
	ldur	x3, [x29, #-32]
	bl	uECC_vli_modMult_fast
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	ldur	x2, [x29, #-24]
	ldur	x3, [x29, #-32]
	mov	x0, x1
	bl	uECC_vli_modMult_fast
	ldr	x2, [sp, #8]                    // 8-byte Folded Reload
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-16]
	ldur	x3, [x29, #-32]
	bl	uECC_vli_modMult_fast
	.cfi_def_cfa wsp, 96
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end31:
	.size	apply_z, .Lfunc_end31-apply_z
	.cfi_endproc
                                        // -- End function
	.globl	XYcZ_add                        // -- Begin function XYcZ_add
	.p2align	2
	.type	XYcZ_add,@function
XYcZ_add:                               // @XYcZ_add
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, #96]             // 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	stur	x3, [x29, #-32]
	stur	x4, [x29, #-40]
	ldur	x8, [x29, #-40]
	ldrb	w8, [x8]
	strb	w8, [sp, #23]
	ldur	x1, [x29, #-24]
	ldur	x2, [x29, #-8]
	ldur	x8, [x29, #-40]
	ldrb	w4, [sp, #23]
	add	x0, sp, #24
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	add	x3, x8, #4
	bl	uECC_vli_modSub
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	ldur	x2, [x29, #-40]
	mov	x0, x1
	bl	uECC_vli_modSquare_fast
	ldr	x2, [sp, #8]                    // 8-byte Folded Reload
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-8]
	ldur	x3, [x29, #-40]
	bl	uECC_vli_modMult_fast
	ldr	x2, [sp, #8]                    // 8-byte Folded Reload
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-24]
	ldur	x3, [x29, #-40]
	bl	uECC_vli_modMult_fast
	ldur	x0, [x29, #-32]
	ldur	x1, [x29, #-32]
	ldur	x2, [x29, #-16]
	ldur	x8, [x29, #-40]
	ldrb	w4, [sp, #23]
	add	x3, x8, #4
	bl	uECC_vli_modSub
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	ldur	x1, [x29, #-32]
	ldur	x2, [x29, #-40]
	bl	uECC_vli_modSquare_fast
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	ldur	x2, [x29, #-8]
	ldur	x8, [x29, #-40]
	ldrb	w4, [sp, #23]
	mov	x0, x1
	add	x3, x8, #4
	bl	uECC_vli_modSub
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	ldur	x2, [x29, #-24]
	ldur	x8, [x29, #-40]
	ldrb	w4, [sp, #23]
	mov	x0, x1
	add	x3, x8, #4
	bl	uECC_vli_modSub
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-24]
	ldur	x2, [x29, #-8]
	ldur	x8, [x29, #-40]
	ldrb	w4, [sp, #23]
	add	x3, x8, #4
	bl	uECC_vli_modSub
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-24]
	ldur	x3, [x29, #-40]
	bl	uECC_vli_modMult_fast
	ldr	x2, [sp, #8]                    // 8-byte Folded Reload
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-8]
	ldur	x8, [x29, #-40]
	ldrb	w4, [sp, #23]
	add	x3, x8, #4
	bl	uECC_vli_modSub
	ldur	x0, [x29, #-32]
	ldur	x1, [x29, #-32]
	ldur	x2, [x29, #-24]
	ldur	x3, [x29, #-40]
	bl	uECC_vli_modMult_fast
	ldur	x0, [x29, #-32]
	ldur	x1, [x29, #-32]
	ldur	x2, [x29, #-16]
	ldur	x8, [x29, #-40]
	ldrb	w4, [sp, #23]
	add	x3, x8, #4
	bl	uECC_vli_modSub
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	ldur	x0, [x29, #-24]
	ldrb	w2, [sp, #23]
	bl	uECC_vli_set
	.cfi_def_cfa wsp, 112
	ldp	x29, x30, [sp, #96]             // 16-byte Folded Reload
	add	sp, sp, #112
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end32:
	.size	XYcZ_add, .Lfunc_end32-XYcZ_add
	.cfi_endproc
                                        // -- End function
	.globl	EccPoint_mult                   // -- Begin function EccPoint_mult
	.p2align	2
	.type	EccPoint_mult,@function
EccPoint_mult:                          // @EccPoint_mult
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #336
	.cfi_def_cfa_offset 336
	stp	x29, x30, [sp, #304]            // 16-byte Folded Spill
	str	x28, [sp, #320]                 // 8-byte Folded Spill
	add	x29, sp, #304
	.cfi_def_cfa w29, 32
	.cfi_offset w28, -16
	.cfi_offset w30, -24
	.cfi_offset w29, -32
	sub	x8, x29, #48
	str	x8, [sp, #72]                   // 8-byte Folded Spill
	str	x0, [x8, #40]
	str	x1, [x8, #32]
	str	x2, [x8, #24]
	str	x3, [x8, #16]
	strh	w4, [x8, #14]
	str	x5, [x8]
	ldr	x9, [x8]
	ldrb	w9, [x9]
	strb	w9, [sp, #87]
	ldr	x1, [x8, #32]
	ldrb	w2, [sp, #87]
	sub	x8, x29, #112
	str	x8, [sp, #56]                   // 8-byte Folded Spill
	add	x0, x8, #32
	bl	uECC_vli_set
	ldr	x8, [sp, #72]                   // 8-byte Folded Reload
	ldr	x8, [x8, #32]
	ldrsb	x9, [sp, #87]
	ldrb	w2, [sp, #87]
	add	x10, sp, #128
	str	x10, [sp, #64]                  // 8-byte Folded Spill
	add	x0, x10, #32
	add	x1, x8, x9, lsl #2
	bl	uECC_vli_set
	ldr	x2, [sp, #56]                   // 8-byte Folded Reload
	ldr	x3, [sp, #64]                   // 8-byte Folded Reload
	ldr	x8, [sp, #72]                   // 8-byte Folded Reload
	ldr	x4, [x8, #16]
	ldr	x5, [x8]
	add	x0, x2, #32
	add	x1, x3, #32
	bl	XYcZ_initial_double
	ldr	x8, [sp, #72]                   // 8-byte Folded Reload
	ldrsh	w8, [x8, #14]
	subs	w8, w8, #2
	strh	w8, [sp, #94]
	b	.LBB33_1
.LBB33_1:                               // =>This Inner Loop Header: Depth=1
	ldrsh	w8, [sp, #94]
	subs	w8, w8, #0
	b.le	.LBB33_4
	b	.LBB33_2
.LBB33_2:                               //   in Loop: Header=BB33_1 Depth=1
	ldr	x8, [sp, #72]                   // 8-byte Folded Reload
	ldr	x0, [x8, #24]
	ldrh	w1, [sp, #94]
	bl	uECC_vli_testBit
	ldr	x8, [sp, #72]                   // 8-byte Folded Reload
	subs	w9, w0, #0
	cset	w9, eq
	str	w9, [sp, #88]
	ldr	w10, [sp, #88]
	mov	w9, #1                          // =0x1
	str	w9, [sp, #44]                   // 4-byte Folded Spill
	subs	w10, w9, w10
	mov	w10, w10
	mov	w12, w10
	sub	x10, x29, #112
	str	x10, [sp, #32]                  // 8-byte Folded Spill
	mov	x11, x10
	add	x0, x11, x12, lsl #5
	ldr	w11, [sp, #88]
	subs	w9, w9, w11
	mov	w9, w9
	mov	w12, w9
	add	x9, sp, #128
	str	x9, [sp, #48]                   // 8-byte Folded Spill
	mov	x11, x9
	add	x1, x11, x12, lsl #5
	ldr	w11, [sp, #88]
                                        // kill: def $x11 killed $w11
	add	x2, x10, x11, lsl #5
	ldr	w10, [sp, #88]
                                        // kill: def $x10 killed $w10
	add	x3, x9, x10, lsl #5
	ldr	x4, [x8]
	bl	XYcZ_addC
	ldr	x11, [sp, #32]                  // 8-byte Folded Reload
	ldr	w10, [sp, #44]                  // 4-byte Folded Reload
	ldr	x9, [sp, #48]                   // 8-byte Folded Reload
	ldr	x8, [sp, #72]                   // 8-byte Folded Reload
	ldr	w12, [sp, #88]
	mov	w13, w12
	mov	x12, x11
	add	x0, x12, x13, lsl #5
	ldr	w12, [sp, #88]
	mov	w13, w12
	mov	x12, x9
	add	x1, x12, x13, lsl #5
	ldr	w12, [sp, #88]
	subs	w12, w10, w12
	mov	w12, w12
                                        // kill: def $x12 killed $w12
	add	x2, x11, x12, lsl #5
	ldr	w11, [sp, #88]
	subs	w10, w10, w11
	mov	w10, w10
                                        // kill: def $x10 killed $w10
	add	x3, x9, x10, lsl #5
	ldr	x4, [x8]
	bl	XYcZ_add
	b	.LBB33_3
.LBB33_3:                               //   in Loop: Header=BB33_1 Depth=1
	ldrh	w9, [sp, #94]
	mov	w8, #-1                         // =0xffffffff
	add	w8, w8, w9, uxth
	strh	w8, [sp, #94]
	b	.LBB33_1
.LBB33_4:
	ldr	x8, [sp, #72]                   // 8-byte Folded Reload
	ldr	x0, [x8, #24]
	mov	w1, wzr
	bl	uECC_vli_testBit
	ldr	x8, [sp, #72]                   // 8-byte Folded Reload
	subs	w9, w0, #0
	cset	w9, eq
	str	w9, [sp, #88]
	ldr	w10, [sp, #88]
	mov	w9, #1                          // =0x1
	str	w9, [sp, #4]                    // 4-byte Folded Spill
	subs	w10, w9, w10
	mov	w10, w10
	mov	w12, w10
	sub	x10, x29, #112
	str	x10, [sp, #16]                  // 8-byte Folded Spill
	mov	x11, x10
	add	x0, x11, x12, lsl #5
	ldr	w11, [sp, #88]
	subs	w9, w9, w11
	mov	w9, w9
	mov	w12, w9
	add	x9, sp, #128
	str	x9, [sp, #24]                   // 8-byte Folded Spill
	mov	x11, x9
	add	x1, x11, x12, lsl #5
	ldr	w11, [sp, #88]
                                        // kill: def $x11 killed $w11
	add	x2, x10, x11, lsl #5
	ldr	w10, [sp, #88]
                                        // kill: def $x10 killed $w10
	add	x3, x9, x10, lsl #5
	ldr	x4, [x8]
	bl	XYcZ_addC
	ldr	x2, [sp, #16]                   // 8-byte Folded Reload
	ldr	x8, [sp, #72]                   // 8-byte Folded Reload
	add	x1, x2, #32
	ldr	x8, [x8]
	add	x3, x8, #4
	ldrb	w4, [sp, #87]
	add	x0, sp, #96
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	bl	uECC_vli_modSub
	ldr	w10, [sp, #4]                   // 4-byte Folded Reload
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [sp, #72]                   // 8-byte Folded Reload
	ldr	x9, [sp, #24]                   // 8-byte Folded Reload
	ldr	w11, [sp, #88]
	subs	w10, w10, w11
	mov	w10, w10
                                        // kill: def $x10 killed $w10
	add	x2, x9, x10, lsl #5
	ldr	x3, [x8]
	mov	x0, x1
	bl	uECC_vli_modMult_fast
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [sp, #72]                   // 8-byte Folded Reload
	ldr	x2, [x8, #32]
	ldr	x3, [x8]
	mov	x0, x1
	bl	uECC_vli_modMult_fast
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [sp, #72]                   // 8-byte Folded Reload
	ldr	x8, [x8]
	add	x2, x8, #4
	ldrb	w3, [sp, #87]
	mov	x0, x1
	bl	uECC_vli_modInv
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [sp, #72]                   // 8-byte Folded Reload
	ldr	x9, [x8, #32]
	ldrsb	x10, [sp, #87]
	add	x2, x9, x10, lsl #2
	ldr	x3, [x8]
	mov	x0, x1
	bl	uECC_vli_modMult_fast
	ldr	w10, [sp, #4]                   // 4-byte Folded Reload
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	ldr	x8, [sp, #72]                   // 8-byte Folded Reload
	ldr	w11, [sp, #88]
	subs	w10, w10, w11
	mov	w10, w10
                                        // kill: def $x10 killed $w10
	add	x2, x9, x10, lsl #5
	ldr	x3, [x8]
	mov	x0, x1
	bl	uECC_vli_modMult_fast
	ldr	w10, [sp, #4]                   // 4-byte Folded Reload
	ldr	x11, [sp, #16]                  // 8-byte Folded Reload
	ldr	x8, [sp, #72]                   // 8-byte Folded Reload
	ldr	x9, [sp, #24]                   // 8-byte Folded Reload
	ldr	w12, [sp, #88]
	mov	w13, w12
	mov	x12, x11
	add	x0, x12, x13, lsl #5
	ldr	w12, [sp, #88]
	mov	w13, w12
	mov	x12, x9
	add	x1, x12, x13, lsl #5
	ldr	w12, [sp, #88]
	subs	w12, w10, w12
	mov	w12, w12
                                        // kill: def $x12 killed $w12
	add	x2, x11, x12, lsl #5
	ldr	w11, [sp, #88]
	subs	w10, w10, w11
	mov	w10, w10
                                        // kill: def $x10 killed $w10
	add	x3, x9, x10, lsl #5
	ldr	x4, [x8]
	bl	XYcZ_add
	ldr	x2, [sp, #8]                    // 8-byte Folded Reload
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	ldr	x8, [sp, #72]                   // 8-byte Folded Reload
	ldr	x1, [sp, #24]                   // 8-byte Folded Reload
	ldr	x3, [x8]
	bl	apply_z
	ldr	x1, [sp, #16]                   // 8-byte Folded Reload
	ldr	x8, [sp, #72]                   // 8-byte Folded Reload
	ldr	x0, [x8, #40]
	ldrb	w2, [sp, #87]
	bl	uECC_vli_set
	ldr	x8, [sp, #72]                   // 8-byte Folded Reload
	ldr	x1, [sp, #24]                   // 8-byte Folded Reload
	ldr	x8, [x8, #40]
	ldrsb	x9, [sp, #87]
	add	x0, x8, x9, lsl #2
	ldrb	w2, [sp, #87]
	bl	uECC_vli_set
	.cfi_def_cfa wsp, 336
	ldr	x28, [sp, #320]                 // 8-byte Folded Reload
	ldp	x29, x30, [sp, #304]            // 16-byte Folded Reload
	add	sp, sp, #336
	.cfi_def_cfa_offset 0
	.cfi_restore w28
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end33:
	.size	EccPoint_mult, .Lfunc_end33-EccPoint_mult
	.cfi_endproc
                                        // -- End function
	.p2align	2                               // -- Begin function XYcZ_initial_double
	.type	XYcZ_initial_double,@function
XYcZ_initial_double:                    // @XYcZ_initial_double
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, #96]             // 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	stur	x3, [x29, #-32]
	stur	x4, [x29, #-40]
	str	x5, [sp, #48]
	ldr	x8, [sp, #48]
	ldrb	w8, [x8]
	strb	w8, [sp, #15]
	ldur	x8, [x29, #-40]
	cbz	x8, .LBB34_2
	b	.LBB34_1
.LBB34_1:
	ldur	x1, [x29, #-40]
	ldrb	w2, [sp, #15]
	add	x0, sp, #16
	bl	uECC_vli_set
	b	.LBB34_3
.LBB34_2:
	ldrb	w1, [sp, #15]
	add	x0, sp, #16
	bl	uECC_vli_clear
	mov	w8, #1                          // =0x1
	str	w8, [sp, #16]
	b	.LBB34_3
.LBB34_3:
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-8]
	ldrb	w2, [sp, #15]
	bl	uECC_vli_set
	ldur	x0, [x29, #-32]
	ldur	x1, [x29, #-16]
	ldrb	w2, [sp, #15]
	bl	uECC_vli_set
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	ldr	x3, [sp, #48]
	add	x2, sp, #16
	str	x2, [sp]                        // 8-byte Folded Spill
	bl	apply_z
	ldr	x2, [sp]                        // 8-byte Folded Reload
	ldr	x8, [sp, #48]
	ldr	x8, [x8, #168]
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	ldr	x3, [sp, #48]
	blr	x8
	ldr	x2, [sp]                        // 8-byte Folded Reload
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-32]
	ldr	x3, [sp, #48]
	bl	apply_z
	.cfi_def_cfa wsp, 112
	ldp	x29, x30, [sp, #96]             // 16-byte Folded Reload
	add	sp, sp, #112
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end34:
	.size	XYcZ_initial_double, .Lfunc_end34-XYcZ_initial_double
	.cfi_endproc
                                        // -- End function
	.p2align	2                               // -- Begin function XYcZ_addC
	.type	XYcZ_addC,@function
XYcZ_addC:                              // @XYcZ_addC
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #192
	.cfi_def_cfa_offset 192
	stp	x29, x30, [sp, #176]            // 16-byte Folded Spill
	add	x29, sp, #176
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	sub	x8, x29, #8
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	str	x0, [x8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	stur	x3, [x29, #-32]
	stur	x4, [x29, #-40]
	ldur	x9, [x29, #-40]
	ldrb	w9, [x9]
	strb	w9, [sp, #39]
	ldur	x1, [x29, #-24]
	ldr	x2, [x8]
	ldur	x8, [x29, #-40]
	ldrb	w4, [sp, #39]
	sub	x0, x29, #72
	str	x0, [sp]                        // 8-byte Folded Spill
	add	x3, x8, #4
	bl	uECC_vli_modSub
	ldr	x1, [sp]                        // 8-byte Folded Reload
	ldur	x2, [x29, #-40]
	mov	x0, x1
	bl	uECC_vli_modSquare_fast
	ldr	x2, [sp]                        // 8-byte Folded Reload
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	x0, [x8]
	ldr	x1, [x8]
	ldur	x3, [x29, #-40]
	bl	uECC_vli_modMult_fast
	ldr	x2, [sp]                        // 8-byte Folded Reload
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-24]
	ldur	x3, [x29, #-40]
	bl	uECC_vli_modMult_fast
	ldr	x0, [sp]                        // 8-byte Folded Reload
	ldur	x1, [x29, #-32]
	ldur	x2, [x29, #-16]
	ldur	x8, [x29, #-40]
	ldrb	w4, [sp, #39]
	add	x3, x8, #4
	bl	uECC_vli_modAdd
	ldur	x0, [x29, #-32]
	ldur	x1, [x29, #-32]
	ldur	x2, [x29, #-16]
	ldur	x8, [x29, #-40]
	ldrb	w4, [sp, #39]
	add	x3, x8, #4
	bl	uECC_vli_modSub
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldur	x1, [x29, #-24]
	ldr	x2, [x8]
	ldur	x8, [x29, #-40]
	ldrb	w4, [sp, #39]
	add	x0, sp, #72
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	add	x3, x8, #4
	bl	uECC_vli_modSub
	ldr	x2, [sp, #8]                    // 8-byte Folded Reload
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-16]
	ldur	x3, [x29, #-40]
	bl	uECC_vli_modMult_fast
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	x1, [x8]
	ldur	x2, [x29, #-24]
	ldur	x8, [x29, #-40]
	ldrb	w4, [sp, #39]
	add	x3, x8, #4
	bl	uECC_vli_modAdd
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-32]
	ldur	x2, [x29, #-40]
	bl	uECC_vli_modSquare_fast
	ldr	x2, [sp, #8]                    // 8-byte Folded Reload
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-24]
	ldur	x8, [x29, #-40]
	ldrb	w4, [sp, #39]
	add	x3, x8, #4
	bl	uECC_vli_modSub
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	x1, [x8]
	ldur	x2, [x29, #-24]
	ldur	x8, [x29, #-40]
	ldrb	w4, [sp, #39]
	add	x0, sp, #40
	str	x0, [sp, #24]                   // 8-byte Folded Spill
	add	x3, x8, #4
	bl	uECC_vli_modSub
	ldr	x2, [sp, #24]                   // 8-byte Folded Reload
	ldur	x0, [x29, #-32]
	ldur	x1, [x29, #-32]
	ldur	x3, [x29, #-40]
	bl	uECC_vli_modMult_fast
	ldur	x0, [x29, #-32]
	ldur	x1, [x29, #-32]
	ldur	x2, [x29, #-16]
	ldur	x8, [x29, #-40]
	ldrb	w4, [sp, #39]
	add	x3, x8, #4
	bl	uECC_vli_modSub
	ldr	x1, [sp]                        // 8-byte Folded Reload
	ldr	x0, [sp, #24]                   // 8-byte Folded Reload
	ldur	x2, [x29, #-40]
	bl	uECC_vli_modSquare_fast
	ldr	x2, [sp, #8]                    // 8-byte Folded Reload
	ldr	x1, [sp, #24]                   // 8-byte Folded Reload
	ldur	x8, [x29, #-40]
	ldrb	w4, [sp, #39]
	mov	x0, x1
	add	x3, x8, #4
	bl	uECC_vli_modSub
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	x1, [sp, #24]                   // 8-byte Folded Reload
	ldr	x2, [x8]
	ldur	x8, [x29, #-40]
	ldrb	w4, [sp, #39]
	add	x3, x8, #4
	bl	uECC_vli_modSub
	ldr	x2, [sp]                        // 8-byte Folded Reload
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	ldur	x3, [x29, #-40]
	mov	x0, x1
	bl	uECC_vli_modMult_fast
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	ldur	x0, [x29, #-16]
	ldur	x2, [x29, #-16]
	ldur	x8, [x29, #-40]
	ldrb	w4, [sp, #39]
	add	x3, x8, #4
	bl	uECC_vli_modSub
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	x1, [sp, #24]                   // 8-byte Folded Reload
	ldr	x0, [x8]
	ldrb	w2, [sp, #39]
	bl	uECC_vli_set
	.cfi_def_cfa wsp, 192
	ldp	x29, x30, [sp, #176]            // 16-byte Folded Reload
	add	sp, sp, #192
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end35:
	.size	XYcZ_addC, .Lfunc_end35-XYcZ_addC
	.cfi_endproc
                                        // -- End function
	.globl	regularize_k                    // -- Begin function regularize_k
	.p2align	2
	.type	regularize_k,@function
regularize_k:                           // @regularize_k
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	str	x3, [sp, #16]
	ldr	x8, [sp, #16]
	ldrsh	w8, [x8, #2]
	add	w8, w8, #31
	mov	w9, #32                         // =0x20
	sdiv	w8, w8, w9
	strb	w8, [sp, #15]
	ldr	x8, [sp, #16]
	ldrh	w8, [x8, #2]
	strh	w8, [sp, #12]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldr	x8, [sp, #16]
	ldrb	w3, [sp, #15]
	add	x2, x8, #36
	bl	uECC_vli_add
	mov	w8, #1                          // =0x1
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	cbnz	w0, .LBB36_4
	b	.LBB36_1
.LBB36_1:
	ldrsh	w9, [sp, #12]
	ldrsb	w8, [sp, #15]
	lsl	w10, w8, #2
	mov	w8, #0                          // =0x0
	subs	w9, w9, w10, lsl #3
	str	w8, [sp]                        // 4-byte Folded Spill
	b.ge	.LBB36_3
	b	.LBB36_2
.LBB36_2:
	ldur	x0, [x29, #-16]
	ldrh	w1, [sp, #12]
	bl	uECC_vli_testBit
	subs	w8, w0, #0
	cset	w8, ne
	str	w8, [sp]                        // 4-byte Folded Spill
	b	.LBB36_3
.LBB36_3:
	ldr	w8, [sp]                        // 4-byte Folded Reload
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB36_4
.LBB36_4:
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	and	w8, w8, #0x1
	str	w8, [sp, #8]
	ldr	x0, [sp, #24]
	ldur	x1, [x29, #-16]
	ldr	x8, [sp, #16]
	add	x2, x8, #36
	ldrb	w3, [sp, #15]
	bl	uECC_vli_add
	ldr	w0, [sp, #8]
	.cfi_def_cfa wsp, 64
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end36:
	.size	regularize_k, .Lfunc_end36-regularize_k
	.cfi_endproc
                                        // -- End function
	.globl	EccPoint_compute_public_key     // -- Begin function EccPoint_compute_public_key
	.p2align	2
	.type	EccPoint_compute_public_key,@function
EccPoint_compute_public_key:            // @EccPoint_compute_public_key
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #144
	.cfi_def_cfa_offset 144
	stp	x29, x30, [sp, #128]            // 16-byte Folded Spill
	add	x29, sp, #128
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-32]
	add	x8, sp, #16
	str	x8, [sp]                        // 8-byte Folded Spill
	add	x1, sp, #64
	mov	x8, x1
	str	x8, [sp, #16]
	add	x2, sp, #32
	mov	x8, x2
	str	x8, [sp, #24]
	ldur	x0, [x29, #-24]
	ldur	x3, [x29, #-32]
	bl	regularize_k
	ldr	x9, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldur	x0, [x29, #-16]
	ldur	x8, [x29, #-32]
	ldr	w10, [sp, #12]
	subs	w10, w10, #0
	cset	w11, eq
                                        // implicit-def: $x10
	mov	w10, w11
	and	x10, x10, #0x1
	ldr	x2, [x9, x10, lsl #3]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [x9, #2]
	add	w4, w9, #1
	ldur	x5, [x29, #-32]
	add	x1, x8, #68
	mov	x3, xzr
	bl	EccPoint_mult
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-32]
	bl	EccPoint_isZero
	cbz	w0, .LBB37_2
	b	.LBB37_1
.LBB37_1:
	stur	wzr, [x29, #-4]
	b	.LBB37_3
.LBB37_2:
	mov	w8, #1                          // =0x1
	stur	w8, [x29, #-4]
	b	.LBB37_3
.LBB37_3:
	ldur	w0, [x29, #-4]
	.cfi_def_cfa wsp, 144
	ldp	x29, x30, [sp, #128]            // 16-byte Folded Reload
	add	sp, sp, #144
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end37:
	.size	EccPoint_compute_public_key, .Lfunc_end37-EccPoint_compute_public_key
	.cfi_endproc
                                        // -- End function
	.globl	uECC_vli_nativeToBytes          // -- Begin function uECC_vli_nativeToBytes
	.p2align	2
	.type	uECC_vli_nativeToBytes,@function
uECC_vli_nativeToBytes:                 // @uECC_vli_nativeToBytes
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	w1, [sp, #20]
	str	x2, [sp, #8]
	strb	wzr, [sp, #7]
	b	.LBB38_1
.LBB38_1:                               // =>This Inner Loop Header: Depth=1
	ldrsb	w8, [sp, #7]
	ldr	w9, [sp, #20]
	subs	w8, w8, w9
	b.ge	.LBB38_4
	b	.LBB38_2
.LBB38_2:                               //   in Loop: Header=BB38_1 Depth=1
	ldr	w8, [sp, #20]
	subs	w8, w8, #1
	ldrsb	w9, [sp, #7]
	subs	w8, w8, w9
	str	w8, [sp]
	ldr	x8, [sp, #8]
	ldr	w9, [sp]
	mov	w11, #4                         // =0x4
	udiv	w9, w9, w11
	ldr	w8, [x8, w9, uxtw #2]
	ldr	w9, [sp]
	udiv	w10, w9, w11
	mul	w10, w10, w11
	subs	w10, w9, w10
	mov	w9, #8                          // =0x8
	mul	w9, w9, w10
	lsr	w8, w8, w9
	ldr	x9, [sp, #24]
	ldrsb	x10, [sp, #7]
	strb	w8, [x9, x10]
	b	.LBB38_3
.LBB38_3:                               //   in Loop: Header=BB38_1 Depth=1
	ldrb	w8, [sp, #7]
	add	w8, w8, #1
	strb	w8, [sp, #7]
	b	.LBB38_1
.LBB38_4:
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end38:
	.size	uECC_vli_nativeToBytes, .Lfunc_end38-uECC_vli_nativeToBytes
	.cfi_endproc
                                        // -- End function
	.globl	uECC_vli_bytesToNative          // -- Begin function uECC_vli_bytesToNative
	.p2align	2
	.type	uECC_vli_bytesToNative,@function
uECC_vli_bytesToNative:                 // @uECC_vli_bytesToNative
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	w2, [sp, #12]
	ldur	x0, [x29, #-8]
	ldr	w8, [sp, #12]
	add	w8, w8, #3
	mov	w9, #4                          // =0x4
	sdiv	w1, w8, w9
	bl	uECC_vli_clear
	strb	wzr, [sp, #11]
	b	.LBB39_1
.LBB39_1:                               // =>This Inner Loop Header: Depth=1
	ldrsb	w8, [sp, #11]
	ldr	w9, [sp, #12]
	subs	w8, w8, w9
	b.ge	.LBB39_4
	b	.LBB39_2
.LBB39_2:                               //   in Loop: Header=BB39_1 Depth=1
	ldr	w8, [sp, #12]
	subs	w8, w8, #1
	ldrsb	w9, [sp, #11]
	subs	w8, w8, w9
	str	w8, [sp, #4]
	ldr	x8, [sp, #16]
	ldrsb	x9, [sp, #11]
	ldrb	w8, [x8, x9]
	ldr	w9, [sp, #4]
	mov	w11, #4                         // =0x4
	udiv	w10, w9, w11
	mul	w10, w10, w11
	subs	w10, w9, w10
	mov	w9, #8                          // =0x8
	mul	w9, w9, w10
	lsl	w10, w8, w9
	ldur	x8, [x29, #-8]
	ldr	w9, [sp, #4]
	udiv	w9, w9, w11
	add	x9, x8, w9, uxtw #2
	ldr	w8, [x9]
	orr	w8, w8, w10
	str	w8, [x9]
	b	.LBB39_3
.LBB39_3:                               //   in Loop: Header=BB39_1 Depth=1
	ldrb	w8, [sp, #11]
	add	w8, w8, #1
	strb	w8, [sp, #11]
	b	.LBB39_1
.LBB39_4:
	.cfi_def_cfa wsp, 48
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end39:
	.size	uECC_vli_bytesToNative, .Lfunc_end39-uECC_vli_bytesToNative
	.cfi_endproc
                                        // -- End function
	.globl	uECC_generate_random_int        // -- Begin function uECC_generate_random_int
	.p2align	2
	.type	uECC_generate_random_int,@function
uECC_generate_random_int:               // @uECC_generate_random_int
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
	strb	w2, [sp, #23]
	mov	w8, #-1                         // =0xffffffff
	str	w8, [sp, #16]
	ldr	x0, [sp, #24]
	ldrb	w1, [sp, #23]
	bl	uECC_vli_numBits
	strh	w0, [sp, #10]
	adrp	x8, g_rng_function
	ldr	x8, [x8, :lo12:g_rng_function]
	cbnz	x8, .LBB40_2
	b	.LBB40_1
.LBB40_1:
	stur	wzr, [x29, #-4]
	b	.LBB40_12
.LBB40_2:
	str	wzr, [sp, #12]
	b	.LBB40_3
.LBB40_3:                               // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]
	subs	w8, w8, #64
	b.hs	.LBB40_11
	b	.LBB40_4
.LBB40_4:                               //   in Loop: Header=BB40_3 Depth=1
	adrp	x8, g_rng_function
	ldr	x8, [x8, :lo12:g_rng_function]
	ldur	x0, [x29, #-16]
	ldrsb	w9, [sp, #23]
	lsl	w1, w9, #2
	blr	x8
	cbnz	w0, .LBB40_6
	b	.LBB40_5
.LBB40_5:
	stur	wzr, [x29, #-4]
	b	.LBB40_12
.LBB40_6:                               //   in Loop: Header=BB40_3 Depth=1
	ldr	w8, [sp, #16]
	ldrsb	w9, [sp, #23]
	lsl	w9, w9, #2
	lsl	w9, w9, #3
	ldrsh	w10, [sp, #10]
	subs	w9, w9, w10
	sxth	w9, w9
	lsr	w10, w8, w9
	ldur	x8, [x29, #-16]
	ldrsb	w9, [sp, #23]
	subs	w9, w9, #1
	add	x9, x8, w9, sxtw #2
	ldr	w8, [x9]
	and	w8, w8, w10
	str	w8, [x9]
	ldur	x0, [x29, #-16]
	ldrb	w1, [sp, #23]
	bl	uECC_vli_isZero
	cbnz	w0, .LBB40_9
	b	.LBB40_7
.LBB40_7:                               //   in Loop: Header=BB40_3 Depth=1
	ldr	x0, [sp, #24]
	ldur	x1, [x29, #-16]
	ldrb	w2, [sp, #23]
	bl	uECC_vli_cmp
	sxtb	w8, w0
	subs	w8, w8, #1
	b.ne	.LBB40_9
	b	.LBB40_8
.LBB40_8:
	mov	w8, #1                          // =0x1
	stur	w8, [x29, #-4]
	b	.LBB40_12
.LBB40_9:                               //   in Loop: Header=BB40_3 Depth=1
	b	.LBB40_10
.LBB40_10:                              //   in Loop: Header=BB40_3 Depth=1
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB40_3
.LBB40_11:
	stur	wzr, [x29, #-4]
	b	.LBB40_12
.LBB40_12:
	ldur	w0, [x29, #-4]
	.cfi_def_cfa wsp, 64
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end40:
	.size	uECC_generate_random_int, .Lfunc_end40-uECC_generate_random_int
	.cfi_endproc
                                        // -- End function
	.globl	uECC_valid_point                // -- Begin function uECC_valid_point
	.p2align	2
	.type	uECC_valid_point,@function
uECC_valid_point:                       // @uECC_valid_point
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #128
	.cfi_def_cfa_offset 128
	stp	x29, x30, [sp, #112]            // 16-byte Folded Spill
	add	x29, sp, #112
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	ldur	x8, [x29, #-24]
	ldrb	w8, [x8]
	strb	w8, [sp, #23]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	bl	EccPoint_isZero
	cbz	w0, .LBB41_2
	b	.LBB41_1
.LBB41_1:
	mov	w8, #-1                         // =0xffffffff
	stur	w8, [x29, #-4]
	b	.LBB41_8
.LBB41_2:
	ldur	x8, [x29, #-24]
	add	x0, x8, #4
	ldur	x1, [x29, #-16]
	ldrb	w2, [sp, #23]
	bl	uECC_vli_cmp_unsafe
	sxtb	w8, w0
	subs	w8, w8, #1
	b.ne	.LBB41_4
	b	.LBB41_3
.LBB41_3:
	ldur	x8, [x29, #-24]
	add	x0, x8, #4
	ldur	x8, [x29, #-16]
	ldrsb	x9, [sp, #23]
	add	x1, x8, x9, lsl #2
	ldrb	w2, [sp, #23]
	bl	uECC_vli_cmp_unsafe
	sxtb	w8, w0
	subs	w8, w8, #1
	b.eq	.LBB41_5
	b	.LBB41_4
.LBB41_4:
	mov	w8, #-2                         // =0xfffffffe
	stur	w8, [x29, #-4]
	b	.LBB41_8
.LBB41_5:
	ldur	x8, [x29, #-16]
	ldrsb	x9, [sp, #23]
	add	x1, x8, x9, lsl #2
	ldur	x2, [x29, #-24]
	add	x0, sp, #56
	str	x0, [sp]                        // 8-byte Folded Spill
	bl	uECC_vli_modSquare_fast
	ldur	x8, [x29, #-24]
	ldr	x8, [x8, #176]
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-24]
	add	x0, sp, #24
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	blr	x8
	ldr	x0, [sp]                        // 8-byte Folded Reload
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	ldrb	w2, [sp, #23]
	bl	uECC_vli_equal
	cbz	w0, .LBB41_7
	b	.LBB41_6
.LBB41_6:
	mov	w8, #-3                         // =0xfffffffd
	stur	w8, [x29, #-4]
	b	.LBB41_8
.LBB41_7:
	stur	wzr, [x29, #-4]
	b	.LBB41_8
.LBB41_8:
	ldur	w0, [x29, #-4]
	.cfi_def_cfa wsp, 128
	ldp	x29, x30, [sp, #112]            // 16-byte Folded Reload
	add	sp, sp, #128
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end41:
	.size	uECC_valid_point, .Lfunc_end41-uECC_valid_point
	.cfi_endproc
                                        // -- End function
	.globl	uECC_valid_public_key           // -- Begin function uECC_valid_public_key
	.p2align	2
	.type	uECC_valid_public_key,@function
uECC_valid_public_key:                  // @uECC_valid_public_key
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, #96]             // 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	ldur	x1, [x29, #-16]
	ldur	x8, [x29, #-24]
	ldrsb	w2, [x8, #1]
	add	x0, sp, #8
	str	x0, [sp]                        // 8-byte Folded Spill
	bl	uECC_vli_bytesToNative
	ldr	x10, [sp]                       // 8-byte Folded Reload
	ldur	x8, [x29, #-24]
	ldrsb	x11, [x8]
	ldur	x8, [x29, #-16]
	ldur	x9, [x29, #-24]
	ldrsb	x9, [x9, #1]
	ldur	x12, [x29, #-24]
	ldrsb	w2, [x12, #1]
	add	x0, x10, x11, lsl #2
	add	x1, x8, x9
	bl	uECC_vli_bytesToNative
	ldr	x0, [sp]                        // 8-byte Folded Reload
	ldur	x8, [x29, #-24]
	add	x1, x8, #68
	mov	w2, #16                         // =0x10
	bl	uECC_vli_cmp_unsafe
	sxtb	w8, w0
	cbnz	w8, .LBB42_2
	b	.LBB42_1
.LBB42_1:
	mov	w8, #-4                         // =0xfffffffc
	stur	w8, [x29, #-4]
	b	.LBB42_3
.LBB42_2:
	ldur	x1, [x29, #-24]
	add	x0, sp, #8
	bl	uECC_valid_point
	stur	w0, [x29, #-4]
	b	.LBB42_3
.LBB42_3:
	ldur	w0, [x29, #-4]
	.cfi_def_cfa wsp, 112
	ldp	x29, x30, [sp, #96]             // 16-byte Folded Reload
	add	sp, sp, #112
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end42:
	.size	uECC_valid_public_key, .Lfunc_end42-uECC_valid_public_key
	.cfi_endproc
                                        // -- End function
	.globl	uECC_compute_public_key         // -- Begin function uECC_compute_public_key
	.p2align	2
	.type	uECC_compute_public_key,@function
uECC_compute_public_key:                // @uECC_compute_public_key
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #160
	.cfi_def_cfa_offset 160
	stp	x29, x30, [sp, #144]            // 16-byte Folded Spill
	add	x29, sp, #144
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-32]
	ldur	x1, [x29, #-16]
	ldur	x8, [x29, #-32]
	ldrsh	w8, [x8, #2]
	add	w8, w8, #7
	mov	w9, #8                          // =0x8
	sdiv	w2, w8, w9
	sub	x0, x29, #64
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	bl	uECC_vli_bytesToNative
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	ldur	x8, [x29, #-32]
	ldrsh	w8, [x8, #2]
	add	w8, w8, #31
	mov	w9, #32                         // =0x20
	sdiv	w1, w8, w9
	bl	uECC_vli_isZero
	cbz	w0, .LBB43_2
	b	.LBB43_1
.LBB43_1:
	stur	wzr, [x29, #-4]
	b	.LBB43_7
.LBB43_2:
	ldur	x8, [x29, #-32]
	add	x0, x8, #36
	ldur	x8, [x29, #-32]
	ldrsh	w8, [x8, #2]
	add	w8, w8, #31
	mov	w9, #32                         // =0x20
	sdiv	w2, w8, w9
	sub	x1, x29, #64
	bl	uECC_vli_cmp
	sxtb	w8, w0
	subs	w8, w8, #1
	b.eq	.LBB43_4
	b	.LBB43_3
.LBB43_3:
	stur	wzr, [x29, #-4]
	b	.LBB43_7
.LBB43_4:
	ldur	x2, [x29, #-32]
	add	x0, sp, #16
	sub	x1, x29, #64
	bl	EccPoint_compute_public_key
	cbnz	w0, .LBB43_6
	b	.LBB43_5
.LBB43_5:
	stur	wzr, [x29, #-4]
	b	.LBB43_7
.LBB43_6:
	ldur	x0, [x29, #-24]
	ldur	x8, [x29, #-32]
	ldrsb	w1, [x8, #1]
	add	x2, sp, #16
	str	x2, [sp]                        // 8-byte Folded Spill
	bl	uECC_vli_nativeToBytes
	ldr	x8, [sp]                        // 8-byte Folded Reload
	ldur	x9, [x29, #-24]
	ldur	x10, [x29, #-32]
	ldrsb	x10, [x10, #1]
	add	x0, x9, x10
	ldur	x9, [x29, #-32]
	ldrsb	w1, [x9, #1]
	ldur	x9, [x29, #-32]
	ldrsb	x9, [x9]
	add	x2, x8, x9, lsl #2
	bl	uECC_vli_nativeToBytes
	mov	w8, #1                          // =0x1
	stur	w8, [x29, #-4]
	b	.LBB43_7
.LBB43_7:
	ldur	w0, [x29, #-4]
	.cfi_def_cfa wsp, 160
	ldp	x29, x30, [sp, #144]            // 16-byte Folded Reload
	add	sp, sp, #160
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end43:
	.size	uECC_compute_public_key, .Lfunc_end43-uECC_compute_public_key
	.cfi_endproc
                                        // -- End function
	.p2align	2                               // -- Begin function muladd
	.type	muladd,@function
muladd:                                 // @muladd
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	w0, [sp, #44]
	str	w1, [sp, #40]
	str	x2, [sp, #32]
	str	x3, [sp, #24]
	str	x4, [sp, #16]
	ldr	w8, [sp, #44]
                                        // kill: def $x8 killed $w8
	ldr	w9, [sp, #40]
                                        // kill: def $x9 killed $w9
	mul	x8, x8, x9
	str	x8, [sp, #8]
	ldr	x8, [sp, #24]
	ldr	w8, [x8]
	mov	w9, w8
	ldr	x8, [sp, #32]
	ldr	w8, [x8]
                                        // kill: def $x8 killed $w8
	orr	x8, x8, x9, lsl #32
	str	x8, [sp]
	ldr	x9, [sp, #8]
	ldr	x8, [sp]
	add	x8, x8, x9
	str	x8, [sp]
	ldr	x10, [sp]
	ldr	x11, [sp, #8]
	ldr	x9, [sp, #16]
	ldr	w8, [x9]
	subs	x10, x10, x11
	cinc	w8, w8, lo
	str	w8, [x9]
	ldr	x8, [sp]
	lsr	x8, x8, #32
	ldr	x9, [sp, #24]
                                        // kill: def $w8 killed $w8 killed $x8
	str	w8, [x9]
	ldr	x8, [sp]
	ldr	x9, [sp, #32]
                                        // kill: def $w8 killed $w8 killed $x8
	str	w8, [x9]
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end44:
	.size	muladd, .Lfunc_end44-muladd
	.cfi_endproc
                                        // -- End function
	.type	g_rng_function,@object          // @g_rng_function
	.data
	.p2align	3, 0x0
g_rng_function:
	.xword	default_CSPRNG
	.size	g_rng_function, 8

	.type	.L__const.x_side_default._3,@object // @__const.x_side_default._3
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	2, 0x0
.L__const.x_side_default._3:
	.word	3                               // 0x3
	.word	0                               // 0x0
	.word	0                               // 0x0
	.word	0                               // 0x0
	.word	0                               // 0x0
	.word	0                               // 0x0
	.word	0                               // 0x0
	.word	0                               // 0x0
	.size	.L__const.x_side_default._3, 32

	.type	curve_secp256r1,@object         // @curve_secp256r1
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
curve_secp256r1:
	.byte	8                               // 0x8
	.byte	32                              // 0x20
	.hword	256                             // 0x100
	.word	4294967295                      // 0xffffffff
	.word	4294967295                      // 0xffffffff
	.word	4294967295                      // 0xffffffff
	.word	0                               // 0x0
	.word	0                               // 0x0
	.word	0                               // 0x0
	.word	1                               // 0x1
	.word	4294967295                      // 0xffffffff
	.word	4234356049                      // 0xfc632551
	.word	4089039554                      // 0xf3b9cac2
	.word	2803342980                      // 0xa7179e84
	.word	3169254061                      // 0xbce6faad
	.word	4294967295                      // 0xffffffff
	.word	4294967295                      // 0xffffffff
	.word	0                               // 0x0
	.word	4294967295                      // 0xffffffff
	.word	3633889942                      // 0xd898c296
	.word	4104206661                      // 0xf4a13945
	.word	770388896                       // 0x2deb33a0
	.word	1996717441                      // 0x77037d81
	.word	1671708914                      // 0x63a440f2
	.word	4173129445                      // 0xf8bce6e5
	.word	3777774151                      // 0xe12c4247
	.word	1796723186                      // 0x6b17d1f2
	.word	935285237                       // 0x37bf51f5
	.word	3417718888                      // 0xcbb64068
	.word	1798397646                      // 0x6b315ece
	.word	734933847                       // 0x2bce3357
	.word	2081398294                      // 0x7c0f9e16
	.word	2397563722                      // 0x8ee7eb4a
	.word	4263149467                      // 0xfe1a7f9b
	.word	1340293858                      // 0x4fe342e2
	.word	668098635                       // 0x27d2604b
	.word	1003371582                      // 0x3bce3c3e
	.word	3428036854                      // 0xcc53b0f6
	.word	1696401072                      // 0x651d06b0
	.word	1989707452                      // 0x769886bc
	.word	3018571093                      // 0xb3ebbd55
	.word	2855965671                      // 0xaa3a93e7
	.word	1522939352                      // 0x5ac635d8
	.zero	4
	.xword	double_jacobian_default
	.xword	x_side_default
	.xword	vli_mmod_fast_secp256r1
	.size	curve_secp256r1, 192

	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym uECC_vli_clear
	.addrsig_sym uECC_vli_isZero
	.addrsig_sym uECC_vli_testBit
	.addrsig_sym uECC_vli_numBits
	.addrsig_sym vli_numDigits
	.addrsig_sym uECC_vli_set
	.addrsig_sym uECC_vli_cmp_unsafe
	.addrsig_sym uECC_vli_equal
	.addrsig_sym cond_set
	.addrsig_sym uECC_vli_sub
	.addrsig_sym uECC_vli_cmp
	.addrsig_sym uECC_vli_modAdd
	.addrsig_sym uECC_vli_add
	.addrsig_sym uECC_vli_modSub
	.addrsig_sym uECC_vli_mmod
	.addrsig_sym uECC_vli_rshift1
	.addrsig_sym uECC_vli_mult
	.addrsig_sym uECC_vli_modMult_fast
	.addrsig_sym uECC_vli_modInv
	.addrsig_sym vli_modInv_update
	.addrsig_sym double_jacobian_default
	.addrsig_sym uECC_vli_modSquare_fast
	.addrsig_sym x_side_default
	.addrsig_sym vli_mmod_fast_secp256r1
	.addrsig_sym EccPoint_isZero
	.addrsig_sym apply_z
	.addrsig_sym XYcZ_add
	.addrsig_sym EccPoint_mult
	.addrsig_sym XYcZ_initial_double
	.addrsig_sym XYcZ_addC
	.addrsig_sym regularize_k
	.addrsig_sym EccPoint_compute_public_key
	.addrsig_sym uECC_vli_nativeToBytes
	.addrsig_sym uECC_vli_bytesToNative
	.addrsig_sym uECC_valid_point
	.addrsig_sym default_CSPRNG
	.addrsig_sym muladd
	.addrsig_sym g_rng_function
	.addrsig_sym curve_secp256r1
