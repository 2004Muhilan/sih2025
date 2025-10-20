	.text
	.file	"tinycrypt_ecc.c"
	.globl	uECC_set_rng                    // -- Begin function uECC_set_rng
	.p2align	2
	.type	uECC_set_rng,@function
uECC_set_rng:                           // @uECC_set_rng
	.cfi_startproc
// %bb.0:
	adrp	x8, g_rng_function
	str	x0, [x8, :lo12:g_rng_function]
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
	ldrsh	w8, [x0, #2]
	adds	w9, w8, #7
	add	w8, w8, #14
	csel	w8, w8, w9, lt
	asr	w0, w8, #3
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
	ldrsb	w8, [x0, #1]
	lsl	w0, w8, #1
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
                                        // kill: def $w1 killed $w1 def $x1
	sxtb	w8, w1
	cmp	w8, #1
	b.lt	.LBB4_2
// %bb.1:
	and	x8, x1, #0xff
	mov	w1, wzr
	lsl	x2, x8, #2
	b	memset
.LBB4_2:
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
                                        // kill: def $w1 killed $w1 def $x1
	sxtb	w8, w1
	cmp	w8, #1
	b.lt	.LBB5_4
// %bb.1:
	mov	w8, wzr
	and	x9, x1, #0xff
.LBB5_2:                                // =>This Inner Loop Header: Depth=1
	ldr	w10, [x0], #4
	subs	x9, x9, #1
	orr	w8, w10, w8
	b.ne	.LBB5_2
// %bb.3:
	cmp	w8, #0
	cset	w0, eq
	ret
.LBB5_4:
	mov	w0, #1                          // =0x1
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
	sxth	w9, w1
	sbfx	w10, w1, #5, #11
	mov	w8, #1                          // =0x1
	ldr	w10, [x0, w10, sxtw #2]
	lsl	w8, w8, w9
	and	w0, w10, w8
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
                                        // kill: def $w1 killed $w1 def $x1
	sub	w8, w1, #1
	and	x9, x1, #0xff
	sxtb	w8, w8
	add	x9, x9, #1
	cmn	w8, #1
	csinv	w8, w8, wzr, lt
	add	w8, w8, #1
.LBB7_1:                                // =>This Inner Loop Header: Depth=1
	sub	x10, x9, #2
	tbnz	w10, #7, .LBB7_4
// %bb.2:                               //   in Loop: Header=BB7_1 Depth=1
	and	x10, x10, #0x7f
	sub	x9, x9, #1
	ldr	w10, [x0, x10, lsl #2]
	cbz	w10, .LBB7_1
// %bb.3:
	mov	w8, w9
.LBB7_4:
	tst	w8, #0xff
	b.eq	.LBB7_9
// %bb.5:
	sxtb	w8, w8
	sub	w8, w8, #1
	ldr	w9, [x0, w8, sxtw #2]
	cbz	w9, .LBB7_10
// %bb.6:
	mov	w10, wzr
.LBB7_7:                                // =>This Inner Loop Header: Depth=1
	lsr	w11, w9, #1
	cmp	w9, #1
	add	w10, w10, #1
	mov	w9, w11
	b.hi	.LBB7_7
// %bb.8:
	add	w0, w10, w8, lsl #5
	ret
.LBB7_9:
	mov	w0, wzr
	ret
.LBB7_10:
	add	w0, wzr, w8, lsl #5
	ret
.Lfunc_end7:
	.size	uECC_vli_numBits, .Lfunc_end7-uECC_vli_numBits
	.cfi_endproc
                                        // -- End function
	.globl	uECC_vli_set                    // -- Begin function uECC_vli_set
	.p2align	2
	.type	uECC_vli_set,@function
uECC_vli_set:                           // @uECC_vli_set
	.cfi_startproc
// %bb.0:
                                        // kill: def $w2 killed $w2 def $x2
	sxtb	w8, w2
	cmp	w8, #1
	b.lt	.LBB8_3
// %bb.1:
	and	x8, x2, #0xff
.LBB8_2:                                // =>This Inner Loop Header: Depth=1
	ldr	w9, [x1], #4
	subs	x8, x8, #1
	str	w9, [x0], #4
	b.ne	.LBB8_2
.LBB8_3:
	ret
.Lfunc_end8:
	.size	uECC_vli_set, .Lfunc_end8-uECC_vli_set
	.cfi_endproc
                                        // -- End function
	.globl	uECC_vli_cmp_unsafe             // -- Begin function uECC_vli_cmp_unsafe
	.p2align	2
	.type	uECC_vli_cmp_unsafe,@function
uECC_vli_cmp_unsafe:                    // @uECC_vli_cmp_unsafe
	.cfi_startproc
// %bb.0:
                                        // kill: def $w2 killed $w2 def $x2
	and	x8, x2, #0xff
	sub	x8, x8, #1
.LBB9_1:                                // =>This Inner Loop Header: Depth=1
	tbnz	w8, #7, .LBB9_5
// %bb.2:                               //   in Loop: Header=BB9_1 Depth=1
	mov	w9, w8
	ubfiz	x10, x9, #2, #7
	ldr	w9, [x0, x10]
	ldr	w10, [x1, x10]
	cmp	w9, w10
	b.hi	.LBB9_6
// %bb.3:                               //   in Loop: Header=BB9_1 Depth=1
	cmp	w9, w10
	sub	x8, x8, #1
	b.hs	.LBB9_1
// %bb.4:
	mov	w0, #255                        // =0xff
	ret
.LBB9_5:
	mov	w0, wzr
	ret
.LBB9_6:
	mov	w0, #1                          // =0x1
	ret
.Lfunc_end9:
	.size	uECC_vli_cmp_unsafe, .Lfunc_end9-uECC_vli_cmp_unsafe
	.cfi_endproc
                                        // -- End function
	.globl	uECC_vli_equal                  // -- Begin function uECC_vli_equal
	.p2align	2
	.type	uECC_vli_equal,@function
uECC_vli_equal:                         // @uECC_vli_equal
	.cfi_startproc
// %bb.0:
	sub	w9, w2, #1
	tbnz	w9, #7, .LBB10_4
// %bb.1:
	sxtb	w9, w9
	mov	w8, wzr
	and	x9, x9, #0xff
.LBB10_2:                               // =>This Inner Loop Header: Depth=1
	lsl	x10, x9, #2
	cmp	x9, #0
	sub	x9, x9, #1
	ldr	w11, [x0, x10]
	ldr	w10, [x1, x10]
	eor	w10, w10, w11
	orr	w8, w10, w8
	b.gt	.LBB10_2
// %bb.3:
	cmp	w8, #0
	cset	w0, ne
	ret
.LBB10_4:
	mov	w0, wzr
	ret
.Lfunc_end10:
	.size	uECC_vli_equal, .Lfunc_end10-uECC_vli_equal
	.cfi_endproc
                                        // -- End function
	.globl	cond_set                        // -- Begin function cond_set
	.p2align	2
	.type	cond_set,@function
cond_set:                               // @cond_set
	.cfi_startproc
// %bb.0:
	mul	w8, w2, w0
	cmp	w2, #0
	csel	w9, w1, wzr, eq
	orr	w0, w9, w8
	ret
.Lfunc_end11:
	.size	cond_set, .Lfunc_end11-cond_set
	.cfi_endproc
                                        // -- End function
	.globl	uECC_vli_sub                    // -- Begin function uECC_vli_sub
	.p2align	2
	.type	uECC_vli_sub,@function
uECC_vli_sub:                           // @uECC_vli_sub
	.cfi_startproc
// %bb.0:
                                        // kill: def $w3 killed $w3 def $x3
	sxtb	w8, w3
	cmp	w8, #1
	b.lt	.LBB12_4
// %bb.1:
	mov	w8, wzr
	and	x9, x3, #0xff
.LBB12_2:                               // =>This Inner Loop Header: Depth=1
	ldr	w10, [x2], #4
	ldr	w11, [x1], #4
	add	w10, w10, w8
	subs	w11, w11, w10
	cset	w12, lo
	cmp	w10, #0
	csel	w8, w8, wzr, eq
	subs	x9, x9, #1
	orr	w8, w8, w12
	str	w11, [x0], #4
	b.ne	.LBB12_2
// %bb.3:
	mov	w0, w8
	ret
.LBB12_4:
	mov	w8, wzr
	mov	w0, w8
	ret
.Lfunc_end12:
	.size	uECC_vli_sub, .Lfunc_end12-uECC_vli_sub
	.cfi_endproc
                                        // -- End function
	.globl	uECC_vli_cmp                    // -- Begin function uECC_vli_cmp
	.p2align	2
	.type	uECC_vli_cmp,@function
uECC_vli_cmp:                           // @uECC_vli_cmp
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
                                        // kill: def $w2 killed $w2 def $x2
	sxtb	w8, w2
	cmp	w8, #1
	b.lt	.LBB13_7
// %bb.1:
	mov	w10, wzr
	and	x9, x2, #0xff
	mov	x11, sp
.LBB13_2:                               // =>This Inner Loop Header: Depth=1
	ldr	w12, [x1], #4
	ldr	w13, [x0], #4
	add	w12, w12, w10
	subs	w13, w13, w12
	cset	w14, lo
	cmp	w12, #0
	csel	w10, w10, wzr, eq
	subs	x9, x9, #1
	orr	w10, w10, w14
	str	w13, [x11], #4
	b.ne	.LBB13_2
// %bb.3:
	cmp	w10, #0
	mov	w9, #-2                         // =0xfffffffe
	csel	w9, wzr, w9, eq
	cmp	w8, #1
	b.lt	.LBB13_8
.LBB13_4:
	mov	w8, wzr
                                        // kill: def $w2 killed $w2 killed $x2 def $x2
	and	x10, x2, #0xff
	mov	x11, sp
.LBB13_5:                               // =>This Inner Loop Header: Depth=1
	ldr	w12, [x11], #4
	subs	x10, x10, #1
	orr	w8, w12, w8
	b.ne	.LBB13_5
// %bb.6:
	cmp	w8, #0
	cset	w8, eq
	b	.LBB13_9
.LBB13_7:
	mov	w9, wzr
	cmp	w8, #1
	b.ge	.LBB13_4
.LBB13_8:
	mov	w8, #1                          // =0x1
.LBB13_9:
	orr	w8, w8, w9
	eor	w0, w8, #0x1
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end13:
	.size	uECC_vli_cmp, .Lfunc_end13-uECC_vli_cmp
	.cfi_endproc
                                        // -- End function
	.globl	uECC_vli_modAdd                 // -- Begin function uECC_vli_modAdd
	.p2align	2
	.type	uECC_vli_modAdd,@function
uECC_vli_modAdd:                        // @uECC_vli_modAdd
	.cfi_startproc
// %bb.0:
                                        // kill: def $w4 killed $w4 def $x4
	sxtb	w8, w4
	cmp	w8, #1
	b.lt	.LBB14_5
// %bb.1:
	mov	w9, w4
	mov	w10, wzr
	mov	x11, x0
	and	x9, x9, #0xff
.LBB14_2:                               // =>This Inner Loop Header: Depth=1
	ldr	w12, [x1], #4
	ldr	w13, [x2], #4
	add	w14, w12, w10
	add	w13, w14, w13
	cmp	w13, w12
	str	w13, [x11], #4
	cset	w12, lo
	csel	w10, w10, wzr, eq
	subs	x9, x9, #1
	orr	w10, w10, w12
	b.ne	.LBB14_2
// %bb.3:
	cbz	w10, .LBB14_5
// %bb.4:
	cmp	w8, #1
	b.ge	.LBB14_12
	b	.LBB14_14
.LBB14_5:
	and	x9, x4, #0xff
	sub	x9, x9, #1
.LBB14_6:                               // =>This Inner Loop Header: Depth=1
	tbnz	w9, #7, .LBB14_9
// %bb.7:                               //   in Loop: Header=BB14_6 Depth=1
	mov	w10, w9
	ubfiz	x11, x10, #2, #7
	ldr	w10, [x3, x11]
	ldr	w11, [x0, x11]
	cmp	w10, w11
	b.hi	.LBB14_10
// %bb.8:                               //   in Loop: Header=BB14_6 Depth=1
	cmp	w10, w11
	sub	x9, x9, #1
	b.hs	.LBB14_6
.LBB14_9:
	mov	w9, wzr
	cmp	w8, #1
	b.ge	.LBB14_11
	b	.LBB14_14
.LBB14_10:
	mov	w9, #1                          // =0x1
	cmp	w8, #1
	b.lt	.LBB14_14
.LBB14_11:
	tbnz	w9, #0, .LBB14_14
.LBB14_12:
	mov	w9, wzr
                                        // kill: def $w4 killed $w4 killed $x4 def $x4
	and	x8, x4, #0xff
.LBB14_13:                              // =>This Inner Loop Header: Depth=1
	ldr	w10, [x3], #4
	ldr	w11, [x0]
	add	w10, w10, w9
	subs	w11, w11, w10
	cset	w12, lo
	cmp	w10, #0
	csel	w9, w9, wzr, eq
	subs	x8, x8, #1
	orr	w9, w9, w12
	str	w11, [x0], #4
	b.ne	.LBB14_13
.LBB14_14:
	ret
.Lfunc_end14:
	.size	uECC_vli_modAdd, .Lfunc_end14-uECC_vli_modAdd
	.cfi_endproc
                                        // -- End function
	.globl	uECC_vli_modSub                 // -- Begin function uECC_vli_modSub
	.p2align	2
	.type	uECC_vli_modSub,@function
uECC_vli_modSub:                        // @uECC_vli_modSub
	.cfi_startproc
// %bb.0:
                                        // kill: def $w4 killed $w4 def $x4
	sxtb	w8, w4
	cmp	w8, #1
	b.lt	.LBB15_4
// %bb.1:
	mov	w10, wzr
	and	x9, x4, #0xff
	mov	x11, x0
.LBB15_2:                               // =>This Inner Loop Header: Depth=1
	ldr	w12, [x2], #4
	ldr	w13, [x1], #4
	add	w12, w12, w10
	subs	w13, w13, w12
	cset	w14, lo
	cmp	w12, #0
	csel	w10, w10, wzr, eq
	subs	x9, x9, #1
	orr	w10, w10, w14
	str	w13, [x11], #4
	b.ne	.LBB15_2
// %bb.3:
	cmp	w10, #0
	cset	w9, eq
	cmp	w8, #1
	b.ge	.LBB15_5
	b	.LBB15_8
.LBB15_4:
	mov	w9, #1                          // =0x1
	cmp	w8, #1
	b.lt	.LBB15_8
.LBB15_5:
	tbnz	w9, #0, .LBB15_8
// %bb.6:
	mov	w9, wzr
                                        // kill: def $w4 killed $w4 killed $x4 def $x4
	and	x8, x4, #0xff
.LBB15_7:                               // =>This Inner Loop Header: Depth=1
	ldr	w10, [x0]
	ldr	w11, [x3], #4
	add	w12, w10, w9
	add	w11, w12, w11
	cmp	w11, w10
	str	w11, [x0], #4
	cset	w10, lo
	csel	w9, w9, wzr, eq
	subs	x8, x8, #1
	orr	w9, w9, w10
	b.ne	.LBB15_7
.LBB15_8:
	ret
.Lfunc_end15:
	.size	uECC_vli_modSub, .Lfunc_end15-uECC_vli_modSub
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
	sub	w8, w3, #1
	mov	w10, w3
	add	x9, sp, #16
	sxtb	w8, w8
	sxtb	w23, w3
	sbfiz	w24, w3, #1, #8
	and	x22, x10, #0xff
	mov	w20, w3
	mov	x21, x2
	cmn	w8, #1
	mov	x19, x0
	stp	x9, x1, [sp]
	csinv	w8, w8, wzr, lt
	add	x9, x22, #1
	add	w8, w8, #1
.LBB16_1:                               // =>This Inner Loop Header: Depth=1
	sub	x10, x9, #2
	tbnz	w10, #7, .LBB16_4
// %bb.2:                               //   in Loop: Header=BB16_1 Depth=1
	and	x10, x10, #0x7f
	sub	x9, x9, #1
	ldr	w10, [x21, x10, lsl #2]
	cbz	w10, .LBB16_1
// %bb.3:
	mov	w8, w9
.LBB16_4:
	tst	w8, #0xff
	b.eq	.LBB16_8
// %bb.5:
	sxtb	w8, w8
	sub	w8, w8, #1
	ldr	w9, [x21, w8, sxtw #2]
	cbz	w9, .LBB16_9
// %bb.6:
	mov	w10, wzr
.LBB16_7:                               // =>This Inner Loop Header: Depth=1
	lsr	w11, w9, #1
	cmp	w9, #1
	add	w10, w10, #1
	mov	w9, w11
	b.hi	.LBB16_7
	b	.LBB16_10
.LBB16_8:
	mov	w8, wzr
	b	.LBB16_11
.LBB16_9:
	mov	w10, wzr
.LBB16_10:
	add	w8, w10, w8, lsl #5
.LBB16_11:
	sbfiz	w9, w20, #6, #8
	sub	w8, w9, w8
	sxth	w25, w8
	add	w8, w25, #31
	cmp	w25, #0
	csel	w8, w8, w25, lt
	sbfx	w9, w8, #5, #8
	asr	w27, w8, #5
	and	w8, w8, #0xffffffe0
	sub	w26, w25, w8
	cmp	w9, #1
	b.lt	.LBB16_13
// %bb.12:
	ubfiz	w2, w27, #2, #8
	sub	x0, x29, #64
	mov	w1, wzr
	bl	memset
.LBB16_13:
	cmp	w26, #1
	b.lt	.LBB16_17
// %bb.14:
	tst	w20, #0xff
	b.eq	.LBB16_19
// %bb.15:
	sxtb	w8, w27
	mov	w10, #32                        // =0x20
	mov	w9, wzr
	sub	w10, w10, w26
	sub	x11, x29, #64
	mov	x12, x23
.LBB16_16:                              // =>This Inner Loop Header: Depth=1
	ldr	w13, [x21], #4
	subs	x12, x12, #1
	lsl	w14, w13, w26
	orr	w14, w14, w9
	lsr	w9, w13, w10
	str	w14, [x11, w8, uxtw #2]
	add	w8, w8, #1
	b.ne	.LBB16_16
	b	.LBB16_19
.LBB16_17:
	cmp	w23, #1
	b.lt	.LBB16_19
// %bb.18:
	sub	x8, x29, #64
	lsl	x2, x22, #2
	mov	x1, x21
	add	x0, x8, w27, sxtb #2
	bl	memcpy
.LBB16_19:
	tbnz	w25, #31, .LBB16_34
// %bb.20:
	sub	x8, x29, #64
	lsl	x13, x22, #2
	sxtb	x9, w20
	add	x10, x8, w20, sxtb #2
	mov	w17, #1                         // =0x1
	mov	x14, sp
	add	x11, x8, x13
	sub	x12, x9, #1
	add	x13, x10, x13
	b	.LBB16_23
.LBB16_21:                              //   in Loop: Header=BB16_23 Depth=1
	ldr	w0, [x8, x9, lsl #2]
	ldr	w1, [x8, x18]
	orr	w0, w1, w0, lsl #31
	str	w0, [x8, x18]
.LBB16_22:                              //   in Loop: Header=BB16_23 Depth=1
	sxth	w18, w25
	sub	w25, w25, #1
	cmp	w18, #0
	b.le	.LBB16_33
.LBB16_23:                              // =>This Loop Header: Depth=1
                                        //     Child Loop BB16_25 Depth 2
                                        //     Child Loop BB16_29 Depth 2
                                        //     Child Loop BB16_32 Depth 2
	cmp	w23, #1
	mov	w15, w17
	b.lt	.LBB16_26
// %bb.24:                              //   in Loop: Header=BB16_23 Depth=1
	eor	w16, w15, #0x1
	ldr	x18, [x14, w15, uxtw #3]
	mov	w17, wzr
	ldr	x0, [x14, w16, uxtw #3]
	mov	w16, wzr
.LBB16_25:                              //   Parent Loop BB16_23 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	sbfiz	x1, x17, #2, #8
	add	w17, w17, #1
	ldr	w2, [x8, x1]
	ldr	w3, [x18, x1]
	add	w2, w2, w16
	subs	w3, w3, w2
	str	w3, [x0, x1]
	cset	w4, lo
	cmp	w2, #0
	csel	w16, w16, w4, eq
	cmp	w24, w17, sxtb
	b.gt	.LBB16_25
	b	.LBB16_27
.LBB16_26:                              //   in Loop: Header=BB16_23 Depth=1
	mov	w16, wzr
.LBB16_27:                              //   in Loop: Header=BB16_23 Depth=1
	cmp	w15, w16
	lsl	x18, x12, #2
	cset	w17, eq
	cmp	w23, #1
	b.lt	.LBB16_21
// %bb.28:                              //   in Loop: Header=BB16_23 Depth=1
	mov	w0, wzr
	mov	x1, x11
.LBB16_29:                              //   Parent Loop BB16_23 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w2, [x1, #-4]!
	cmp	x1, x8
	orr	w3, w0, w2, lsr #1
	lsl	w0, w2, #31
	str	w3, [x1]
	b.hi	.LBB16_29
// %bb.30:                              //   in Loop: Header=BB16_23 Depth=1
	ldr	w0, [x8, x9, lsl #2]
	ldr	w1, [x8, x18]
	cmp	w23, #1
	orr	w0, w1, w0, lsl #31
	str	w0, [x8, x18]
	b.lt	.LBB16_22
// %bb.31:                              //   in Loop: Header=BB16_23 Depth=1
	mov	w18, wzr
	mov	x0, x13
.LBB16_32:                              //   Parent Loop BB16_23 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w1, [x0, #-4]!
	cmp	x0, x10
	orr	w2, w18, w1, lsr #1
	lsl	w18, w1, #31
	str	w2, [x0]
	b.hi	.LBB16_32
	b	.LBB16_22
.LBB16_33:
	cmp	w15, w16
	cset	w8, eq
	cmp	w23, #1
	b.ge	.LBB16_35
	b	.LBB16_37
.LBB16_34:
	mov	w8, #1                          // =0x1
	cmp	w23, #1
	b.lt	.LBB16_37
.LBB16_35:
	mov	x9, sp
	ldr	x8, [x9, x8, lsl #3]
.LBB16_36:                              // =>This Inner Loop Header: Depth=1
	ldr	w9, [x8], #4
	subs	x22, x22, #1
	str	w9, [x19], #4
	b.ne	.LBB16_36
.LBB16_37:
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
.Lfunc_end16:
	.size	uECC_vli_mmod, .Lfunc_end16-uECC_vli_mmod
	.cfi_endproc
                                        // -- End function
	.globl	uECC_vli_modMult                // -- Begin function uECC_vli_modMult
	.p2align	2
	.type	uECC_vli_modMult,@function
uECC_vli_modMult:                       // @uECC_vli_modMult
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
                                        // kill: def $w4 killed $w4 def $x4
	sxtb	w10, w4
	cmp	w10, #1
	b.lt	.LBB17_5
// %bb.1:
	mov	x9, xzr
	mov	x11, xzr
	mov	w8, wzr
	mov	x15, xzr
	and	x12, x4, #0xff
	mov	x13, sp
.LBB17_2:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB17_3 Depth 2
	mov	w14, w8
	mov	x16, x1
	mov	x17, x9
	mov	w8, wzr
.LBB17_3:                               //   Parent Loop BB17_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w18, [x16], #4
	ldr	w5, [x2, x17]
                                        // kill: def $w14 killed $w14 killed $x14 def $x14
	bfi	x15, x14, #32, #32
	sub	x17, x17, #4
	umull	x18, w5, w18
	adds	x15, x15, x18
	lsr	x14, x15, #32
	cinc	w8, w8, hs
	cmn	x17, #4
	b.ne	.LBB17_3
// %bb.4:                               //   in Loop: Header=BB17_2 Depth=1
	str	w15, [x13, x11, lsl #2]
	add	x11, x11, #1
	add	x9, x9, #4
	cmp	x11, x12
	mov	x15, x14
	b.ne	.LBB17_2
	b	.LBB17_6
.LBB17_5:
	mov	w14, wzr
	mov	w8, wzr
.LBB17_6:
	sbfiz	w9, w4, #1, #8
	sub	w9, w9, #1
	cmp	w9, w10
	b.le	.LBB17_13
// %bb.7:
	mov	w10, #1                         // =0x1
	mov	x11, sp
	mov	w12, w4
	mov	w13, w14
	b	.LBB17_10
.LBB17_8:                               //   in Loop: Header=BB17_10 Depth=1
	mov	w16, wzr
.LBB17_9:                               //   in Loop: Header=BB17_10 Depth=1
	sxtb	x12, w12
	mov	w14, w8
	add	w10, w10, #1
	cmp	w9, w15, sxtb
	mov	w8, w16
	str	w13, [x11, x12, lsl #2]
	mov	w12, w15
	mov	w13, w14
	b.le	.LBB17_13
.LBB17_10:                              // =>This Loop Header: Depth=1
                                        //     Child Loop BB17_12 Depth 2
	add	w15, w12, #1
	sub	w14, w15, w4
	sxtb	w14, w14
	cmp	w14, w4, sxtb
	b.ge	.LBB17_8
// %bb.11:                              //   in Loop: Header=BB17_10 Depth=1
	sub	x14, x2, w10, sxtb #2
	mov	w17, w10
	mov	w16, wzr
	sxtb	x17, w17
	mov	w18, w8
	add	x14, x14, w12, sxtb #2
.LBB17_12:                              //   Parent Loop BB17_10 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w8, [x1, x17, lsl #2]
	ldr	w5, [x14], #-4
	mov	w13, w13
	add	x17, x17, #1
	umull	x8, w5, w8
	orr	x13, x13, x18, lsl #32
	and	w18, w17, #0xff
	adds	x13, x13, x8
	lsr	x8, x13, #32
	cinc	w16, w16, hs
	cmp	w18, w4, uxtb
	mov	w18, w8
	b.ne	.LBB17_12
	b	.LBB17_9
.LBB17_13:
	mov	x8, sp
	mov	x1, sp
	mov	x2, x3
	mov	w3, w4
	str	w14, [x8, w9, sxtw #2]
	bl	uECC_vli_mmod
	.cfi_def_cfa wsp, 80
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end17:
	.size	uECC_vli_modMult, .Lfunc_end17-uECC_vli_modMult
	.cfi_endproc
                                        // -- End function
	.globl	uECC_vli_modMult_fast           // -- Begin function uECC_vli_modMult_fast
	.p2align	2
	.type	uECC_vli_modMult_fast,@function
uECC_vli_modMult_fast:                  // @uECC_vli_modMult_fast
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	ldrsb	w8, [x3]
	cmp	w8, #1
	b.lt	.LBB18_5
// %bb.1:
	mov	x10, xzr
	mov	x11, xzr
	mov	w9, wzr
	mov	x15, xzr
	and	x12, x8, #0xff
	mov	x14, sp
.LBB18_2:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB18_3 Depth 2
	mov	w13, w9
	mov	x16, x1
	mov	x17, x10
	mov	w9, wzr
.LBB18_3:                               //   Parent Loop BB18_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w18, [x16], #4
	ldr	w4, [x2, x17]
                                        // kill: def $w13 killed $w13 killed $x13 def $x13
	bfi	x15, x13, #32, #32
	sub	x17, x17, #4
	umull	x18, w4, w18
	adds	x15, x15, x18
	lsr	x13, x15, #32
	cinc	w9, w9, hs
	cmn	x17, #4
	b.ne	.LBB18_3
// %bb.4:                               //   in Loop: Header=BB18_2 Depth=1
	str	w15, [x14, x11, lsl #2]
	add	x11, x11, #1
	add	x10, x10, #4
	cmp	x11, x12
	mov	x15, x13
	b.ne	.LBB18_2
	b	.LBB18_6
.LBB18_5:
	mov	w13, wzr
	mov	w9, wzr
.LBB18_6:
	lsl	w10, w8, #1
	sub	w10, w10, #1
	cmp	w10, w8
	b.le	.LBB18_13
// %bb.7:
	mov	w11, #1                         // =0x1
	mov	x12, sp
	mov	w14, w8
	mov	w15, w13
	b	.LBB18_10
.LBB18_8:                               //   in Loop: Header=BB18_10 Depth=1
	mov	w17, wzr
.LBB18_9:                               //   in Loop: Header=BB18_10 Depth=1
	sxtb	x14, w14
	mov	w13, w9
	add	w11, w11, #1
	cmp	w10, w16, sxtb
	mov	w9, w17
	str	w15, [x12, x14, lsl #2]
	mov	w14, w16
	mov	w15, w13
	b.le	.LBB18_13
.LBB18_10:                              // =>This Loop Header: Depth=1
                                        //     Child Loop BB18_12 Depth 2
	add	w16, w14, #1
	sub	w13, w16, w8
	cmp	w8, w13, sxtb
	b.le	.LBB18_8
// %bb.11:                              //   in Loop: Header=BB18_10 Depth=1
	sub	x13, x2, w11, sxtb #2
	mov	w18, w11
	mov	w17, wzr
	sxtb	x18, w18
	mov	w4, w9
	add	x13, x13, w14, sxtb #2
.LBB18_12:                              //   Parent Loop BB18_10 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w9, [x1, x18, lsl #2]
	ldr	w5, [x13], #-4
	mov	w15, w15
	add	x18, x18, #1
	umull	x9, w5, w9
	orr	x15, x15, x4, lsl #32
	and	w4, w8, #0xff
	adds	x15, x15, x9
	lsr	x9, x15, #32
	cinc	w17, w17, hs
	cmp	w4, w18, uxtb
	mov	w4, w9
	b.ne	.LBB18_12
	b	.LBB18_9
.LBB18_13:
	ldr	x9, [x3, #184]
	mov	x8, sp
	mov	x1, sp
	str	w13, [x8, w10, sxtw #2]
	blr	x9
	.cfi_def_cfa wsp, 80
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end18:
	.size	uECC_vli_modMult_fast, .Lfunc_end18-uECC_vli_modMult_fast
	.cfi_endproc
                                        // -- End function
	.globl	uECC_vli_modInv                 // -- Begin function uECC_vli_modInv
	.p2align	2
	.type	uECC_vli_modInv,@function
uECC_vli_modInv:                        // @uECC_vli_modInv
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #192
	.cfi_def_cfa_offset 192
	stp	x29, x30, [sp, #128]            // 16-byte Folded Spill
	str	x23, [sp, #144]                 // 8-byte Folded Spill
	stp	x22, x21, [sp, #160]            // 16-byte Folded Spill
	stp	x20, x19, [sp, #176]            // 16-byte Folded Spill
	add	x29, sp, #128
	.cfi_def_cfa w29, 64
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w23, -48
	.cfi_offset w30, -56
	.cfi_offset w29, -64
	.cfi_remember_state
	sxtb	w22, w3
	cmp	w22, #1
	b.lt	.LBB19_106
// %bb.1:
	mov	w9, w3
	mov	w20, w3
	mov	x19, x2
	and	x9, x9, #0xff
	mov	x8, xzr
	mov	w10, wzr
	lsl	x9, x9, #2
.LBB19_2:                               // =>This Inner Loop Header: Depth=1
	ldr	w11, [x1, x8]
	add	x8, x8, #4
	cmp	x9, x8
	orr	w10, w11, w10
	b.ne	.LBB19_2
// %bb.3:
	cbz	w10, .LBB19_6
// %bb.4:
	cmp	w22, #1
	b.lt	.LBB19_8
// %bb.5:
	mov	w8, w20
	mov	x23, x0
	sub	x0, x29, #32
	and	x8, x8, #0xff
	lsl	x21, x8, #2
	mov	x2, x21
	bl	memcpy
	add	x0, sp, #64
	mov	x1, x19
	mov	x2, x21
	bl	memcpy
	add	x0, sp, #32
	mov	w1, wzr
	mov	x2, x21
	bl	memset
	mov	w8, #1                          // =0x1
	mov	x0, sp
	mov	w1, wzr
	mov	x2, x21
	str	w8, [sp, #32]
	bl	memset
	mov	x0, x23
	b	.LBB19_9
.LBB19_6:
	cmp	w22, #1
	b.lt	.LBB19_106
// %bb.7:
                                        // kill: def $w20 killed $w20 killed $x20 def $x20
	and	x8, x20, #0xff
	lsl	x2, x8, #2
	mov	w1, wzr
	.cfi_def_cfa wsp, 192
	ldp	x20, x19, [sp, #176]            // 16-byte Folded Reload
	ldr	x23, [sp, #144]                 // 8-byte Folded Reload
	ldp	x22, x21, [sp, #160]            // 16-byte Folded Reload
	ldp	x29, x30, [sp, #128]            // 16-byte Folded Reload
	add	sp, sp, #192
	.cfi_def_cfa_offset 0
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w23
	.cfi_restore w30
	.cfi_restore w29
	b	memset
.LBB19_8:
	.cfi_restore_state
	mov	w8, #1                          // =0x1
	str	w8, [sp, #32]
.LBB19_9:
	and	x8, x20, #0xff
	mov	x10, sp
	add	x12, sp, #32
	lsl	x2, x8, #2
	add	x9, sp, #64
	sub	x11, x29, #32
	sub	x1, x8, #1
	add	x14, x10, x2
	add	x16, x12, x2
	add	x13, x9, x2
	add	x15, x11, x2
	sub	x17, x14, #4
	sub	x18, x16, #4
	b	.LBB19_11
.LBB19_10:                              //   in Loop: Header=BB19_11 Depth=1
	ldr	w3, [x5]
	orr	w3, w3, #0x80000000
	str	w3, [x5]
.LBB19_11:                              // =>This Loop Header: Depth=1
                                        //     Child Loop BB19_12 Depth 2
                                        //       Child Loop BB19_58 Depth 3
                                        //       Child Loop BB19_61 Depth 3
                                        //       Child Loop BB19_63 Depth 3
                                        //       Child Loop BB19_68 Depth 3
                                        //       Child Loop BB19_71 Depth 3
                                        //       Child Loop BB19_84 Depth 3
                                        //       Child Loop BB19_94 Depth 3
                                        //       Child Loop BB19_36 Depth 3
                                        //       Child Loop BB19_39 Depth 3
                                        //       Child Loop BB19_41 Depth 3
                                        //       Child Loop BB19_46 Depth 3
                                        //       Child Loop BB19_49 Depth 3
                                        //       Child Loop BB19_80 Depth 3
                                        //       Child Loop BB19_91 Depth 3
                                        //       Child Loop BB19_26 Depth 3
                                        //       Child Loop BB19_54 Depth 3
                                        //       Child Loop BB19_88 Depth 3
                                        //       Child Loop BB19_20 Depth 3
                                        //       Child Loop BB19_31 Depth 3
                                        //       Child Loop BB19_76 Depth 3
                                        //     Child Loop BB19_103 Depth 2
                                        //     Child Loop BB19_101 Depth 2
                                        //     Child Loop BB19_99 Depth 2
                                        //     Child Loop BB19_97 Depth 2
	mov	x3, x8
.LBB19_12:                              //   Parent Loop BB19_11 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB19_58 Depth 3
                                        //       Child Loop BB19_61 Depth 3
                                        //       Child Loop BB19_63 Depth 3
                                        //       Child Loop BB19_68 Depth 3
                                        //       Child Loop BB19_71 Depth 3
                                        //       Child Loop BB19_84 Depth 3
                                        //       Child Loop BB19_94 Depth 3
                                        //       Child Loop BB19_36 Depth 3
                                        //       Child Loop BB19_39 Depth 3
                                        //       Child Loop BB19_41 Depth 3
                                        //       Child Loop BB19_46 Depth 3
                                        //       Child Loop BB19_49 Depth 3
                                        //       Child Loop BB19_80 Depth 3
                                        //       Child Loop BB19_91 Depth 3
                                        //       Child Loop BB19_26 Depth 3
                                        //       Child Loop BB19_54 Depth 3
                                        //       Child Loop BB19_88 Depth 3
                                        //       Child Loop BB19_20 Depth 3
                                        //       Child Loop BB19_31 Depth 3
                                        //       Child Loop BB19_76 Depth 3
	sub	x3, x3, #1
	tbnz	w3, #7, .LBB19_16
// %bb.13:                              //   in Loop: Header=BB19_12 Depth=2
	mov	w4, w3
	ubfiz	x4, x4, #2, #7
	ldr	w5, [x11, x4]
	ldr	w4, [x9, x4]
	cmp	w5, w4
	b.ls	.LBB19_15
// %bb.14:                              //   in Loop: Header=BB19_12 Depth=2
	mov	w4, #1                          // =0x1
	tbz	w3, #7, .LBB19_17
	b	.LBB19_104
.LBB19_15:                              //   in Loop: Header=BB19_12 Depth=2
	b.hs	.LBB19_12
.LBB19_16:                              //   in Loop: Header=BB19_12 Depth=2
	mov	w4, wzr
	tbnz	w3, #7, .LBB19_104
.LBB19_17:                              //   in Loop: Header=BB19_12 Depth=2
	ldurb	w3, [x29, #-32]
	tbnz	w3, #0, .LBB19_23
// %bb.18:                              //   in Loop: Header=BB19_12 Depth=2
	cmp	w22, #1
	b.lt	.LBB19_21
// %bb.19:                              //   in Loop: Header=BB19_12 Depth=2
	mov	w3, wzr
	mov	x4, x15
.LBB19_20:                              //   Parent Loop BB19_11 Depth=1
                                        //     Parent Loop BB19_12 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	w5, [x4, #-4]!
	cmp	x4, x11
	orr	w6, w3, w5, lsr #1
	lsl	w3, w5, #31
	str	w6, [x4]
	b.hi	.LBB19_20
.LBB19_21:                              //   in Loop: Header=BB19_12 Depth=2
	ldrb	w3, [sp, #32]
	tbnz	w3, #0, .LBB19_29
// %bb.22:                              //   in Loop: Header=BB19_12 Depth=2
	cmp	w22, #1
	mov	x3, x8
	b.ge	.LBB19_96
	b	.LBB19_12
.LBB19_23:                              //   in Loop: Header=BB19_12 Depth=2
	ldrb	w3, [sp, #64]
	tbnz	w3, #0, .LBB19_33
// %bb.24:                              //   in Loop: Header=BB19_12 Depth=2
	cmp	w22, #1
	b.lt	.LBB19_27
// %bb.25:                              //   in Loop: Header=BB19_12 Depth=2
	mov	w3, wzr
	mov	x4, x13
.LBB19_26:                              //   Parent Loop BB19_11 Depth=1
                                        //     Parent Loop BB19_12 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	w5, [x4, #-4]!
	cmp	x4, x9
	orr	w6, w3, w5, lsr #1
	lsl	w3, w5, #31
	str	w6, [x4]
	b.hi	.LBB19_26
.LBB19_27:                              //   in Loop: Header=BB19_12 Depth=2
	ldrb	w3, [sp]
	tbnz	w3, #0, .LBB19_52
// %bb.28:                              //   in Loop: Header=BB19_12 Depth=2
	cmp	w22, #1
	mov	x3, x8
	b.ge	.LBB19_98
	b	.LBB19_12
.LBB19_29:                              //   in Loop: Header=BB19_12 Depth=2
	cmp	w22, #1
	b.lt	.LBB19_74
// %bb.30:                              //   in Loop: Header=BB19_12 Depth=2
	mov	w4, wzr
	add	x3, sp, #32
	mov	x5, x19
	mov	x6, x8
.LBB19_31:                              //   Parent Loop BB19_11 Depth=1
                                        //     Parent Loop BB19_12 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	w7, [x3]
	ldr	w20, [x5], #4
	add	w21, w7, w4
	add	w20, w21, w20
	cmp	w20, w7
	str	w20, [x3], #4
	cset	w7, lo
	csel	w4, w4, wzr, eq
	subs	x6, x6, #1
	orr	w4, w4, w7
	b.ne	.LBB19_31
// %bb.32:                              //   in Loop: Header=BB19_12 Depth=2
	cmp	w4, #0
	cset	w4, eq
	cmp	w22, #1
	b.ge	.LBB19_75
	b	.LBB19_77
.LBB19_33:                              //   in Loop: Header=BB19_12 Depth=2
	cmp	w22, #1
	cbz	w4, .LBB19_56
// %bb.34:                              //   in Loop: Header=BB19_12 Depth=2
	b.lt	.LBB19_40
// %bb.35:                              //   in Loop: Header=BB19_12 Depth=2
	mov	x3, xzr
	mov	w4, wzr
.LBB19_36:                              //   Parent Loop BB19_11 Depth=1
                                        //     Parent Loop BB19_12 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	w5, [x9, x3]
	ldr	w6, [x11, x3]
	add	w5, w5, w4
	subs	w6, w6, w5
	str	w6, [x11, x3]
	add	x3, x3, #4
	cset	w7, lo
	cmp	w5, #0
	csel	w4, w4, wzr, eq
	cmp	x2, x3
	orr	w4, w4, w7
	b.ne	.LBB19_36
// %bb.37:                              //   in Loop: Header=BB19_12 Depth=2
	cmp	w22, #1
	b.lt	.LBB19_40
// %bb.38:                              //   in Loop: Header=BB19_12 Depth=2
	mov	w3, wzr
	mov	x4, x15
.LBB19_39:                              //   Parent Loop BB19_11 Depth=1
                                        //     Parent Loop BB19_12 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	w5, [x4, #-4]!
	cmp	x4, x11
	orr	w6, w3, w5, lsr #1
	lsl	w3, w5, #31
	str	w6, [x4]
	b.hi	.LBB19_39
.LBB19_40:                              //   in Loop: Header=BB19_12 Depth=2
	mov	x3, x1
.LBB19_41:                              //   Parent Loop BB19_11 Depth=1
                                        //     Parent Loop BB19_12 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	tbnz	w3, #7, .LBB19_47
// %bb.42:                              //   in Loop: Header=BB19_41 Depth=3
	mov	w4, w3
	ubfiz	x5, x4, #2, #7
	ldr	w4, [x12, x5]
	ldr	w5, [x10, x5]
	cmp	w4, w5
	b.hi	.LBB19_47
// %bb.43:                              //   in Loop: Header=BB19_41 Depth=3
	cmp	w4, w5
	sub	x3, x3, #1
	b.hs	.LBB19_41
// %bb.44:                              //   in Loop: Header=BB19_12 Depth=2
	cmp	w22, #1
	b.lt	.LBB19_50
// %bb.45:                              //   in Loop: Header=BB19_12 Depth=2
	mov	w5, wzr
	add	x3, sp, #32
	mov	x4, x19
	mov	x6, x8
.LBB19_46:                              //   Parent Loop BB19_11 Depth=1
                                        //     Parent Loop BB19_12 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	w7, [x3]
	ldr	w20, [x4], #4
	add	w21, w7, w5
	add	w20, w21, w20
	cmp	w20, w7
	str	w20, [x3], #4
	cset	w7, lo
	csel	w5, w5, wzr, eq
	subs	x6, x6, #1
	orr	w5, w5, w7
	b.ne	.LBB19_46
.LBB19_47:                              //   in Loop: Header=BB19_12 Depth=2
	cmp	w22, #1
	b.lt	.LBB19_50
// %bb.48:                              //   in Loop: Header=BB19_12 Depth=2
	mov	w5, wzr
	mov	x3, sp
	add	x4, sp, #32
	mov	x6, x8
.LBB19_49:                              //   Parent Loop BB19_11 Depth=1
                                        //     Parent Loop BB19_12 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	w7, [x3], #4
	ldr	w20, [x4]
	add	w7, w7, w5
	subs	w20, w20, w7
	cset	w21, lo
	cmp	w7, #0
	csel	w5, w5, wzr, eq
	subs	x6, x6, #1
	orr	w5, w5, w21
	str	w20, [x4], #4
	b.ne	.LBB19_49
.LBB19_50:                              //   in Loop: Header=BB19_12 Depth=2
	ldrb	w3, [sp, #32]
	tbnz	w3, #0, .LBB19_78
// %bb.51:                              //   in Loop: Header=BB19_12 Depth=2
	cmp	w22, #1
	mov	x3, x8
	b.ge	.LBB19_100
	b	.LBB19_12
.LBB19_52:                              //   in Loop: Header=BB19_12 Depth=2
	cmp	w22, #1
	b.lt	.LBB19_86
// %bb.53:                              //   in Loop: Header=BB19_12 Depth=2
	mov	w4, wzr
	mov	x3, sp
	mov	x5, x19
	mov	x6, x8
.LBB19_54:                              //   Parent Loop BB19_11 Depth=1
                                        //     Parent Loop BB19_12 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	w7, [x3]
	ldr	w20, [x5], #4
	add	w21, w7, w4
	add	w20, w21, w20
	cmp	w20, w7
	str	w20, [x3], #4
	cset	w7, lo
	csel	w4, w4, wzr, eq
	subs	x6, x6, #1
	orr	w4, w4, w7
	b.ne	.LBB19_54
// %bb.55:                              //   in Loop: Header=BB19_12 Depth=2
	cmp	w4, #0
	cset	w4, eq
	cmp	w22, #1
	b.ge	.LBB19_87
	b	.LBB19_95
.LBB19_56:                              //   in Loop: Header=BB19_12 Depth=2
	b.lt	.LBB19_62
// %bb.57:                              //   in Loop: Header=BB19_12 Depth=2
	mov	x3, xzr
	mov	w4, wzr
.LBB19_58:                              //   Parent Loop BB19_11 Depth=1
                                        //     Parent Loop BB19_12 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	w5, [x11, x3]
	ldr	w6, [x9, x3]
	add	w5, w5, w4
	subs	w6, w6, w5
	str	w6, [x9, x3]
	add	x3, x3, #4
	cset	w7, lo
	cmp	w5, #0
	csel	w4, w4, wzr, eq
	cmp	x2, x3
	orr	w4, w4, w7
	b.ne	.LBB19_58
// %bb.59:                              //   in Loop: Header=BB19_12 Depth=2
	cmp	w22, #1
	b.lt	.LBB19_62
// %bb.60:                              //   in Loop: Header=BB19_12 Depth=2
	mov	w3, wzr
	mov	x4, x13
.LBB19_61:                              //   Parent Loop BB19_11 Depth=1
                                        //     Parent Loop BB19_12 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	w5, [x4, #-4]!
	cmp	x4, x9
	orr	w6, w3, w5, lsr #1
	lsl	w3, w5, #31
	str	w6, [x4]
	b.hi	.LBB19_61
.LBB19_62:                              //   in Loop: Header=BB19_12 Depth=2
	mov	x3, x1
.LBB19_63:                              //   Parent Loop BB19_11 Depth=1
                                        //     Parent Loop BB19_12 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	tbnz	w3, #7, .LBB19_69
// %bb.64:                              //   in Loop: Header=BB19_63 Depth=3
	mov	w4, w3
	ubfiz	x5, x4, #2, #7
	ldr	w4, [x10, x5]
	ldr	w5, [x12, x5]
	cmp	w4, w5
	b.hi	.LBB19_69
// %bb.65:                              //   in Loop: Header=BB19_63 Depth=3
	cmp	w4, w5
	sub	x3, x3, #1
	b.hs	.LBB19_63
// %bb.66:                              //   in Loop: Header=BB19_12 Depth=2
	cmp	w22, #1
	b.lt	.LBB19_72
// %bb.67:                              //   in Loop: Header=BB19_12 Depth=2
	mov	w5, wzr
	mov	x3, sp
	mov	x4, x19
	mov	x6, x8
.LBB19_68:                              //   Parent Loop BB19_11 Depth=1
                                        //     Parent Loop BB19_12 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	w7, [x3]
	ldr	w20, [x4], #4
	add	w21, w7, w5
	add	w20, w21, w20
	cmp	w20, w7
	str	w20, [x3], #4
	cset	w7, lo
	csel	w5, w5, wzr, eq
	subs	x6, x6, #1
	orr	w5, w5, w7
	b.ne	.LBB19_68
.LBB19_69:                              //   in Loop: Header=BB19_12 Depth=2
	cmp	w22, #1
	b.lt	.LBB19_72
// %bb.70:                              //   in Loop: Header=BB19_12 Depth=2
	mov	w5, wzr
	add	x3, sp, #32
	mov	x4, sp
	mov	x6, x8
.LBB19_71:                              //   Parent Loop BB19_11 Depth=1
                                        //     Parent Loop BB19_12 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	w7, [x3], #4
	ldr	w20, [x4]
	add	w7, w7, w5
	subs	w20, w20, w7
	cset	w21, lo
	cmp	w7, #0
	csel	w5, w5, wzr, eq
	subs	x6, x6, #1
	orr	w5, w5, w21
	str	w20, [x4], #4
	b.ne	.LBB19_71
.LBB19_72:                              //   in Loop: Header=BB19_12 Depth=2
	ldrb	w3, [sp]
	tbnz	w3, #0, .LBB19_82
// %bb.73:                              //   in Loop: Header=BB19_12 Depth=2
	cmp	w22, #1
	mov	x3, x8
	b.ge	.LBB19_102
	b	.LBB19_12
.LBB19_74:                              //   in Loop: Header=BB19_12 Depth=2
	mov	w4, #1                          // =0x1
	cmp	w22, #1
	b.lt	.LBB19_77
.LBB19_75:                              //   in Loop: Header=BB19_12 Depth=2
	mov	w3, wzr
	mov	x5, x16
.LBB19_76:                              //   Parent Loop BB19_11 Depth=1
                                        //     Parent Loop BB19_12 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	w6, [x5, #-4]!
	cmp	x5, x12
	orr	w7, w3, w6, lsr #1
	lsl	w3, w6, #31
	str	w7, [x5]
	b.hi	.LBB19_76
.LBB19_77:                              //   in Loop: Header=BB19_12 Depth=2
	mov	x3, x8
	mov	x5, x18
	tbnz	w4, #0, .LBB19_12
	b	.LBB19_10
.LBB19_78:                              //   in Loop: Header=BB19_12 Depth=2
	cmp	w22, #1
	b.lt	.LBB19_89
// %bb.79:                              //   in Loop: Header=BB19_12 Depth=2
	mov	w4, wzr
	add	x3, sp, #32
	mov	x5, x19
	mov	x6, x8
.LBB19_80:                              //   Parent Loop BB19_11 Depth=1
                                        //     Parent Loop BB19_12 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	w7, [x3]
	ldr	w20, [x5], #4
	add	w21, w7, w4
	add	w20, w21, w20
	cmp	w20, w7
	str	w20, [x3], #4
	cset	w7, lo
	csel	w4, w4, wzr, eq
	subs	x6, x6, #1
	orr	w4, w4, w7
	b.ne	.LBB19_80
// %bb.81:                              //   in Loop: Header=BB19_12 Depth=2
	cmp	w4, #0
	cset	w4, eq
	cmp	w22, #1
	b.ge	.LBB19_90
	b	.LBB19_77
.LBB19_82:                              //   in Loop: Header=BB19_12 Depth=2
	cmp	w22, #1
	b.lt	.LBB19_92
// %bb.83:                              //   in Loop: Header=BB19_12 Depth=2
	mov	w4, wzr
	mov	x3, sp
	mov	x5, x19
	mov	x6, x8
.LBB19_84:                              //   Parent Loop BB19_11 Depth=1
                                        //     Parent Loop BB19_12 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	w7, [x3]
	ldr	w20, [x5], #4
	add	w21, w7, w4
	add	w20, w21, w20
	cmp	w20, w7
	str	w20, [x3], #4
	cset	w7, lo
	csel	w4, w4, wzr, eq
	subs	x6, x6, #1
	orr	w4, w4, w7
	b.ne	.LBB19_84
// %bb.85:                              //   in Loop: Header=BB19_12 Depth=2
	cmp	w4, #0
	cset	w4, eq
	cmp	w22, #1
	b.ge	.LBB19_93
	b	.LBB19_95
.LBB19_86:                              //   in Loop: Header=BB19_12 Depth=2
	mov	w4, #1                          // =0x1
	cmp	w22, #1
	b.lt	.LBB19_95
.LBB19_87:                              //   in Loop: Header=BB19_12 Depth=2
	mov	w3, wzr
	mov	x5, x14
.LBB19_88:                              //   Parent Loop BB19_11 Depth=1
                                        //     Parent Loop BB19_12 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	w6, [x5, #-4]!
	cmp	x5, x10
	orr	w7, w3, w6, lsr #1
	lsl	w3, w6, #31
	str	w7, [x5]
	b.hi	.LBB19_88
	b	.LBB19_95
.LBB19_89:                              //   in Loop: Header=BB19_12 Depth=2
	mov	w4, #1                          // =0x1
	cmp	w22, #1
	b.lt	.LBB19_77
.LBB19_90:                              //   in Loop: Header=BB19_12 Depth=2
	mov	w3, wzr
	mov	x5, x16
.LBB19_91:                              //   Parent Loop BB19_11 Depth=1
                                        //     Parent Loop BB19_12 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	w6, [x5, #-4]!
	cmp	x5, x12
	orr	w7, w3, w6, lsr #1
	lsl	w3, w6, #31
	str	w7, [x5]
	b.hi	.LBB19_91
	b	.LBB19_77
.LBB19_92:                              //   in Loop: Header=BB19_12 Depth=2
	mov	w4, #1                          // =0x1
	cmp	w22, #1
	b.lt	.LBB19_95
.LBB19_93:                              //   in Loop: Header=BB19_12 Depth=2
	mov	w3, wzr
	mov	x5, x14
.LBB19_94:                              //   Parent Loop BB19_11 Depth=1
                                        //     Parent Loop BB19_12 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	w6, [x5, #-4]!
	cmp	x5, x10
	orr	w7, w3, w6, lsr #1
	lsl	w3, w6, #31
	str	w7, [x5]
	b.hi	.LBB19_94
.LBB19_95:                              //   in Loop: Header=BB19_12 Depth=2
	mov	x3, x8
	mov	x5, x17
	tbnz	w4, #0, .LBB19_12
	b	.LBB19_10
.LBB19_96:                              //   in Loop: Header=BB19_11 Depth=1
	mov	w3, wzr
	mov	x4, x16
.LBB19_97:                              //   Parent Loop BB19_11 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w5, [x4, #-4]!
	cmp	x4, x12
	orr	w6, w3, w5, lsr #1
	lsl	w3, w5, #31
	str	w6, [x4]
	b.hi	.LBB19_97
	b	.LBB19_11
.LBB19_98:                              //   in Loop: Header=BB19_11 Depth=1
	mov	w3, wzr
	mov	x4, x14
.LBB19_99:                              //   Parent Loop BB19_11 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w5, [x4, #-4]!
	cmp	x4, x10
	orr	w6, w3, w5, lsr #1
	lsl	w3, w5, #31
	str	w6, [x4]
	b.hi	.LBB19_99
	b	.LBB19_11
.LBB19_100:                             //   in Loop: Header=BB19_11 Depth=1
	mov	w3, wzr
	mov	x4, x16
.LBB19_101:                             //   Parent Loop BB19_11 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w5, [x4, #-4]!
	cmp	x4, x12
	orr	w6, w3, w5, lsr #1
	lsl	w3, w5, #31
	str	w6, [x4]
	b.hi	.LBB19_101
	b	.LBB19_11
.LBB19_102:                             //   in Loop: Header=BB19_11 Depth=1
	mov	w3, wzr
	mov	x4, x14
.LBB19_103:                             //   Parent Loop BB19_11 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w5, [x4, #-4]!
	cmp	x4, x10
	orr	w6, w3, w5, lsr #1
	lsl	w3, w5, #31
	str	w6, [x4]
	b.hi	.LBB19_103
	b	.LBB19_11
.LBB19_104:
	cmp	w22, #1
	b.lt	.LBB19_106
// %bb.105:
	add	x1, sp, #32
	bl	memcpy
.LBB19_106:
	.cfi_def_cfa wsp, 192
	ldp	x20, x19, [sp, #176]            // 16-byte Folded Reload
	ldr	x23, [sp, #144]                 // 8-byte Folded Reload
	ldp	x22, x21, [sp, #160]            // 16-byte Folded Reload
	ldp	x29, x30, [sp, #128]            // 16-byte Folded Reload
	add	sp, sp, #192
	.cfi_def_cfa_offset 0
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w23
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end19:
	.size	uECC_vli_modInv, .Lfunc_end19-uECC_vli_modInv
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
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	stp	x26, x25, [sp, #80]             // 16-byte Folded Spill
	stp	x24, x23, [sp, #96]             // 16-byte Folded Spill
	stp	x22, x21, [sp, #112]            // 16-byte Folded Spill
	stp	x20, x19, [sp, #128]            // 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 80
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w23, -40
	.cfi_offset w24, -48
	.cfi_offset w25, -56
	.cfi_offset w26, -64
	.cfi_offset w30, -72
	.cfi_offset w29, -80
	ldrsb	x24, [x3]
	mov	x22, x3
	mov	x20, x2
	mov	x19, x1
	mov	x21, x0
	cmp	x24, #1
	and	x23, x24, #0xff
	b.lt	.LBB20_4
// %bb.1:
	mov	w8, wzr
	mov	x9, x20
	mov	x10, x23
.LBB20_2:                               // =>This Inner Loop Header: Depth=1
	ldr	w11, [x9], #4
	subs	x10, x10, #1
	orr	w8, w11, w8
	b.ne	.LBB20_2
// %bb.3:
	cmp	w8, #0
	cset	w8, eq
	cbnz	w8, .LBB20_125
	b	.LBB20_5
.LBB20_4:
	mov	w8, #1                          // =0x1
	cbnz	w8, .LBB20_125
.LBB20_5:
	add	x0, sp, #32
	mov	x1, x19
	mov	x2, x19
	mov	x3, x22
	sxtb	w25, w23
	bl	uECC_vli_modMult_fast
	mov	x0, sp
	add	x2, sp, #32
	mov	x1, x21
	mov	x3, x22
	bl	uECC_vli_modMult_fast
	add	x0, sp, #32
	add	x1, sp, #32
	add	x2, sp, #32
	mov	x3, x22
	bl	uECC_vli_modMult_fast
	mov	x0, x19
	mov	x1, x19
	mov	x2, x20
	mov	x3, x22
	bl	uECC_vli_modMult_fast
	mov	x0, x20
	mov	x1, x20
	mov	x2, x20
	mov	x3, x22
	bl	uECC_vli_modMult_fast
	cmp	w25, #1
	add	x25, x22, #4
	b.lt	.LBB20_9
// %bb.6:
	mov	w9, wzr
	mov	x8, x21
	mov	x10, x20
	mov	x11, x23
.LBB20_7:                               // =>This Inner Loop Header: Depth=1
	ldr	w12, [x8]
	ldr	w13, [x10], #4
	add	w14, w12, w9
	add	w13, w14, w13
	cmp	w13, w12
	str	w13, [x8], #4
	cset	w12, lo
	csel	w9, w9, wzr, eq
	subs	x11, x11, #1
	orr	w9, w9, w12
	b.ne	.LBB20_7
// %bb.8:
	cbnz	w9, .LBB20_17
.LBB20_9:
	sub	x8, x23, #1
.LBB20_10:                              // =>This Inner Loop Header: Depth=1
	tbnz	w8, #7, .LBB20_13
// %bb.11:                              //   in Loop: Header=BB20_10 Depth=1
	mov	w9, w8
	ubfiz	x10, x9, #2, #7
	ldr	w9, [x25, x10]
	ldr	w10, [x21, x10]
	cmp	w9, w10
	b.hi	.LBB20_14
// %bb.12:                              //   in Loop: Header=BB20_10 Depth=1
	cmp	w9, w10
	sub	x8, x8, #1
	b.hs	.LBB20_10
.LBB20_13:
	mov	w8, wzr
	b	.LBB20_15
.LBB20_14:
	mov	w8, #1                          // =0x1
.LBB20_15:
	sxtb	w9, w23
	cmp	w9, #1
	b.lt	.LBB20_19
// %bb.16:
	tbnz	w8, #0, .LBB20_19
.LBB20_17:
	mov	w11, wzr
	mov	x8, x21
	mov	x9, x25
	mov	x10, x23
.LBB20_18:                              // =>This Inner Loop Header: Depth=1
	ldr	w12, [x9], #4
	ldr	w13, [x8]
	add	w12, w12, w11
	subs	w13, w13, w12
	cset	w14, lo
	cmp	w12, #0
	csel	w11, w11, wzr, eq
	subs	x10, x10, #1
	orr	w11, w11, w14
	str	w13, [x8], #4
	b.ne	.LBB20_18
.LBB20_19:
	sxtb	w8, w23
	cmp	w8, #1
	b.lt	.LBB20_23
// %bb.20:
	mov	w9, wzr
	mov	x8, x20
	mov	x10, x23
.LBB20_21:                              // =>This Inner Loop Header: Depth=1
	ldr	w11, [x8]
	add	w12, w9, w11, lsl #1
	cmp	w12, w11
	str	w12, [x8], #4
	cset	w11, lo
	csel	w9, w9, wzr, eq
	subs	x10, x10, #1
	orr	w9, w9, w11
	b.ne	.LBB20_21
// %bb.22:
	cbnz	w9, .LBB20_31
.LBB20_23:
	sub	x8, x23, #1
.LBB20_24:                              // =>This Inner Loop Header: Depth=1
	tbnz	w8, #7, .LBB20_27
// %bb.25:                              //   in Loop: Header=BB20_24 Depth=1
	mov	w9, w8
	ubfiz	x10, x9, #2, #7
	ldr	w9, [x25, x10]
	ldr	w10, [x20, x10]
	cmp	w9, w10
	b.hi	.LBB20_28
// %bb.26:                              //   in Loop: Header=BB20_24 Depth=1
	cmp	w9, w10
	sub	x8, x8, #1
	b.hs	.LBB20_24
.LBB20_27:
	mov	w8, wzr
	b	.LBB20_29
.LBB20_28:
	mov	w8, #1                          // =0x1
.LBB20_29:
	sxtb	w9, w23
	cmp	w9, #1
	b.lt	.LBB20_33
// %bb.30:
	tbnz	w8, #0, .LBB20_33
.LBB20_31:
	mov	w11, wzr
	mov	x8, x20
	mov	x9, x25
	mov	x10, x23
.LBB20_32:                              // =>This Inner Loop Header: Depth=1
	ldr	w12, [x9], #4
	ldr	w13, [x8]
	add	w12, w12, w11
	subs	w13, w13, w12
	cset	w14, lo
	cmp	w12, #0
	csel	w11, w11, wzr, eq
	subs	x10, x10, #1
	orr	w11, w11, w14
	str	w13, [x8], #4
	b.ne	.LBB20_32
.LBB20_33:
	sxtb	w8, w23
	cmp	w8, #1
	b.lt	.LBB20_37
// %bb.34:
	mov	w10, wzr
	mov	x8, x21
	mov	x9, x20
	mov	x11, x23
.LBB20_35:                              // =>This Inner Loop Header: Depth=1
	ldr	w12, [x9]
	ldr	w13, [x8], #4
	add	w12, w12, w10
	subs	w13, w13, w12
	cset	w14, lo
	cmp	w12, #0
	csel	w10, w10, wzr, eq
	subs	x11, x11, #1
	orr	w10, w10, w14
	str	w13, [x9], #4
	b.ne	.LBB20_35
// %bb.36:
	cmp	w10, #0
	cset	w8, eq
	b	.LBB20_38
.LBB20_37:
	mov	w8, #1                          // =0x1
.LBB20_38:
	sxtb	w9, w23
	cmp	w9, #1
	b.lt	.LBB20_42
// %bb.39:
	tbnz	w8, #0, .LBB20_42
// %bb.40:
	mov	w11, wzr
	mov	x8, x20
	mov	x9, x25
	mov	x10, x23
.LBB20_41:                              // =>This Inner Loop Header: Depth=1
	ldr	w12, [x8]
	ldr	w13, [x9], #4
	add	w14, w12, w11
	add	w13, w14, w13
	cmp	w13, w12
	str	w13, [x8], #4
	cset	w12, lo
	csel	w11, w11, wzr, eq
	subs	x10, x10, #1
	orr	w11, w11, w12
	b.ne	.LBB20_41
.LBB20_42:
	mov	x0, x21
	mov	x1, x21
	mov	x2, x20
	mov	x3, x22
	sxtb	w26, w23
	bl	uECC_vli_modMult_fast
	cmp	w26, #1
	b.lt	.LBB20_46
// %bb.43:
	mov	w9, wzr
	mov	x8, x21
	mov	x10, x20
	mov	x11, x23
.LBB20_44:                              // =>This Inner Loop Header: Depth=1
	ldr	w12, [x8], #4
	add	w13, w9, w12, lsl #1
	cmp	w13, w12
	str	w13, [x10], #4
	cset	w12, lo
	csel	w9, w9, wzr, eq
	subs	x11, x11, #1
	orr	w9, w9, w12
	b.ne	.LBB20_44
// %bb.45:
	cbnz	w9, .LBB20_54
.LBB20_46:
	sub	x8, x23, #1
.LBB20_47:                              // =>This Inner Loop Header: Depth=1
	tbnz	w8, #7, .LBB20_50
// %bb.48:                              //   in Loop: Header=BB20_47 Depth=1
	mov	w9, w8
	ubfiz	x10, x9, #2, #7
	ldr	w9, [x25, x10]
	ldr	w10, [x20, x10]
	cmp	w9, w10
	b.hi	.LBB20_51
// %bb.49:                              //   in Loop: Header=BB20_47 Depth=1
	cmp	w9, w10
	sub	x8, x8, #1
	b.hs	.LBB20_47
.LBB20_50:
	mov	w8, wzr
	b	.LBB20_52
.LBB20_51:
	mov	w8, #1                          // =0x1
.LBB20_52:
	sxtb	w9, w23
	cmp	w9, #1
	b.lt	.LBB20_56
// %bb.53:
	tbnz	w8, #0, .LBB20_56
.LBB20_54:
	mov	w11, wzr
	mov	x8, x20
	mov	x9, x25
	mov	x10, x23
.LBB20_55:                              // =>This Inner Loop Header: Depth=1
	ldr	w12, [x9], #4
	ldr	w13, [x8]
	add	w12, w12, w11
	subs	w13, w13, w12
	cset	w14, lo
	cmp	w12, #0
	csel	w11, w11, wzr, eq
	subs	x10, x10, #1
	orr	w11, w11, w14
	str	w13, [x8], #4
	b.ne	.LBB20_55
.LBB20_56:
	sxtb	w8, w23
	cmp	w8, #1
	b.lt	.LBB20_60
// %bb.57:
	mov	w9, wzr
	mov	x8, x21
	mov	x10, x20
	mov	x11, x23
.LBB20_58:                              // =>This Inner Loop Header: Depth=1
	ldr	w12, [x8]
	ldr	w13, [x10], #4
	add	w14, w12, w9
	add	w13, w14, w13
	cmp	w13, w12
	str	w13, [x8], #4
	cset	w12, lo
	csel	w9, w9, wzr, eq
	subs	x11, x11, #1
	orr	w9, w9, w12
	b.ne	.LBB20_58
// %bb.59:
	cbnz	w9, .LBB20_68
.LBB20_60:
	sub	x8, x23, #1
.LBB20_61:                              // =>This Inner Loop Header: Depth=1
	tbnz	w8, #7, .LBB20_64
// %bb.62:                              //   in Loop: Header=BB20_61 Depth=1
	mov	w9, w8
	ubfiz	x10, x9, #2, #7
	ldr	w9, [x25, x10]
	ldr	w10, [x21, x10]
	cmp	w9, w10
	b.hi	.LBB20_65
// %bb.63:                              //   in Loop: Header=BB20_61 Depth=1
	cmp	w9, w10
	sub	x8, x8, #1
	b.hs	.LBB20_61
.LBB20_64:
	mov	w8, wzr
	b	.LBB20_66
.LBB20_65:
	mov	w8, #1                          // =0x1
.LBB20_66:
	sxtb	w9, w23
	cmp	w9, #1
	b.lt	.LBB20_70
// %bb.67:
	tbnz	w8, #0, .LBB20_70
.LBB20_68:
	mov	w11, wzr
	mov	x8, x21
	mov	x9, x25
	mov	x10, x23
.LBB20_69:                              // =>This Inner Loop Header: Depth=1
	ldr	w12, [x9], #4
	ldr	w13, [x8]
	add	w12, w12, w11
	subs	w13, w13, w12
	cset	w14, lo
	cmp	w12, #0
	csel	w11, w11, wzr, eq
	subs	x10, x10, #1
	orr	w11, w11, w14
	str	w13, [x8], #4
	b.ne	.LBB20_69
.LBB20_70:
	ldrb	w8, [x21]
	tbnz	w8, #0, .LBB20_74
// %bb.71:
	sxtb	w8, w23
	cmp	w8, #1
	b.lt	.LBB20_82
// %bb.72:
	add	x8, x21, x23, lsl #2
	mov	w9, wzr
.LBB20_73:                              // =>This Inner Loop Header: Depth=1
	ldr	w10, [x8, #-4]!
	cmp	x8, x21
	orr	w11, w9, w10, lsr #1
	lsl	w9, w10, #31
	str	w11, [x8]
	b.hi	.LBB20_73
	b	.LBB20_82
.LBB20_74:
	sxtb	w8, w23
	cmp	w8, #1
	b.lt	.LBB20_77
// %bb.75:
	mov	w8, wzr
	mov	x9, x21
	mov	x10, x25
	mov	x11, x23
.LBB20_76:                              // =>This Inner Loop Header: Depth=1
	ldr	w12, [x9]
	ldr	w13, [x10], #4
	add	w14, w12, w8
	add	w13, w14, w13
	cmp	w13, w12
	str	w13, [x9], #4
	cset	w12, lo
	csel	w8, w8, wzr, eq
	subs	x11, x11, #1
	orr	w8, w8, w12
	b.ne	.LBB20_76
	b	.LBB20_78
.LBB20_77:
	mov	w8, wzr
.LBB20_78:
	sxtb	w9, w23
	cmp	w9, #1
	b.lt	.LBB20_81
// %bb.79:
	add	x9, x21, x23, lsl #2
	mov	w10, wzr
.LBB20_80:                              // =>This Inner Loop Header: Depth=1
	ldr	w11, [x9, #-4]!
	cmp	x9, x21
	orr	w12, w10, w11, lsr #1
	lsl	w10, w11, #31
	str	w12, [x9]
	b.hi	.LBB20_80
.LBB20_81:
	add	x9, x21, x24, lsl #2
	ldur	w10, [x9, #-4]
	orr	w8, w10, w8, lsl #31
	stur	w8, [x9, #-4]
.LBB20_82:
	mov	x0, x20
	mov	x1, x21
	mov	x2, x21
	mov	x3, x22
	sxtb	w26, w23
	bl	uECC_vli_modMult_fast
	cmp	w26, #1
	b.lt	.LBB20_86
// %bb.83:
	mov	w9, wzr
	mov	x8, sp
	mov	x10, x20
	mov	x11, x23
.LBB20_84:                              // =>This Inner Loop Header: Depth=1
	ldr	w12, [x8], #4
	ldr	w13, [x10]
	add	w12, w12, w9
	subs	w13, w13, w12
	cset	w14, lo
	cmp	w12, #0
	csel	w9, w9, wzr, eq
	subs	x11, x11, #1
	orr	w9, w9, w14
	str	w13, [x10], #4
	b.ne	.LBB20_84
// %bb.85:
	cmp	w9, #0
	cset	w8, eq
	b	.LBB20_87
.LBB20_86:
	mov	w8, #1                          // =0x1
.LBB20_87:
	sxtb	w9, w23
	cmp	w9, #1
	b.lt	.LBB20_91
// %bb.88:
	tbnz	w8, #0, .LBB20_91
// %bb.89:
	mov	w11, wzr
	mov	x8, x20
	mov	x9, x25
	mov	x10, x23
.LBB20_90:                              // =>This Inner Loop Header: Depth=1
	ldr	w12, [x8]
	ldr	w13, [x9], #4
	add	w14, w12, w11
	add	w13, w14, w13
	cmp	w13, w12
	str	w13, [x8], #4
	cset	w12, lo
	csel	w11, w11, wzr, eq
	subs	x10, x10, #1
	orr	w11, w11, w12
	b.ne	.LBB20_90
.LBB20_91:
	sxtb	w8, w23
	cmp	w8, #1
	b.lt	.LBB20_95
// %bb.92:
	mov	w9, wzr
	mov	x8, sp
	mov	x10, x20
	mov	x11, x23
.LBB20_93:                              // =>This Inner Loop Header: Depth=1
	ldr	w12, [x8], #4
	ldr	w13, [x10]
	add	w12, w12, w9
	subs	w13, w13, w12
	cset	w14, lo
	cmp	w12, #0
	csel	w9, w9, wzr, eq
	subs	x11, x11, #1
	orr	w9, w9, w14
	str	w13, [x10], #4
	b.ne	.LBB20_93
// %bb.94:
	cmp	w9, #0
	cset	w8, eq
	b	.LBB20_96
.LBB20_95:
	mov	w8, #1                          // =0x1
.LBB20_96:
	sxtb	w9, w23
	cmp	w9, #1
	b.lt	.LBB20_100
// %bb.97:
	tbnz	w8, #0, .LBB20_100
// %bb.98:
	mov	w11, wzr
	mov	x8, x20
	mov	x9, x25
	mov	x10, x23
.LBB20_99:                              // =>This Inner Loop Header: Depth=1
	ldr	w12, [x8]
	ldr	w13, [x9], #4
	add	w14, w12, w11
	add	w13, w14, w13
	cmp	w13, w12
	str	w13, [x8], #4
	cset	w12, lo
	csel	w11, w11, wzr, eq
	subs	x10, x10, #1
	orr	w11, w11, w12
	b.ne	.LBB20_99
.LBB20_100:
	sxtb	w8, w23
	cmp	w8, #1
	b.lt	.LBB20_104
// %bb.101:
	mov	w9, wzr
	mov	x8, sp
	mov	x10, x20
	mov	x11, x23
.LBB20_102:                             // =>This Inner Loop Header: Depth=1
	ldr	w12, [x10], #4
	ldr	w13, [x8]
	add	w12, w12, w9
	subs	w13, w13, w12
	cset	w14, lo
	cmp	w12, #0
	csel	w9, w9, wzr, eq
	subs	x11, x11, #1
	orr	w9, w9, w14
	str	w13, [x8], #4
	b.ne	.LBB20_102
// %bb.103:
	cmp	w9, #0
	cset	w8, eq
	b	.LBB20_105
.LBB20_104:
	mov	w8, #1                          // =0x1
.LBB20_105:
	sxtb	w9, w23
	cmp	w9, #1
	b.lt	.LBB20_109
// %bb.106:
	tbnz	w8, #0, .LBB20_109
// %bb.107:
	mov	w10, wzr
	mov	x8, sp
	mov	x9, x25
	mov	x11, x23
.LBB20_108:                             // =>This Inner Loop Header: Depth=1
	ldr	w12, [x8]
	ldr	w13, [x9], #4
	add	w14, w12, w10
	add	w13, w14, w13
	cmp	w13, w12
	str	w13, [x8], #4
	cset	w12, lo
	csel	w10, w10, wzr, eq
	subs	x11, x11, #1
	orr	w10, w10, w12
	b.ne	.LBB20_108
.LBB20_109:
	mov	x2, sp
	mov	x0, x21
	mov	x1, x21
	mov	x3, x22
	sxtb	w26, w23
	bl	uECC_vli_modMult_fast
	cmp	w26, #1
	b.lt	.LBB20_113
// %bb.110:
	mov	w9, wzr
	add	x8, sp, #32
	mov	x10, x21
	mov	x11, x23
.LBB20_111:                             // =>This Inner Loop Header: Depth=1
	ldr	w12, [x8]
	ldr	w13, [x10], #4
	add	w12, w12, w9
	subs	w13, w13, w12
	cset	w14, lo
	cmp	w12, #0
	csel	w9, w9, wzr, eq
	subs	x11, x11, #1
	orr	w9, w9, w14
	str	w13, [x8], #4
	b.ne	.LBB20_111
// %bb.112:
	cmp	w9, #0
	cset	w8, eq
	cmp	w24, #1
	b.ge	.LBB20_114
	b	.LBB20_117
.LBB20_113:
	mov	w8, #1                          // =0x1
	cmp	w24, #1
	b.lt	.LBB20_117
.LBB20_114:
	tbnz	w8, #0, .LBB20_117
// %bb.115:
	mov	w9, wzr
	add	x8, sp, #32
	mov	x10, x23
.LBB20_116:                             // =>This Inner Loop Header: Depth=1
	ldr	w11, [x8]
	ldr	w12, [x25], #4
	add	w13, w11, w9
	add	w12, w13, w12
	cmp	w12, w11
	str	w12, [x8], #4
	cset	w11, lo
	csel	w9, w9, wzr, eq
	subs	x10, x10, #1
	orr	w9, w9, w11
	b.ne	.LBB20_116
.LBB20_117:
	sxtb	w8, w23
	cmp	w8, #1
	b.lt	.LBB20_125
// %bb.118:
	mov	x8, x20
	mov	x9, x23
.LBB20_119:                             // =>This Inner Loop Header: Depth=1
	ldr	w10, [x8], #4
	subs	x9, x9, #1
	str	w10, [x21], #4
	b.ne	.LBB20_119
// %bb.120:
	sxtb	w8, w23
	cmp	w8, #1
	b.lt	.LBB20_125
// %bb.121:
	lsl	x8, x23, #2
	mov	x9, xzr
.LBB20_122:                             // =>This Inner Loop Header: Depth=1
	ldr	w10, [x19, x9]
	str	w10, [x20, x9]
	add	x9, x9, #4
	cmp	x8, x9
	b.ne	.LBB20_122
// %bb.123:
	sxtb	w8, w23
	cmp	w8, #1
	b.lt	.LBB20_125
// %bb.124:
	lsl	x2, x23, #2
	add	x1, sp, #32
	mov	x0, x19
	bl	memcpy
.LBB20_125:
	.cfi_def_cfa wsp, 144
	ldp	x20, x19, [sp, #128]            // 16-byte Folded Reload
	ldp	x22, x21, [sp, #112]            // 16-byte Folded Reload
	ldp	x24, x23, [sp, #96]             // 16-byte Folded Reload
	ldp	x26, x25, [sp, #80]             // 16-byte Folded Reload
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #144
	.cfi_def_cfa_offset 0
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w23
	.cfi_restore w24
	.cfi_restore w25
	.cfi_restore w26
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end20:
	.size	double_jacobian_default, .Lfunc_end20-double_jacobian_default
	.cfi_endproc
                                        // -- End function
	.globl	x_side_default                  // -- Begin function x_side_default
	.p2align	2
	.type	x_side_default,@function
x_side_default:                         // @x_side_default
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
	mov	x22, x2
	mov	x20, x2
	mov	x2, x1
	ldrsb	w24, [x22], #4
	mov	x3, x20
	mov	x21, x1
	mov	x19, x0
	and	x23, x24, #0xff
	bl	uECC_vli_modMult_fast
	cmp	w24, #1
	b.lt	.LBB21_4
// %bb.1:
	mov	w9, wzr
	adrp	x8, .L__const.x_side_default._3
	add	x8, x8, :lo12:.L__const.x_side_default._3
	mov	x10, x19
	mov	x11, x23
.LBB21_2:                               // =>This Inner Loop Header: Depth=1
	ldr	w12, [x8], #4
	ldr	w13, [x10]
	add	w12, w12, w9
	subs	w13, w13, w12
	cset	w14, lo
	cmp	w12, #0
	csel	w9, w9, wzr, eq
	subs	x11, x11, #1
	orr	w9, w9, w14
	str	w13, [x10], #4
	b.ne	.LBB21_2
// %bb.3:
	cmp	w9, #0
	cset	w8, eq
	b	.LBB21_5
.LBB21_4:
	mov	w8, #1                          // =0x1
.LBB21_5:
	sxtb	w9, w23
	cmp	w9, #1
	b.lt	.LBB21_9
// %bb.6:
	tbnz	w8, #0, .LBB21_9
// %bb.7:
	mov	w11, wzr
	mov	x8, x19
	mov	x9, x22
	mov	x10, x23
.LBB21_8:                               // =>This Inner Loop Header: Depth=1
	ldr	w12, [x8]
	ldr	w13, [x9], #4
	add	w14, w12, w11
	add	w13, w14, w13
	cmp	w13, w12
	str	w13, [x8], #4
	cset	w12, lo
	csel	w11, w11, wzr, eq
	subs	x10, x10, #1
	orr	w11, w11, w12
	b.ne	.LBB21_8
.LBB21_9:
	mov	x0, x19
	mov	x1, x19
	mov	x2, x21
	mov	x3, x20
	sxtb	w24, w23
	bl	uECC_vli_modMult_fast
	cmp	w24, #1
	b.lt	.LBB21_13
// %bb.10:
	mov	w9, wzr
	add	x8, x20, #132
	mov	x10, x19
	mov	x11, x23
.LBB21_11:                              // =>This Inner Loop Header: Depth=1
	ldr	w12, [x10]
	ldr	w13, [x8], #4
	add	w14, w12, w9
	add	w13, w14, w13
	cmp	w13, w12
	str	w13, [x10], #4
	cset	w12, lo
	csel	w9, w9, wzr, eq
	subs	x11, x11, #1
	orr	w9, w9, w12
	b.ne	.LBB21_11
// %bb.12:
	cbnz	w9, .LBB21_21
.LBB21_13:
	sub	x8, x23, #1
.LBB21_14:                              // =>This Inner Loop Header: Depth=1
	tbnz	w8, #7, .LBB21_17
// %bb.15:                              //   in Loop: Header=BB21_14 Depth=1
	mov	w9, w8
	ubfiz	x10, x9, #2, #7
	ldr	w9, [x22, x10]
	ldr	w10, [x19, x10]
	cmp	w9, w10
	b.hi	.LBB21_18
// %bb.16:                              //   in Loop: Header=BB21_14 Depth=1
	cmp	w9, w10
	sub	x8, x8, #1
	b.hs	.LBB21_14
.LBB21_17:
	mov	w8, wzr
	b	.LBB21_19
.LBB21_18:
	mov	w8, #1                          // =0x1
.LBB21_19:
	sxtb	w9, w23
	cmp	w9, #1
	b.lt	.LBB21_23
// %bb.20:
	tbnz	w8, #0, .LBB21_23
.LBB21_21:
	mov	w8, wzr
.LBB21_22:                              // =>This Inner Loop Header: Depth=1
	ldr	w9, [x22], #4
	ldr	w10, [x19]
	add	w9, w9, w8
	subs	w10, w10, w9
	cset	w11, lo
	cmp	w9, #0
	csel	w8, w8, wzr, eq
	subs	x23, x23, #1
	orr	w8, w8, w11
	str	w10, [x19], #4
	b.ne	.LBB21_22
.LBB21_23:
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
.Lfunc_end21:
	.size	x_side_default, .Lfunc_end21-x_side_default
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
.Lfunc_end22:
	.size	uECC_secp256r1, .Lfunc_end22-uECC_secp256r1
	.cfi_endproc
                                        // -- End function
	.globl	vli_mmod_fast_secp256r1         // -- Begin function vli_mmod_fast_secp256r1
	.p2align	2
	.type	vli_mmod_fast_secp256r1,@function
vli_mmod_fast_secp256r1:                // @vli_mmod_fast_secp256r1
	.cfi_startproc
// %bb.0:
	mov	x8, xzr
.LBB23_1:                               // =>This Inner Loop Header: Depth=1
	ldr	w9, [x1, x8]
	str	w9, [x0, x8]
	add	x8, x8, #4
	cmp	x8, #32
	b.ne	.LBB23_1
// %bb.2:
	mov	x9, xzr
	mov	w8, wzr
	str	xzr, [sp, #-32]!
	.cfi_def_cfa_offset 32
	ldp	w10, w11, [x1, #44]
	ldur	x12, [x1, #52]
	str	w11, [sp, #16]
	ldr	w11, [x1, #60]
	stp	wzr, w10, [sp, #8]
	mov	x10, sp
	stur	x12, [sp, #20]
	str	w11, [sp, #28]
.LBB23_3:                               // =>This Inner Loop Header: Depth=1
	ldr	w11, [x10, x9]
	add	w12, w8, w11, lsl #1
	str	w12, [x10, x9]
	add	x9, x9, #4
	cmp	w12, w11
	cset	w11, lo
	csel	w8, w8, wzr, eq
	cmp	x9, #32
	orr	w8, w8, w11
	b.ne	.LBB23_3
// %bb.4:
	mov	x10, xzr
	mov	w9, wzr
	mov	x11, sp
.LBB23_5:                               // =>This Inner Loop Header: Depth=1
	ldr	w12, [x0, x10]
	ldr	w13, [x11, x10]
	add	w14, w12, w9
	add	w13, w14, w13
	str	w13, [x0, x10]
	add	x10, x10, #4
	cmp	w13, w12
	cset	w12, lo
	csel	w9, w9, wzr, eq
	cmp	x10, #32
	orr	w9, w9, w12
	b.ne	.LBB23_5
// %bb.6:
	ldr	w12, [x1, #48]
	ldur	x13, [x1, #52]
	mov	x11, xzr
	ldr	w14, [x1, #60]
	mov	w10, wzr
	str	w12, [sp, #12]
	mov	x12, sp
	str	x13, [sp, #16]
	stp	w14, wzr, [sp, #24]
.LBB23_7:                               // =>This Inner Loop Header: Depth=1
	ldr	w13, [x12, x11]
	add	w14, w10, w13, lsl #1
	str	w14, [x12, x11]
	add	x11, x11, #4
	cmp	w14, w13
	cset	w13, lo
	csel	w10, w10, wzr, eq
	cmp	x11, #32
	orr	w10, w10, w13
	b.ne	.LBB23_7
// %bb.8:
	mov	x12, xzr
	mov	w11, wzr
	mov	x13, sp
.LBB23_9:                               // =>This Inner Loop Header: Depth=1
	ldr	w14, [x0, x12]
	ldr	w15, [x13, x12]
	add	w16, w14, w11
	add	w15, w16, w15
	str	w15, [x0, x12]
	add	x12, x12, #4
	cmp	w15, w14
	cset	w14, lo
	csel	w11, w11, wzr, eq
	cmp	x12, #32
	orr	w11, w11, w14
	b.ne	.LBB23_9
// %bb.10:
	ldr	x14, [x1, #32]
	ldr	w15, [x1, #40]
	mov	x13, xzr
	mov	w12, wzr
	stur	xzr, [sp, #12]
	str	x14, [sp]
	str	w15, [sp, #8]
	ldp	w14, w15, [x1, #56]
	stp	wzr, w14, [sp, #20]
	mov	x14, sp
	str	w15, [sp, #28]
.LBB23_11:                              // =>This Inner Loop Header: Depth=1
	ldr	w15, [x0, x13]
	ldr	w16, [x14, x13]
	add	w17, w15, w12
	add	w16, w17, w16
	str	w16, [x0, x13]
	add	x13, x13, #4
	cmp	w16, w15
	cset	w15, lo
	csel	w12, w12, wzr, eq
	cmp	x13, #32
	orr	w12, w12, w15
	b.ne	.LBB23_11
// %bb.12:
	ldur	x15, [x1, #36]
	ldr	w16, [x1, #44]
	mov	x14, xzr
	mov	w13, wzr
	str	x15, [sp]
	ldp	w15, w17, [x1, #52]
	stp	w16, w15, [sp, #8]
	ldr	w16, [x1, #60]
	stp	w17, w16, [sp, #16]
	ldr	w16, [x1, #32]
	stp	w15, w16, [sp, #24]
	mov	x15, sp
.LBB23_13:                              // =>This Inner Loop Header: Depth=1
	ldr	w16, [x0, x14]
	ldr	w17, [x15, x14]
	add	w18, w16, w13
	add	w17, w18, w17
	str	w17, [x0, x14]
	add	x14, x14, #4
	cmp	w17, w16
	cset	w16, lo
	csel	w13, w13, wzr, eq
	cmp	x14, #32
	orr	w13, w13, w16
	b.ne	.LBB23_13
// %bb.14:
	ldur	x16, [x1, #44]
	ldr	w17, [x1, #52]
	mov	x15, xzr
	mov	w14, wzr
	stur	xzr, [sp, #12]
	str	x16, [sp]
	ldr	w16, [x1, #32]
	str	w17, [sp, #8]
	ldr	w17, [x1, #40]
	stp	wzr, w16, [sp, #20]
	mov	x16, sp
	str	w17, [sp, #28]
.LBB23_15:                              // =>This Inner Loop Header: Depth=1
	ldr	w17, [x16, x15]
	ldr	w18, [x0, x15]
	add	w17, w17, w14
	subs	w18, w18, w17
	str	w18, [x0, x15]
	add	x15, x15, #4
	cset	w2, lo
	cmp	w17, #0
	csel	w14, w14, wzr, eq
	cmp	x15, #32
	orr	w14, w14, w2
	b.ne	.LBB23_15
// %bb.16:
	ldp	w3, w17, [x1, #44]
	ldur	x18, [x1, #52]
	ldr	w2, [x1, #60]
	mov	x16, xzr
	mov	w15, wzr
	str	xzr, [sp, #16]
	str	w17, [sp]
	ldr	w17, [x1, #36]
	stur	x18, [sp, #4]
	stp	w17, w3, [sp, #24]
	mov	x17, sp
	str	w2, [sp, #12]
.LBB23_17:                              // =>This Inner Loop Header: Depth=1
	ldr	w18, [x17, x16]
	ldr	w2, [x0, x16]
	add	w18, w18, w15
	subs	w2, w2, w18
	str	w2, [x0, x16]
	add	x16, x16, #4
	cset	w3, lo
	cmp	w18, #0
	csel	w15, w15, wzr, eq
	cmp	x16, #32
	orr	w15, w15, w3
	b.ne	.LBB23_17
// %bb.18:
	ldur	x18, [x1, #52]
	ldr	w2, [x1, #60]
	mov	x17, xzr
	ldr	x3, [x1, #32]
	mov	w16, wzr
	str	x18, [sp]
	ldr	w18, [x1, #40]
	str	w2, [sp, #8]
	ldr	w2, [x1, #48]
	stp	w18, wzr, [sp, #20]
	mov	x18, sp
	stur	x3, [sp, #12]
	str	w2, [sp, #28]
.LBB23_19:                              // =>This Inner Loop Header: Depth=1
	ldr	w2, [x18, x17]
	ldr	w3, [x0, x17]
	add	w2, w2, w16
	subs	w3, w3, w2
	str	w3, [x0, x17]
	add	x17, x17, #4
	cset	w4, lo
	cmp	w2, #0
	csel	w16, w16, wzr, eq
	cmp	x17, #32
	orr	w16, w16, w4
	b.ne	.LBB23_19
// %bb.20:
	ldp	w2, w3, [x1, #56]
	ldr	w4, [x1, #52]
	mov	x18, xzr
	mov	w17, wzr
	str	wzr, [sp, #8]
	stp	w2, w3, [sp]
	ldur	x2, [x1, #36]
	ldr	w1, [x1, #44]
	str	w4, [sp, #28]
	stp	w1, wzr, [sp, #20]
	mov	x1, sp
	stur	x2, [sp, #12]
.LBB23_21:                              // =>This Inner Loop Header: Depth=1
	ldr	w2, [x1, x18]
	ldr	w3, [x0, x18]
	add	w2, w2, w17
	subs	w3, w3, w2
	str	w3, [x0, x18]
	add	x18, x18, #4
	cset	w4, lo
	cmp	w2, #0
	csel	w17, w17, wzr, eq
	cmp	x18, #32
	orr	w17, w17, w4
	b.ne	.LBB23_21
// %bb.22:
	add	w8, w9, w8
	add	w9, w14, w15
	add	w8, w8, w10
	add	w9, w9, w16
	add	w8, w8, w11
	add	w8, w8, w12
	add	w8, w8, w13
	sub	w8, w8, w9
	subs	w8, w8, w17
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	adrp	x9, curve_secp256r1
	add	x9, x9, :lo12:curve_secp256r1
	b.mi	.LBB23_31
// %bb.23:
	cbz	w8, .LBB23_27
.LBB23_24:                              // =>This Loop Header: Depth=1
                                        //     Child Loop BB23_25 Depth 2
	mov	x10, xzr
	mov	w11, wzr
.LBB23_25:                              //   Parent Loop BB23_24 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	add	x12, x9, x10
	ldr	w13, [x0, x10]
	ldr	w12, [x12, #4]
	add	w12, w12, w11
	subs	w13, w13, w12
	str	w13, [x0, x10]
	add	x10, x10, #4
	cset	w14, lo
	cmp	w12, #0
	csel	w11, w11, wzr, eq
	cmp	x10, #32
	orr	w11, w11, w14
	b.ne	.LBB23_25
// %bb.26:                              //   in Loop: Header=BB23_24 Depth=1
	sub	w8, w8, w11
	cbnz	w8, .LBB23_24
.LBB23_27:
	mov	w10, #7                         // =0x7
.LBB23_28:                              // =>This Inner Loop Header: Depth=1
	tbnz	w10, #7, .LBB23_24
// %bb.29:                              //   in Loop: Header=BB23_28 Depth=1
	mov	w11, w10
	ubfiz	x12, x11, #2, #7
	add	x11, x9, x12
	ldr	w12, [x0, x12]
	ldr	w11, [x11, #4]
	cmp	w11, w12
	b.hi	.LBB23_34
// %bb.30:                              //   in Loop: Header=BB23_28 Depth=1
	cmp	w11, w12
	sub	x10, x10, #1
	b.hs	.LBB23_28
	b	.LBB23_24
.LBB23_31:                              // =>This Loop Header: Depth=1
                                        //     Child Loop BB23_32 Depth 2
	mov	x10, xzr
	mov	w11, wzr
.LBB23_32:                              //   Parent Loop BB23_31 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w12, [x0, x10]
	add	x13, x9, x10
	ldr	w13, [x13, #4]
	add	w14, w12, w11
	add	w13, w14, w13
	str	w13, [x0, x10]
	add	x10, x10, #4
	cmp	w13, w12
	cset	w12, lo
	csel	w11, w11, wzr, eq
	cmp	x10, #32
	orr	w11, w11, w12
	b.ne	.LBB23_32
// %bb.33:                              //   in Loop: Header=BB23_31 Depth=1
	adds	w8, w11, w8
	b.mi	.LBB23_31
.LBB23_34:
	ret
.Lfunc_end23:
	.size	vli_mmod_fast_secp256r1, .Lfunc_end23-vli_mmod_fast_secp256r1
	.cfi_endproc
                                        // -- End function
	.globl	EccPoint_isZero                 // -- Begin function EccPoint_isZero
	.p2align	2
	.type	EccPoint_isZero,@function
EccPoint_isZero:                        // @EccPoint_isZero
	.cfi_startproc
// %bb.0:
	ldrb	w8, [x1]
	lsl	w8, w8, #1
	sxtb	w9, w8
	cmp	w9, #1
	b.lt	.LBB24_4
// %bb.1:
	mov	w8, wzr
	and	x9, x9, #0xff
.LBB24_2:                               // =>This Inner Loop Header: Depth=1
	ldr	w10, [x0], #4
	subs	x9, x9, #1
	orr	w8, w10, w8
	b.ne	.LBB24_2
// %bb.3:
	cmp	w8, #0
	cset	w0, eq
	ret
.LBB24_4:
	mov	w0, #1                          // =0x1
	ret
.Lfunc_end24:
	.size	EccPoint_isZero, .Lfunc_end24-EccPoint_isZero
	.cfi_endproc
                                        // -- End function
	.globl	apply_z                         // -- Begin function apply_z
	.p2align	2
	.type	apply_z,@function
apply_z:                                // @apply_z
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	stp	x22, x21, [sp, #48]             // 16-byte Folded Spill
	stp	x20, x19, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 48
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w30, -40
	.cfi_offset w29, -48
	mov	x21, x1
	mov	x22, x0
	mov	x0, sp
	mov	x1, x2
	mov	x19, x3
	mov	x20, x2
	bl	uECC_vli_modMult_fast
	mov	x2, sp
	mov	x0, x22
	mov	x1, x22
	mov	x3, x19
	bl	uECC_vli_modMult_fast
	mov	x0, sp
	mov	x1, sp
	mov	x2, x20
	mov	x3, x19
	bl	uECC_vli_modMult_fast
	mov	x2, sp
	mov	x0, x21
	mov	x1, x21
	mov	x3, x19
	bl	uECC_vli_modMult_fast
	.cfi_def_cfa wsp, 80
	ldp	x20, x19, [sp, #64]             // 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             // 16-byte Folded Reload
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #80
	.cfi_def_cfa_offset 0
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end25:
	.size	apply_z, .Lfunc_end25-apply_z
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
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	stp	x26, x25, [sp, #48]             // 16-byte Folded Spill
	stp	x24, x23, [sp, #64]             // 16-byte Folded Spill
	stp	x22, x21, [sp, #80]             // 16-byte Folded Spill
	stp	x20, x19, [sp, #96]             // 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 80
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w23, -40
	.cfi_offset w24, -48
	.cfi_offset w25, -56
	.cfi_offset w26, -64
	.cfi_offset w30, -72
	.cfi_offset w29, -80
	mov	x25, x4
	mov	x22, x4
	mov	x20, x3
	ldrsb	w8, [x25], #4
	mov	x19, x2
	mov	x21, x1
	mov	x23, x0
	cmp	w8, #1
	and	x24, x8, #0xff
	b.lt	.LBB26_4
// %bb.1:
	mov	w9, wzr
	mov	x8, sp
	mov	x10, x19
	mov	x11, x23
	mov	x12, x24
.LBB26_2:                               // =>This Inner Loop Header: Depth=1
	ldr	w13, [x11], #4
	ldr	w14, [x10], #4
	add	w13, w13, w9
	subs	w14, w14, w13
	cset	w15, lo
	cmp	w13, #0
	csel	w9, w9, wzr, eq
	subs	x12, x12, #1
	orr	w9, w9, w15
	str	w14, [x8], #4
	b.ne	.LBB26_2
// %bb.3:
	cmp	w9, #0
	cset	w8, eq
	b	.LBB26_5
.LBB26_4:
	mov	w8, #1                          // =0x1
.LBB26_5:
	sxtb	w9, w24
	cmp	w9, #1
	b.lt	.LBB26_9
// %bb.6:
	tbnz	w8, #0, .LBB26_9
// %bb.7:
	mov	w10, wzr
	mov	x8, sp
	mov	x9, x25
	mov	x11, x24
.LBB26_8:                               // =>This Inner Loop Header: Depth=1
	ldr	w12, [x8]
	ldr	w13, [x9], #4
	add	w14, w12, w10
	add	w13, w14, w13
	cmp	w13, w12
	str	w13, [x8], #4
	cset	w12, lo
	csel	w10, w10, wzr, eq
	subs	x11, x11, #1
	orr	w10, w10, w12
	b.ne	.LBB26_8
.LBB26_9:
	mov	x0, sp
	mov	x1, sp
	mov	x2, sp
	mov	x3, x22
	sxtb	w26, w24
	bl	uECC_vli_modMult_fast
	mov	x2, sp
	mov	x0, x23
	mov	x1, x23
	mov	x3, x22
	bl	uECC_vli_modMult_fast
	mov	x2, sp
	mov	x0, x19
	mov	x1, x19
	mov	x3, x22
	bl	uECC_vli_modMult_fast
	cmp	w26, #1
	b.lt	.LBB26_13
// %bb.10:
	mov	w10, wzr
	mov	x8, x20
	mov	x9, x21
	mov	x11, x24
.LBB26_11:                              // =>This Inner Loop Header: Depth=1
	ldr	w12, [x9], #4
	ldr	w13, [x8]
	add	w12, w12, w10
	subs	w13, w13, w12
	cset	w14, lo
	cmp	w12, #0
	csel	w10, w10, wzr, eq
	subs	x11, x11, #1
	orr	w10, w10, w14
	str	w13, [x8], #4
	b.ne	.LBB26_11
// %bb.12:
	cmp	w10, #0
	cset	w8, eq
	b	.LBB26_14
.LBB26_13:
	mov	w8, #1                          // =0x1
.LBB26_14:
	sxtb	w9, w24
	cmp	w9, #1
	b.lt	.LBB26_18
// %bb.15:
	tbnz	w8, #0, .LBB26_18
// %bb.16:
	mov	w11, wzr
	mov	x8, x20
	mov	x9, x25
	mov	x10, x24
.LBB26_17:                              // =>This Inner Loop Header: Depth=1
	ldr	w12, [x8]
	ldr	w13, [x9], #4
	add	w14, w12, w11
	add	w13, w14, w13
	cmp	w13, w12
	str	w13, [x8], #4
	cset	w12, lo
	csel	w11, w11, wzr, eq
	subs	x10, x10, #1
	orr	w11, w11, w12
	b.ne	.LBB26_17
.LBB26_18:
	mov	x0, sp
	mov	x1, x20
	mov	x2, x20
	mov	x3, x22
	sxtb	w26, w24
	bl	uECC_vli_modMult_fast
	cmp	w26, #1
	b.lt	.LBB26_22
// %bb.19:
	mov	w9, wzr
	mov	x8, sp
	mov	x10, x23
	mov	x11, x24
.LBB26_20:                              // =>This Inner Loop Header: Depth=1
	ldr	w12, [x10], #4
	ldr	w13, [x8]
	add	w12, w12, w9
	subs	w13, w13, w12
	cset	w14, lo
	cmp	w12, #0
	csel	w9, w9, wzr, eq
	subs	x11, x11, #1
	orr	w9, w9, w14
	str	w13, [x8], #4
	b.ne	.LBB26_20
// %bb.21:
	cmp	w9, #0
	cset	w8, eq
	b	.LBB26_23
.LBB26_22:
	mov	w8, #1                          // =0x1
.LBB26_23:
	sxtb	w9, w24
	cmp	w9, #1
	b.lt	.LBB26_27
// %bb.24:
	tbnz	w8, #0, .LBB26_27
// %bb.25:
	mov	w10, wzr
	mov	x8, sp
	mov	x9, x25
	mov	x11, x24
.LBB26_26:                              // =>This Inner Loop Header: Depth=1
	ldr	w12, [x8]
	ldr	w13, [x9], #4
	add	w14, w12, w10
	add	w13, w14, w13
	cmp	w13, w12
	str	w13, [x8], #4
	cset	w12, lo
	csel	w10, w10, wzr, eq
	subs	x11, x11, #1
	orr	w10, w10, w12
	b.ne	.LBB26_26
.LBB26_27:
	sxtb	w8, w24
	cmp	w8, #1
	b.lt	.LBB26_31
// %bb.28:
	mov	w9, wzr
	mov	x8, sp
	mov	x10, x19
	mov	x11, x24
.LBB26_29:                              // =>This Inner Loop Header: Depth=1
	ldr	w12, [x10], #4
	ldr	w13, [x8]
	add	w12, w12, w9
	subs	w13, w13, w12
	cset	w14, lo
	cmp	w12, #0
	csel	w9, w9, wzr, eq
	subs	x11, x11, #1
	orr	w9, w9, w14
	str	w13, [x8], #4
	b.ne	.LBB26_29
// %bb.30:
	cmp	w9, #0
	cset	w8, eq
	b	.LBB26_32
.LBB26_31:
	mov	w8, #1                          // =0x1
.LBB26_32:
	sxtb	w9, w24
	cmp	w9, #1
	b.lt	.LBB26_36
// %bb.33:
	tbnz	w8, #0, .LBB26_36
// %bb.34:
	mov	w10, wzr
	mov	x8, sp
	mov	x9, x25
	mov	x11, x24
.LBB26_35:                              // =>This Inner Loop Header: Depth=1
	ldr	w12, [x8]
	ldr	w13, [x9], #4
	add	w14, w12, w10
	add	w13, w14, w13
	cmp	w13, w12
	str	w13, [x8], #4
	cset	w12, lo
	csel	w10, w10, wzr, eq
	subs	x11, x11, #1
	orr	w10, w10, w12
	b.ne	.LBB26_35
.LBB26_36:
	sxtb	w8, w24
	cmp	w8, #1
	b.lt	.LBB26_40
// %bb.37:
	mov	w10, wzr
	mov	x8, x19
	mov	x9, x23
	mov	x11, x24
.LBB26_38:                              // =>This Inner Loop Header: Depth=1
	ldr	w12, [x9], #4
	ldr	w13, [x8]
	add	w12, w12, w10
	subs	w13, w13, w12
	cset	w14, lo
	cmp	w12, #0
	csel	w10, w10, wzr, eq
	subs	x11, x11, #1
	orr	w10, w10, w14
	str	w13, [x8], #4
	b.ne	.LBB26_38
// %bb.39:
	cmp	w10, #0
	cset	w8, eq
	b	.LBB26_41
.LBB26_40:
	mov	w8, #1                          // =0x1
.LBB26_41:
	sxtb	w9, w24
	cmp	w9, #1
	b.lt	.LBB26_45
// %bb.42:
	tbnz	w8, #0, .LBB26_45
// %bb.43:
	mov	w11, wzr
	mov	x8, x19
	mov	x9, x25
	mov	x10, x24
.LBB26_44:                              // =>This Inner Loop Header: Depth=1
	ldr	w12, [x8]
	ldr	w13, [x9], #4
	add	w14, w12, w11
	add	w13, w14, w13
	cmp	w13, w12
	str	w13, [x8], #4
	cset	w12, lo
	csel	w11, w11, wzr, eq
	subs	x10, x10, #1
	orr	w11, w11, w12
	b.ne	.LBB26_44
.LBB26_45:
	mov	x0, x21
	mov	x1, x21
	mov	x2, x19
	mov	x3, x22
	sxtb	w26, w24
	bl	uECC_vli_modMult_fast
	cmp	w26, #1
	b.lt	.LBB26_49
// %bb.46:
	mov	w9, wzr
	mov	x8, sp
	mov	x10, x19
	mov	x11, x24
.LBB26_47:                              // =>This Inner Loop Header: Depth=1
	ldr	w12, [x8], #4
	ldr	w13, [x23], #4
	add	w12, w12, w9
	subs	w13, w13, w12
	cset	w14, lo
	cmp	w12, #0
	csel	w9, w9, wzr, eq
	subs	x11, x11, #1
	orr	w9, w9, w14
	str	w13, [x10], #4
	b.ne	.LBB26_47
// %bb.48:
	cmp	w9, #0
	cset	w8, eq
	b	.LBB26_50
.LBB26_49:
	mov	w8, #1                          // =0x1
.LBB26_50:
	sxtb	w9, w24
	cmp	w9, #1
	b.lt	.LBB26_54
// %bb.51:
	tbnz	w8, #0, .LBB26_54
// %bb.52:
	mov	w11, wzr
	mov	x8, x19
	mov	x9, x25
	mov	x10, x24
.LBB26_53:                              // =>This Inner Loop Header: Depth=1
	ldr	w12, [x8]
	ldr	w13, [x9], #4
	add	w14, w12, w11
	add	w13, w14, w13
	cmp	w13, w12
	str	w13, [x8], #4
	cset	w12, lo
	csel	w11, w11, wzr, eq
	subs	x10, x10, #1
	orr	w11, w11, w12
	b.ne	.LBB26_53
.LBB26_54:
	mov	x0, x20
	mov	x1, x20
	mov	x2, x19
	mov	x3, x22
	sxtb	w23, w24
	bl	uECC_vli_modMult_fast
	cmp	w23, #1
	b.lt	.LBB26_58
// %bb.55:
	mov	w9, wzr
	mov	x8, x20
	mov	x10, x24
.LBB26_56:                              // =>This Inner Loop Header: Depth=1
	ldr	w11, [x21], #4
	ldr	w12, [x8]
	add	w11, w11, w9
	subs	w12, w12, w11
	cset	w13, lo
	cmp	w11, #0
	csel	w9, w9, wzr, eq
	subs	x10, x10, #1
	orr	w9, w9, w13
	str	w12, [x8], #4
	b.ne	.LBB26_56
// %bb.57:
	cmp	w9, #0
	cset	w8, eq
	b	.LBB26_59
.LBB26_58:
	mov	w8, #1                          // =0x1
.LBB26_59:
	sxtb	w9, w24
	cmp	w9, #1
	b.lt	.LBB26_63
// %bb.60:
	tbnz	w8, #0, .LBB26_63
// %bb.61:
	mov	w9, wzr
	mov	x8, x24
.LBB26_62:                              // =>This Inner Loop Header: Depth=1
	ldr	w10, [x20]
	ldr	w11, [x25], #4
	add	w12, w10, w9
	add	w11, w12, w11
	cmp	w11, w10
	str	w11, [x20], #4
	cset	w10, lo
	csel	w9, w9, wzr, eq
	subs	x8, x8, #1
	orr	w9, w9, w10
	b.ne	.LBB26_62
.LBB26_63:
	sxtb	w8, w24
	cmp	w8, #1
	b.lt	.LBB26_65
// %bb.64:
	lsl	x2, x24, #2
	mov	x1, sp
	mov	x0, x19
	bl	memcpy
.LBB26_65:
	.cfi_def_cfa wsp, 112
	ldp	x20, x19, [sp, #96]             // 16-byte Folded Reload
	ldp	x22, x21, [sp, #80]             // 16-byte Folded Reload
	ldp	x24, x23, [sp, #64]             // 16-byte Folded Reload
	ldp	x26, x25, [sp, #48]             // 16-byte Folded Reload
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #112
	.cfi_def_cfa_offset 0
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w23
	.cfi_restore w24
	.cfi_restore w25
	.cfi_restore w26
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end26:
	.size	XYcZ_add, .Lfunc_end26-XYcZ_add
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
	stp	x29, x30, [sp, #240]            // 16-byte Folded Spill
	stp	x28, x27, [sp, #256]            // 16-byte Folded Spill
	stp	x26, x25, [sp, #272]            // 16-byte Folded Spill
	stp	x24, x23, [sp, #288]            // 16-byte Folded Spill
	stp	x22, x21, [sp, #304]            // 16-byte Folded Spill
	stp	x20, x19, [sp, #320]            // 16-byte Folded Spill
	add	x29, sp, #240
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
	ldrsb	x19, [x5]
	add	x8, sp, #104
	mov	x20, x5
	mov	w27, w4
	mov	x28, x3
	mov	x26, x2
	mov	x21, x1
	cmp	x19, #1
	and	x22, x19, #0xff
	add	x25, x8, #32
	str	x0, [sp, #16]                   // 8-byte Folded Spill
	b.lt	.LBB27_2
// %bb.1:
	lsl	x2, x22, #2
	mov	x0, x25
	mov	x1, x21
	bl	memcpy
.LBB27_2:
	sxtb	w8, w22
	add	x23, x21, x19, lsl #2
	str	x21, [sp, #32]                  // 8-byte Folded Spill
	add	x21, sp, #40
	cmp	w8, #1
	b.lt	.LBB27_4
// %bb.3:
	lsl	x2, x22, #2
	add	x0, x21, #32
	mov	x1, x23
	bl	memcpy
.LBB27_4:
	str	x23, [sp, #24]                  // 8-byte Folded Spill
	lsl	x23, x22, #2
	cbz	x28, .LBB27_7
// %bb.5:
	sxtb	w8, w22
	cmp	w8, #1
	b.lt	.LBB27_12
// %bb.6:
	sub	x0, x29, #72
	mov	x1, x28
	mov	x2, x23
	bl	memcpy
	b	.LBB27_10
.LBB27_7:
	cmp	w19, #1
	b.lt	.LBB27_9
// %bb.8:
	sub	x0, x29, #72
	mov	w1, wzr
	mov	x2, x23
	bl	memset
.LBB27_9:
	mov	w8, #1                          // =0x1
	stur	w8, [x29, #-72]
.LBB27_10:
	sxtb	w8, w22
	cmp	w8, #1
	b.lt	.LBB27_12
// %bb.11:
	add	x0, sp, #104
	mov	x1, x25
	mov	x2, x23
	bl	memmove
	add	x0, sp, #40
	add	x1, x21, #32
	mov	x2, x23
	bl	memmove
.LBB27_12:
	sub	x0, x29, #40
	sub	x1, x29, #72
	sub	x2, x29, #72
	mov	x3, x20
	stp	x23, x19, [sp]                  // 16-byte Folded Spill
	bl	uECC_vli_modMult_fast
	sub	x2, x29, #40
	mov	x0, x25
	mov	x1, x25
	mov	x3, x20
	bl	uECC_vli_modMult_fast
	sub	x0, x29, #40
	sub	x1, x29, #40
	sub	x2, x29, #72
	mov	x3, x20
	bl	uECC_vli_modMult_fast
	add	x0, x21, #32
	add	x1, x21, #32
	sub	x2, x29, #40
	mov	x3, x20
	bl	uECC_vli_modMult_fast
	ldr	x8, [x20, #168]
	add	x1, x21, #32
	sub	x2, x29, #72
	mov	x0, x25
	mov	x3, x20
	blr	x8
	sub	x0, x29, #40
	sub	x1, x29, #72
	sub	x2, x29, #72
	mov	x3, x20
	bl	uECC_vli_modMult_fast
	add	x0, sp, #104
	add	x1, sp, #104
	sub	x2, x29, #40
	mov	x3, x20
	add	x28, sp, #104
	bl	uECC_vli_modMult_fast
	sub	x0, x29, #40
	sub	x1, x29, #40
	sub	x2, x29, #72
	mov	x3, x20
	bl	uECC_vli_modMult_fast
	add	x0, sp, #40
	add	x1, sp, #40
	sub	x2, x29, #40
	mov	x3, x20
	add	x24, sp, #40
	bl	uECC_vli_modMult_fast
	sub	w8, w27, #2
	sxth	w8, w8
	cmp	w8, #1
	b.lt	.LBB27_15
// %bb.13:
	and	w21, w8, #0xffff
	mov	w27, #1                         // =0x1
.LBB27_14:                              // =>This Inner Loop Header: Depth=1
	lsr	w8, w21, #5
	lsl	w9, w27, w21
	mov	x4, x20
	ldr	w8, [x26, w8, uxtw #2]
	tst	w8, w9
	cset	w8, eq
	cset	w9, ne
	ubfiz	x23, x9, #5, #32
	ubfiz	x19, x8, #5, #32
	add	x0, x28, x23
	add	x1, x24, x23
	add	x2, x28, x19
	add	x3, x24, x19
	bl	XYcZ_addC
	add	x0, x28, x19
	add	x1, x24, x19
	add	x2, x28, x23
	add	x3, x24, x23
	mov	x4, x20
	bl	XYcZ_add
	subs	w21, w21, #1
	b.gt	.LBB27_14
.LBB27_15:
	ldr	w8, [x26]
	mov	x4, x20
	sxtb	w19, w22
	and	x8, x8, #0x1
	eor	w9, w8, #0x1
	lsl	x27, x8, #5
	ubfiz	x21, x9, #5, #32
	add	x0, x28, x27
	add	x1, x24, x27
	add	x2, x28, x21
	add	x3, x24, x21
	bl	XYcZ_addC
	cmp	w19, #1
	add	x26, x20, #4
	b.lt	.LBB27_19
// %bb.16:
	ldr	x19, [sp, #24]                  // 8-byte Folded Reload
	mov	w9, wzr
	sub	x8, x29, #72
	mov	x10, x22
.LBB27_17:                              // =>This Inner Loop Header: Depth=1
	ldur	w11, [x25, #-32]
	ldr	w12, [x25], #4
	add	w11, w11, w9
	subs	w12, w12, w11
	cset	w13, lo
	cmp	w11, #0
	csel	w9, w9, wzr, eq
	subs	x10, x10, #1
	orr	w9, w9, w13
	str	w12, [x8], #4
	b.ne	.LBB27_17
// %bb.18:
	cmp	w9, #0
	cset	w8, eq
	b	.LBB27_20
.LBB27_19:
	ldr	x19, [sp, #24]                  // 8-byte Folded Reload
	mov	w8, #1                          // =0x1
.LBB27_20:
	sxtb	w9, w22
	cmp	w9, #1
	b.lt	.LBB27_24
// %bb.21:
	tbnz	w8, #0, .LBB27_24
// %bb.22:
	mov	w10, wzr
	sub	x8, x29, #72
	mov	x9, x26
	mov	x11, x22
.LBB27_23:                              // =>This Inner Loop Header: Depth=1
	ldr	w12, [x8]
	ldr	w13, [x9], #4
	add	w14, w12, w10
	add	w13, w14, w13
	cmp	w13, w12
	str	w13, [x8], #4
	cset	w12, lo
	csel	w10, w10, wzr, eq
	subs	x11, x11, #1
	orr	w10, w10, w12
	b.ne	.LBB27_23
.LBB27_24:
	sub	x0, x29, #72
	sub	x1, x29, #72
	add	x2, x24, x27
	mov	x3, x20
	sxtb	w25, w22
	bl	uECC_vli_modMult_fast
	ldr	x2, [sp, #32]                   // 8-byte Folded Reload
	sub	x0, x29, #72
	sub	x1, x29, #72
	mov	x3, x20
	bl	uECC_vli_modMult_fast
	sub	x0, x29, #72
	sub	x1, x29, #72
	mov	x2, x26
	mov	w3, w22
	bl	uECC_vli_modInv
	sub	x0, x29, #72
	sub	x1, x29, #72
	mov	x2, x19
	mov	x3, x20
	bl	uECC_vli_modMult_fast
	sub	x0, x29, #72
	sub	x1, x29, #72
	add	x2, x28, x27
	mov	x3, x20
	bl	uECC_vli_modMult_fast
	add	x0, x28, x21
	add	x1, x24, x21
	add	x2, x28, x27
	add	x3, x24, x27
	mov	x4, x20
	bl	XYcZ_add
	sub	x0, x29, #40
	sub	x1, x29, #72
	sub	x2, x29, #72
	mov	x3, x20
	bl	uECC_vli_modMult_fast
	add	x0, sp, #104
	add	x1, sp, #104
	sub	x2, x29, #40
	mov	x3, x20
	bl	uECC_vli_modMult_fast
	sub	x0, x29, #40
	sub	x1, x29, #40
	sub	x2, x29, #72
	mov	x3, x20
	bl	uECC_vli_modMult_fast
	add	x0, sp, #40
	add	x1, sp, #40
	sub	x2, x29, #40
	mov	x3, x20
	bl	uECC_vli_modMult_fast
	cmp	w25, #1
	b.lt	.LBB27_26
// %bb.25:
	ldr	x19, [sp, #16]                  // 8-byte Folded Reload
	ldr	x20, [sp]                       // 8-byte Folded Reload
	add	x1, sp, #104
	mov	x0, x19
	mov	x2, x20
	bl	memcpy
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	add	x1, sp, #40
	mov	x2, x20
	add	x0, x19, x8, lsl #2
	bl	memcpy
.LBB27_26:
	.cfi_def_cfa wsp, 336
	ldp	x20, x19, [sp, #320]            // 16-byte Folded Reload
	ldp	x22, x21, [sp, #304]            // 16-byte Folded Reload
	ldp	x24, x23, [sp, #288]            // 16-byte Folded Reload
	ldp	x26, x25, [sp, #272]            // 16-byte Folded Reload
	ldp	x28, x27, [sp, #256]            // 16-byte Folded Reload
	ldp	x29, x30, [sp, #240]            // 16-byte Folded Reload
	add	sp, sp, #336
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
.Lfunc_end27:
	.size	EccPoint_mult, .Lfunc_end27-EccPoint_mult
	.cfi_endproc
                                        // -- End function
	.p2align	2                               // -- Begin function XYcZ_addC
	.type	XYcZ_addC,@function
XYcZ_addC:                              // @XYcZ_addC
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #192
	.cfi_def_cfa_offset 192
	stp	x29, x30, [sp, #96]             // 16-byte Folded Spill
	str	x27, [sp, #112]                 // 8-byte Folded Spill
	stp	x26, x25, [sp, #128]            // 16-byte Folded Spill
	stp	x24, x23, [sp, #144]            // 16-byte Folded Spill
	stp	x22, x21, [sp, #160]            // 16-byte Folded Spill
	stp	x20, x19, [sp, #176]            // 16-byte Folded Spill
	add	x29, sp, #96
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
	mov	x25, x4
	mov	x21, x4
	mov	x22, x3
	ldrsb	w8, [x25], #4
	mov	x23, x2
	mov	x20, x1
	mov	x19, x0
	cmp	w8, #1
	and	x24, x8, #0xff
	b.lt	.LBB28_4
// %bb.1:
	mov	w9, wzr
	sub	x8, x29, #32
	mov	x10, x23
	mov	x11, x19
	mov	x12, x24
.LBB28_2:                               // =>This Inner Loop Header: Depth=1
	ldr	w13, [x11], #4
	ldr	w14, [x10], #4
	add	w13, w13, w9
	subs	w14, w14, w13
	cset	w15, lo
	cmp	w13, #0
	csel	w9, w9, wzr, eq
	subs	x12, x12, #1
	orr	w9, w9, w15
	str	w14, [x8], #4
	b.ne	.LBB28_2
// %bb.3:
	cmp	w9, #0
	cset	w8, eq
	b	.LBB28_5
.LBB28_4:
	mov	w8, #1                          // =0x1
.LBB28_5:
	sxtb	w9, w24
	cmp	w9, #1
	b.lt	.LBB28_9
// %bb.6:
	tbnz	w8, #0, .LBB28_9
// %bb.7:
	mov	w10, wzr
	sub	x8, x29, #32
	mov	x9, x25
	mov	x11, x24
.LBB28_8:                               // =>This Inner Loop Header: Depth=1
	ldr	w12, [x8]
	ldr	w13, [x9], #4
	add	w14, w12, w10
	add	w13, w14, w13
	cmp	w13, w12
	str	w13, [x8], #4
	cset	w12, lo
	csel	w10, w10, wzr, eq
	subs	x11, x11, #1
	orr	w10, w10, w12
	b.ne	.LBB28_8
.LBB28_9:
	sub	x0, x29, #32
	sub	x1, x29, #32
	sub	x2, x29, #32
	mov	x3, x21
	sxtb	w27, w24
	sub	x26, x29, #32
	bl	uECC_vli_modMult_fast
	sub	x2, x29, #32
	mov	x0, x19
	mov	x1, x19
	mov	x3, x21
	bl	uECC_vli_modMult_fast
	sub	x2, x29, #32
	mov	x0, x23
	mov	x1, x23
	mov	x3, x21
	bl	uECC_vli_modMult_fast
	cmp	w27, #1
	b.lt	.LBB28_13
// %bb.10:
	mov	w9, wzr
	sub	x8, x29, #32
	mov	x10, x22
	mov	x11, x20
	mov	x12, x24
.LBB28_11:                              // =>This Inner Loop Header: Depth=1
	ldr	w13, [x10], #4
	ldr	w14, [x11], #4
	add	w15, w13, w9
	add	w14, w15, w14
	cmp	w14, w13
	str	w14, [x8], #4
	cset	w13, lo
	csel	w9, w9, wzr, eq
	subs	x12, x12, #1
	orr	w9, w9, w13
	b.ne	.LBB28_11
// %bb.12:
	cbnz	w9, .LBB28_21
.LBB28_13:
	sub	x8, x24, #1
.LBB28_14:                              // =>This Inner Loop Header: Depth=1
	tbnz	w8, #7, .LBB28_17
// %bb.15:                              //   in Loop: Header=BB28_14 Depth=1
	mov	w9, w8
	ubfiz	x10, x9, #2, #7
	ldr	w9, [x25, x10]
	ldr	w10, [x26, x10]
	cmp	w9, w10
	b.hi	.LBB28_18
// %bb.16:                              //   in Loop: Header=BB28_14 Depth=1
	cmp	w9, w10
	sub	x8, x8, #1
	b.hs	.LBB28_14
.LBB28_17:
	mov	w8, wzr
	b	.LBB28_19
.LBB28_18:
	mov	w8, #1                          // =0x1
.LBB28_19:
	sxtb	w9, w24
	cmp	w9, #1
	b.lt	.LBB28_23
// %bb.20:
	tbnz	w8, #0, .LBB28_23
.LBB28_21:
	mov	w10, wzr
	sub	x8, x29, #32
	mov	x9, x25
	mov	x11, x24
.LBB28_22:                              // =>This Inner Loop Header: Depth=1
	ldr	w12, [x9], #4
	ldr	w13, [x8]
	add	w12, w12, w10
	subs	w13, w13, w12
	cset	w14, lo
	cmp	w12, #0
	csel	w10, w10, wzr, eq
	subs	x11, x11, #1
	orr	w10, w10, w14
	str	w13, [x8], #4
	b.ne	.LBB28_22
.LBB28_23:
	sxtb	w8, w24
	cmp	w8, #1
	b.lt	.LBB28_27
// %bb.24:
	mov	w10, wzr
	mov	x8, x22
	mov	x9, x20
	mov	x11, x24
.LBB28_25:                              // =>This Inner Loop Header: Depth=1
	ldr	w12, [x9], #4
	ldr	w13, [x8]
	add	w12, w12, w10
	subs	w13, w13, w12
	cset	w14, lo
	cmp	w12, #0
	csel	w10, w10, wzr, eq
	subs	x11, x11, #1
	orr	w10, w10, w14
	str	w13, [x8], #4
	b.ne	.LBB28_25
// %bb.26:
	cmp	w10, #0
	cset	w8, eq
	b	.LBB28_28
.LBB28_27:
	mov	w8, #1                          // =0x1
.LBB28_28:
	sxtb	w9, w24
	cmp	w9, #1
	b.lt	.LBB28_32
// %bb.29:
	tbnz	w8, #0, .LBB28_32
// %bb.30:
	mov	w11, wzr
	mov	x8, x22
	mov	x9, x25
	mov	x10, x24
.LBB28_31:                              // =>This Inner Loop Header: Depth=1
	ldr	w12, [x8]
	ldr	w13, [x9], #4
	add	w14, w12, w11
	add	w13, w14, w13
	cmp	w13, w12
	str	w13, [x8], #4
	cset	w12, lo
	csel	w11, w11, wzr, eq
	subs	x10, x10, #1
	orr	w11, w11, w12
	b.ne	.LBB28_31
.LBB28_32:
	sxtb	w8, w24
	cmp	w8, #1
	b.lt	.LBB28_36
// %bb.33:
	mov	w9, wzr
	add	x8, sp, #32
	mov	x10, x23
	mov	x11, x19
	mov	x12, x24
.LBB28_34:                              // =>This Inner Loop Header: Depth=1
	ldr	w13, [x11], #4
	ldr	w14, [x10], #4
	add	w13, w13, w9
	subs	w14, w14, w13
	cset	w15, lo
	cmp	w13, #0
	csel	w9, w9, wzr, eq
	subs	x12, x12, #1
	orr	w9, w9, w15
	str	w14, [x8], #4
	b.ne	.LBB28_34
// %bb.35:
	cmp	w9, #0
	cset	w8, eq
	b	.LBB28_37
.LBB28_36:
	mov	w8, #1                          // =0x1
.LBB28_37:
	sxtb	w9, w24
	cmp	w9, #1
	b.lt	.LBB28_41
// %bb.38:
	tbnz	w8, #0, .LBB28_41
// %bb.39:
	mov	w10, wzr
	add	x8, sp, #32
	mov	x9, x25
	mov	x11, x24
.LBB28_40:                              // =>This Inner Loop Header: Depth=1
	ldr	w12, [x8]
	ldr	w13, [x9], #4
	add	w14, w12, w10
	add	w13, w14, w13
	cmp	w13, w12
	str	w13, [x8], #4
	cset	w12, lo
	csel	w10, w10, wzr, eq
	subs	x11, x11, #1
	orr	w10, w10, w12
	b.ne	.LBB28_40
.LBB28_41:
	add	x2, sp, #32
	mov	x0, x20
	mov	x1, x20
	mov	x3, x21
	sxtb	w27, w24
	add	x26, sp, #32
	bl	uECC_vli_modMult_fast
	cmp	w27, #1
	b.lt	.LBB28_45
// %bb.42:
	mov	w9, wzr
	add	x8, sp, #32
	mov	x10, x19
	mov	x11, x23
	mov	x12, x24
.LBB28_43:                              // =>This Inner Loop Header: Depth=1
	ldr	w13, [x10], #4
	ldr	w14, [x11], #4
	add	w15, w13, w9
	add	w14, w15, w14
	cmp	w14, w13
	str	w14, [x8], #4
	cset	w13, lo
	csel	w9, w9, wzr, eq
	subs	x12, x12, #1
	orr	w9, w9, w13
	b.ne	.LBB28_43
// %bb.44:
	cbnz	w9, .LBB28_53
.LBB28_45:
	sub	x8, x24, #1
.LBB28_46:                              // =>This Inner Loop Header: Depth=1
	tbnz	w8, #7, .LBB28_49
// %bb.47:                              //   in Loop: Header=BB28_46 Depth=1
	mov	w9, w8
	ubfiz	x10, x9, #2, #7
	ldr	w9, [x25, x10]
	ldr	w10, [x26, x10]
	cmp	w9, w10
	b.hi	.LBB28_50
// %bb.48:                              //   in Loop: Header=BB28_46 Depth=1
	cmp	w9, w10
	sub	x8, x8, #1
	b.hs	.LBB28_46
.LBB28_49:
	mov	w8, wzr
	b	.LBB28_51
.LBB28_50:
	mov	w8, #1                          // =0x1
.LBB28_51:
	sxtb	w9, w24
	cmp	w9, #1
	b.lt	.LBB28_55
// %bb.52:
	tbnz	w8, #0, .LBB28_55
.LBB28_53:
	mov	w10, wzr
	add	x8, sp, #32
	mov	x9, x25
	mov	x11, x24
.LBB28_54:                              // =>This Inner Loop Header: Depth=1
	ldr	w12, [x9], #4
	ldr	w13, [x8]
	add	w12, w12, w10
	subs	w13, w13, w12
	cset	w14, lo
	cmp	w12, #0
	csel	w10, w10, wzr, eq
	subs	x11, x11, #1
	orr	w10, w10, w14
	str	w13, [x8], #4
	b.ne	.LBB28_54
.LBB28_55:
	mov	x0, x23
	mov	x1, x22
	mov	x2, x22
	mov	x3, x21
	sxtb	w26, w24
	bl	uECC_vli_modMult_fast
	cmp	w26, #1
	b.lt	.LBB28_59
// %bb.56:
	mov	w9, wzr
	add	x8, sp, #32
	mov	x10, x23
	mov	x11, x24
.LBB28_57:                              // =>This Inner Loop Header: Depth=1
	ldr	w12, [x8], #4
	ldr	w13, [x10]
	add	w12, w12, w9
	subs	w13, w13, w12
	cset	w14, lo
	cmp	w12, #0
	csel	w9, w9, wzr, eq
	subs	x11, x11, #1
	orr	w9, w9, w14
	str	w13, [x10], #4
	b.ne	.LBB28_57
// %bb.58:
	cmp	w9, #0
	cset	w8, eq
	b	.LBB28_60
.LBB28_59:
	mov	w8, #1                          // =0x1
.LBB28_60:
	sxtb	w9, w24
	cmp	w9, #1
	b.lt	.LBB28_64
// %bb.61:
	tbnz	w8, #0, .LBB28_64
// %bb.62:
	mov	w11, wzr
	mov	x8, x23
	mov	x9, x25
	mov	x10, x24
.LBB28_63:                              // =>This Inner Loop Header: Depth=1
	ldr	w12, [x8]
	ldr	w13, [x9], #4
	add	w14, w12, w11
	add	w13, w14, w13
	cmp	w13, w12
	str	w13, [x8], #4
	cset	w12, lo
	csel	w11, w11, wzr, eq
	subs	x10, x10, #1
	orr	w11, w11, w12
	b.ne	.LBB28_63
.LBB28_64:
	sxtb	w8, w24
	cmp	w8, #1
	b.lt	.LBB28_68
// %bb.65:
	mov	w9, wzr
	mov	x8, sp
	mov	x10, x19
	mov	x11, x24
.LBB28_66:                              // =>This Inner Loop Header: Depth=1
	ldr	w12, [x23], #4
	ldr	w13, [x10], #4
	add	w12, w12, w9
	subs	w13, w13, w12
	cset	w14, lo
	cmp	w12, #0
	csel	w9, w9, wzr, eq
	subs	x11, x11, #1
	orr	w9, w9, w14
	str	w13, [x8], #4
	b.ne	.LBB28_66
// %bb.67:
	cmp	w9, #0
	cset	w8, eq
	b	.LBB28_69
.LBB28_68:
	mov	w8, #1                          // =0x1
.LBB28_69:
	sxtb	w9, w24
	cmp	w9, #1
	b.lt	.LBB28_73
// %bb.70:
	tbnz	w8, #0, .LBB28_73
// %bb.71:
	mov	w10, wzr
	mov	x8, sp
	mov	x9, x25
	mov	x11, x24
.LBB28_72:                              // =>This Inner Loop Header: Depth=1
	ldr	w12, [x8]
	ldr	w13, [x9], #4
	add	w14, w12, w10
	add	w13, w14, w13
	cmp	w13, w12
	str	w13, [x8], #4
	cset	w12, lo
	csel	w10, w10, wzr, eq
	subs	x11, x11, #1
	orr	w10, w10, w12
	b.ne	.LBB28_72
.LBB28_73:
	mov	x2, sp
	mov	x0, x22
	mov	x1, x22
	mov	x3, x21
	sxtb	w23, w24
	bl	uECC_vli_modMult_fast
	cmp	w23, #1
	b.lt	.LBB28_77
// %bb.74:
	mov	w10, wzr
	mov	x8, x22
	mov	x9, x20
	mov	x11, x24
.LBB28_75:                              // =>This Inner Loop Header: Depth=1
	ldr	w12, [x9], #4
	ldr	w13, [x8]
	add	w12, w12, w10
	subs	w13, w13, w12
	cset	w14, lo
	cmp	w12, #0
	csel	w10, w10, wzr, eq
	subs	x11, x11, #1
	orr	w10, w10, w14
	str	w13, [x8], #4
	b.ne	.LBB28_75
// %bb.76:
	cmp	w10, #0
	cset	w8, eq
	b	.LBB28_78
.LBB28_77:
	mov	w8, #1                          // =0x1
.LBB28_78:
	sxtb	w9, w24
	cmp	w9, #1
	b.lt	.LBB28_82
// %bb.79:
	tbnz	w8, #0, .LBB28_82
// %bb.80:
	mov	w10, wzr
	mov	x8, x25
	mov	x9, x24
.LBB28_81:                              // =>This Inner Loop Header: Depth=1
	ldr	w11, [x22]
	ldr	w12, [x8], #4
	add	w13, w11, w10
	add	w12, w13, w12
	cmp	w12, w11
	str	w12, [x22], #4
	cset	w11, lo
	csel	w10, w10, wzr, eq
	subs	x9, x9, #1
	orr	w10, w10, w11
	b.ne	.LBB28_81
.LBB28_82:
	mov	x0, sp
	sub	x1, x29, #32
	sub	x2, x29, #32
	mov	x3, x21
	sxtb	w22, w24
	bl	uECC_vli_modMult_fast
	cmp	w22, #1
	b.lt	.LBB28_86
// %bb.83:
	mov	w9, wzr
	add	x8, sp, #32
	mov	x10, sp
	mov	x11, x24
.LBB28_84:                              // =>This Inner Loop Header: Depth=1
	ldr	w12, [x8], #4
	ldr	w13, [x10]
	add	w12, w12, w9
	subs	w13, w13, w12
	cset	w14, lo
	cmp	w12, #0
	csel	w9, w9, wzr, eq
	subs	x11, x11, #1
	orr	w9, w9, w14
	str	w13, [x10], #4
	b.ne	.LBB28_84
// %bb.85:
	cmp	w9, #0
	cset	w8, eq
	b	.LBB28_87
.LBB28_86:
	mov	w8, #1                          // =0x1
.LBB28_87:
	sxtb	w9, w24
	cmp	w9, #1
	b.lt	.LBB28_91
// %bb.88:
	tbnz	w8, #0, .LBB28_91
// %bb.89:
	mov	w10, wzr
	mov	x8, sp
	mov	x9, x25
	mov	x11, x24
.LBB28_90:                              // =>This Inner Loop Header: Depth=1
	ldr	w12, [x8]
	ldr	w13, [x9], #4
	add	w14, w12, w10
	add	w13, w14, w13
	cmp	w13, w12
	str	w13, [x8], #4
	cset	w12, lo
	csel	w10, w10, wzr, eq
	subs	x11, x11, #1
	orr	w10, w10, w12
	b.ne	.LBB28_90
.LBB28_91:
	sxtb	w8, w24
	cmp	w8, #1
	b.lt	.LBB28_95
// %bb.92:
	mov	w9, wzr
	add	x8, sp, #32
	mov	x10, sp
	mov	x11, x19
	mov	x12, x24
.LBB28_93:                              // =>This Inner Loop Header: Depth=1
	ldr	w13, [x11], #4
	ldr	w14, [x10], #4
	add	w13, w13, w9
	subs	w14, w14, w13
	cset	w15, lo
	cmp	w13, #0
	csel	w9, w9, wzr, eq
	subs	x12, x12, #1
	orr	w9, w9, w15
	str	w14, [x8], #4
	b.ne	.LBB28_93
// %bb.94:
	cmp	w9, #0
	cset	w8, eq
	b	.LBB28_96
.LBB28_95:
	mov	w8, #1                          // =0x1
.LBB28_96:
	sxtb	w9, w24
	cmp	w9, #1
	b.lt	.LBB28_100
// %bb.97:
	tbnz	w8, #0, .LBB28_100
// %bb.98:
	mov	w9, wzr
	add	x8, sp, #32
	mov	x10, x25
	mov	x11, x24
.LBB28_99:                              // =>This Inner Loop Header: Depth=1
	ldr	w12, [x8]
	ldr	w13, [x10], #4
	add	w14, w12, w9
	add	w13, w14, w13
	cmp	w13, w12
	str	w13, [x8], #4
	cset	w12, lo
	csel	w9, w9, wzr, eq
	subs	x11, x11, #1
	orr	w9, w9, w12
	b.ne	.LBB28_99
.LBB28_100:
	add	x0, sp, #32
	add	x1, sp, #32
	sub	x2, x29, #32
	mov	x3, x21
	sxtb	w22, w24
	bl	uECC_vli_modMult_fast
	cmp	w22, #1
	b.lt	.LBB28_104
// %bb.101:
	mov	w9, wzr
	add	x8, sp, #32
	mov	x10, x20
	mov	x11, x24
.LBB28_102:                             // =>This Inner Loop Header: Depth=1
	ldr	w12, [x10]
	ldr	w13, [x8], #4
	add	w12, w12, w9
	subs	w13, w13, w12
	cset	w14, lo
	cmp	w12, #0
	csel	w9, w9, wzr, eq
	subs	x11, x11, #1
	orr	w9, w9, w14
	str	w13, [x10], #4
	b.ne	.LBB28_102
// %bb.103:
	cmp	w9, #0
	cset	w8, eq
	b	.LBB28_105
.LBB28_104:
	mov	w8, #1                          // =0x1
.LBB28_105:
	sxtb	w9, w24
	cmp	w9, #1
	b.lt	.LBB28_109
// %bb.106:
	tbnz	w8, #0, .LBB28_109
// %bb.107:
	mov	w9, wzr
	mov	x8, x24
.LBB28_108:                             // =>This Inner Loop Header: Depth=1
	ldr	w10, [x20]
	ldr	w11, [x25], #4
	add	w12, w10, w9
	add	w11, w12, w11
	cmp	w11, w10
	str	w11, [x20], #4
	cset	w10, lo
	csel	w9, w9, wzr, eq
	subs	x8, x8, #1
	orr	w9, w9, w10
	b.ne	.LBB28_108
.LBB28_109:
	sxtb	w8, w24
	cmp	w8, #1
	b.lt	.LBB28_111
// %bb.110:
	lsl	x2, x24, #2
	mov	x1, sp
	mov	x0, x19
	bl	memcpy
.LBB28_111:
	.cfi_def_cfa wsp, 192
	ldp	x20, x19, [sp, #176]            // 16-byte Folded Reload
	ldr	x27, [sp, #112]                 // 8-byte Folded Reload
	ldp	x22, x21, [sp, #160]            // 16-byte Folded Reload
	ldp	x24, x23, [sp, #144]            // 16-byte Folded Reload
	ldp	x26, x25, [sp, #128]            // 16-byte Folded Reload
	ldp	x29, x30, [sp, #96]             // 16-byte Folded Reload
	add	sp, sp, #192
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
.Lfunc_end28:
	.size	XYcZ_addC, .Lfunc_end28-XYcZ_addC
	.cfi_endproc
                                        // -- End function
	.globl	regularize_k                    // -- Begin function regularize_k
	.p2align	2
	.type	regularize_k,@function
regularize_k:                           // @regularize_k
	.cfi_startproc
// %bb.0:
	ldrsh	w10, [x3, #2]
	adds	w8, w10, #31
	add	w9, w10, #62
	csel	w8, w9, w8, lt
	sbfx	w11, w8, #5, #8
	asr	w9, w8, #5
	add	x8, x3, #36
	cmp	w11, #1
	b.lt	.LBB29_5
// %bb.1:
	mov	w12, wzr
	and	w11, w9, #0xff
	mov	x13, x8
	mov	x14, x1
.LBB29_2:                               // =>This Inner Loop Header: Depth=1
	ldr	w15, [x0], #4
	ldr	w16, [x13], #4
	add	w17, w15, w12
	add	w16, w17, w16
	cmp	w16, w15
	str	w16, [x14], #4
	cset	w15, lo
	csel	w12, w12, wzr, eq
	subs	x11, x11, #1
	orr	w12, w12, w15
	b.ne	.LBB29_2
// %bb.3:
	cbz	w12, .LBB29_5
// %bb.4:
	mov	w0, #1                          // =0x1
	b	.LBB29_8
.LBB29_5:
	lsl	w11, w9, #24
	cmp	w10, w11, asr #19
	b.ge	.LBB29_7
// %bb.6:
	asr	w11, w10, #5
	ldr	w11, [x1, w11, sxtw #2]
	lsr	w10, w11, w10
	and	w0, w10, #0x1
	b	.LBB29_8
.LBB29_7:
	mov	w0, wzr
.LBB29_8:
	sxtb	w10, w9
	cmp	w10, #1
	b.lt	.LBB29_11
// %bb.9:
	mov	w10, wzr
	and	w9, w9, #0xff
.LBB29_10:                              // =>This Inner Loop Header: Depth=1
	ldr	w11, [x1], #4
	ldr	w12, [x8], #4
	add	w13, w11, w10
	add	w12, w13, w12
	cmp	w12, w11
	str	w12, [x2], #4
	cset	w11, lo
	csel	w10, w10, wzr, eq
	subs	x9, x9, #1
	orr	w10, w10, w11
	b.ne	.LBB29_10
.LBB29_11:
	ret
.Lfunc_end29:
	.size	regularize_k, .Lfunc_end29-regularize_k
	.cfi_endproc
                                        // -- End function
	.globl	EccPoint_compute_public_key     // -- Begin function EccPoint_compute_public_key
	.p2align	2
	.type	EccPoint_compute_public_key,@function
EccPoint_compute_public_key:            // @EccPoint_compute_public_key
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	stp	x20, x19, [sp, #96]             // 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 32
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w30, -24
	.cfi_offset w29, -32
	ldrsh	w8, [x2, #2]
	mov	x20, x2
	mov	x19, x0
	sub	x12, x29, #32
	add	x13, sp, #16
	adds	w9, w8, #31
	add	w10, w8, #62
	stp	x12, x13, [sp]
	csel	w9, w10, w9, lt
	sbfx	w11, w9, #5, #8
	asr	w10, w9, #5
	add	x9, x2, #36
	cmp	w11, #1
	b.lt	.LBB30_5
// %bb.1:
	mov	w12, wzr
	and	w11, w10, #0xff
	sub	x13, x29, #32
	mov	x14, x9
.LBB30_2:                               // =>This Inner Loop Header: Depth=1
	ldr	w15, [x1], #4
	ldr	w16, [x14], #4
	add	w17, w15, w12
	add	w16, w17, w16
	cmp	w16, w15
	str	w16, [x13], #4
	cset	w15, lo
	csel	w12, w12, wzr, eq
	subs	x11, x11, #1
	orr	w12, w12, w15
	b.ne	.LBB30_2
// %bb.3:
	cbz	w12, .LBB30_5
// %bb.4:
	mov	x11, xzr
	b	.LBB30_7
.LBB30_5:
	lsl	w11, w10, #24
	cmp	w8, w11, asr #19
	mov	w11, #1                         // =0x1
	b.ge	.LBB30_7
// %bb.6:
	asr	w12, w8, #5
	sub	x13, x29, #32
	ldr	w12, [x13, w12, sxtw #2]
	lsr	w12, w12, w8
	bic	w11, w11, w12
.LBB30_7:
	sxtb	w12, w10
	cmp	w12, #1
	b.lt	.LBB30_10
// %bb.8:
	mov	w13, wzr
	and	w10, w10, #0xff
	add	x12, sp, #16
	sub	x14, x29, #32
.LBB30_9:                               // =>This Inner Loop Header: Depth=1
	ldr	w15, [x14], #4
	ldr	w16, [x9], #4
	add	w17, w15, w13
	add	w16, w17, w16
	cmp	w16, w15
	str	w16, [x12], #4
	cset	w15, lo
	csel	w13, w13, wzr, eq
	subs	x10, x10, #1
	orr	w13, w13, w15
	b.ne	.LBB30_9
.LBB30_10:
	mov	x9, sp
	add	x1, x20, #68
	add	w4, w8, #1
	ldr	x2, [x9, x11, lsl #3]
	mov	x0, x19
	mov	x3, xzr
	mov	x5, x20
	bl	EccPoint_mult
	ldrb	w8, [x20]
	lsl	w8, w8, #1
	sxtb	w9, w8
	cmp	w9, #1
	b.lt	.LBB30_14
// %bb.11:
	mov	w8, wzr
	and	x9, x9, #0xff
.LBB30_12:                              // =>This Inner Loop Header: Depth=1
	ldr	w10, [x19], #4
	subs	x9, x9, #1
	orr	w8, w10, w8
	b.ne	.LBB30_12
// %bb.13:
	cmp	w8, #0
	cset	w0, ne
	b	.LBB30_15
.LBB30_14:
	mov	w0, wzr
.LBB30_15:
	.cfi_def_cfa wsp, 112
	ldp	x20, x19, [sp, #96]             // 16-byte Folded Reload
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #112
	.cfi_def_cfa_offset 0
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end30:
	.size	EccPoint_compute_public_key, .Lfunc_end30-EccPoint_compute_public_key
	.cfi_endproc
                                        // -- End function
	.globl	uECC_vli_nativeToBytes          // -- Begin function uECC_vli_nativeToBytes
	.p2align	2
	.type	uECC_vli_nativeToBytes,@function
uECC_vli_nativeToBytes:                 // @uECC_vli_nativeToBytes
	.cfi_startproc
// %bb.0:
	cmp	w1, #1
	b.lt	.LBB31_3
// %bb.1:
	mov	w9, wzr
	mov	w8, wzr
.LBB31_2:                               // =>This Inner Loop Header: Depth=1
	mvn	w9, w9
	sxtb	x11, w8
	add	w8, w8, #1
	add	w9, w9, w1
	and	w10, w9, #0xfffffffc
	ubfiz	w12, w9, #3, #2
	sxtb	w9, w8
	ldr	w10, [x2, w10, uxtw]
	cmp	w9, w1
	lsr	w10, w10, w12
	strb	w10, [x0, x11]
	b.lt	.LBB31_2
.LBB31_3:
	ret
.Lfunc_end31:
	.size	uECC_vli_nativeToBytes, .Lfunc_end31-uECC_vli_nativeToBytes
	.cfi_endproc
                                        // -- End function
	.globl	uECC_vli_bytesToNative          // -- Begin function uECC_vli_bytesToNative
	.p2align	2
	.type	uECC_vli_bytesToNative,@function
uECC_vli_bytesToNative:                 // @uECC_vli_bytesToNative
	.cfi_startproc
// %bb.0:
	stp	x29, x30, [sp, #-48]!           // 16-byte Folded Spill
	.cfi_def_cfa_offset 48
	str	x21, [sp, #16]                  // 8-byte Folded Spill
	stp	x20, x19, [sp, #32]             // 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 48
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -32
	.cfi_offset w30, -40
	.cfi_offset w29, -48
	adds	w8, w2, #3
	add	w9, w2, #6
	mov	w19, w2
	csel	w8, w9, w8, lt
	mov	x20, x1
	mov	x21, x0
	sbfx	w9, w8, #2, #8
	cmp	w9, #1
	b.lt	.LBB32_2
// %bb.1:
	asr	w8, w8, #2
	mov	x0, x21
	mov	w1, wzr
	ubfiz	w2, w8, #2, #8
	bl	memset
.LBB32_2:
	cmp	w19, #1
	b.lt	.LBB32_5
// %bb.3:
	mov	w9, wzr
	mov	w8, wzr
.LBB32_4:                               // =>This Inner Loop Header: Depth=1
	mvn	w9, w9
	sxtb	x10, w8
	add	w8, w8, #1
	add	w9, w9, w19
	ldrb	w10, [x20, x10]
	ubfiz	w11, w9, #3, #2
	and	w12, w9, #0xfffffffc
	sxtb	w9, w8
	lsl	w10, w10, w11
	ldr	w11, [x21, w12, uxtw]
	cmp	w9, w19
	orr	w10, w10, w11
	str	w10, [x21, w12, uxtw]
	b.lt	.LBB32_4
.LBB32_5:
	.cfi_def_cfa wsp, 48
	ldp	x20, x19, [sp, #32]             // 16-byte Folded Reload
	ldr	x21, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #48             // 16-byte Folded Reload
	.cfi_def_cfa_offset 0
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end32:
	.size	uECC_vli_bytesToNative, .Lfunc_end32-uECC_vli_bytesToNative
	.cfi_endproc
                                        // -- End function
	.globl	uECC_generate_random_int        // -- Begin function uECC_generate_random_int
	.p2align	2
	.type	uECC_generate_random_int,@function
uECC_generate_random_int:               // @uECC_generate_random_int
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #128
	.cfi_def_cfa_offset 128
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	stp	x28, x27, [sp, #48]             // 16-byte Folded Spill
	stp	x26, x25, [sp, #64]             // 16-byte Folded Spill
	stp	x24, x23, [sp, #80]             // 16-byte Folded Spill
	stp	x22, x21, [sp, #96]             // 16-byte Folded Spill
	stp	x20, x19, [sp, #112]            // 16-byte Folded Spill
	add	x29, sp, #32
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
	.cfi_remember_state
                                        // kill: def $w2 killed $w2 def $x2
	sub	w8, w2, #1
	mov	w9, w2
	mov	x19, x1
	sxtb	w8, w8
	and	x22, x9, #0xff
	mov	x20, x0
	add	x9, x22, #1
	cmn	w8, #1
	csinv	w8, w8, wzr, lt
	add	w8, w8, #1
.LBB33_1:                               // =>This Inner Loop Header: Depth=1
	sub	x10, x9, #2
	tbnz	w10, #7, .LBB33_4
// %bb.2:                               //   in Loop: Header=BB33_1 Depth=1
	and	x10, x10, #0x7f
	sub	x9, x9, #1
	ldr	w10, [x19, x10, lsl #2]
	cbz	w10, .LBB33_1
// %bb.3:
	mov	w8, w9
.LBB33_4:
	tst	w8, #0xff
	b.eq	.LBB33_8
// %bb.5:
	sxtb	w8, w8
	sub	w8, w8, #1
	ldr	w9, [x19, w8, sxtw #2]
	cbz	w9, .LBB33_9
// %bb.6:
	mov	w10, wzr
.LBB33_7:                               // =>This Inner Loop Header: Depth=1
	lsr	w11, w9, #1
	cmp	w9, #1
	add	w10, w10, #1
	mov	w9, w11
	b.hi	.LBB33_7
	b	.LBB33_10
.LBB33_8:
	mov	w8, wzr
	b	.LBB33_11
.LBB33_9:
	mov	w10, wzr
.LBB33_10:
	add	w8, w10, w8, lsl #5
.LBB33_11:
	adrp	x23, g_rng_function
	ldr	x9, [x23, :lo12:g_rng_function]
	cbz	x9, .LBB33_30
// %bb.12:
	sbfiz	w9, w2, #5, #8
	sxtb	x10, w2
	sbfiz	w21, w2, #2, #8
	sxtb	w26, w2
	mov	w24, wzr
	sub	x28, x20, #4
	sub	w8, w9, w8
	mov	w9, #-1                         // =0xffffffff
	lsl	x27, x10, #2
	lsr	w25, w9, w8
	b	.LBB33_16
.LBB33_13:                              //   in Loop: Header=BB33_16 Depth=1
	mov	w9, #1                          // =0x1
.LBB33_14:                              //   in Loop: Header=BB33_16 Depth=1
	orr	w8, w9, w8
	tst	w8, #0xff
	b.eq	.LBB33_32
.LBB33_15:                              //   in Loop: Header=BB33_16 Depth=1
	add	w24, w24, #1
	cmp	w24, #64
	b.eq	.LBB33_30
.LBB33_16:                              // =>This Loop Header: Depth=1
                                        //     Child Loop BB33_19 Depth 2
                                        //     Child Loop BB33_24 Depth 2
                                        //     Child Loop BB33_28 Depth 2
	ldr	x8, [x23, :lo12:g_rng_function]
	mov	x0, x20
	mov	w1, w21
	blr	x8
	cbz	w0, .LBB33_31
// %bb.17:                              //   in Loop: Header=BB33_16 Depth=1
	ldr	w8, [x28, x27]
	cmp	w26, #1
	and	w8, w8, w25
	str	w8, [x28, x27]
	b.lt	.LBB33_21
// %bb.18:                              //   in Loop: Header=BB33_16 Depth=1
	mov	w8, wzr
	mov	x9, x20
	mov	x10, x22
.LBB33_19:                              //   Parent Loop BB33_16 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w11, [x9], #4
	subs	x10, x10, #1
	orr	w8, w11, w8
	b.ne	.LBB33_19
// %bb.20:                              //   in Loop: Header=BB33_16 Depth=1
	cmp	w8, #0
	cset	w8, eq
	cbnz	w8, .LBB33_15
	b	.LBB33_22
.LBB33_21:                              //   in Loop: Header=BB33_16 Depth=1
	mov	w8, #1                          // =0x1
	cbnz	w8, .LBB33_15
.LBB33_22:                              //   in Loop: Header=BB33_16 Depth=1
	cmp	w26, #1
	b.lt	.LBB33_26
// %bb.23:                              //   in Loop: Header=BB33_16 Depth=1
	mov	w9, wzr
	mov	x8, sp
	mov	x10, x19
	mov	x11, x20
	mov	x12, x22
.LBB33_24:                              //   Parent Loop BB33_16 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w13, [x11], #4
	ldr	w14, [x10], #4
	add	w13, w13, w9
	subs	w14, w14, w13
	cset	w15, lo
	cmp	w13, #0
	csel	w9, w9, wzr, eq
	subs	x12, x12, #1
	orr	w9, w9, w15
	str	w14, [x8], #4
	b.ne	.LBB33_24
// %bb.25:                              //   in Loop: Header=BB33_16 Depth=1
	cmp	w9, #0
	mov	w8, #-2                         // =0xfffffffe
	csel	w8, wzr, w8, eq
	cmp	w26, #1
	b.ge	.LBB33_27
	b	.LBB33_13
.LBB33_26:                              //   in Loop: Header=BB33_16 Depth=1
	mov	w8, wzr
	cmp	w26, #1
	b.lt	.LBB33_13
.LBB33_27:                              //   in Loop: Header=BB33_16 Depth=1
	mov	w9, wzr
	mov	x10, sp
	mov	x11, x22
.LBB33_28:                              //   Parent Loop BB33_16 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w12, [x10], #4
	subs	x11, x11, #1
	orr	w9, w12, w9
	b.ne	.LBB33_28
// %bb.29:                              //   in Loop: Header=BB33_16 Depth=1
	cmp	w9, #0
	cset	w9, eq
	b	.LBB33_14
.LBB33_30:
	mov	w0, wzr
.LBB33_31:
	.cfi_def_cfa wsp, 128
	ldp	x20, x19, [sp, #112]            // 16-byte Folded Reload
	ldp	x22, x21, [sp, #96]             // 16-byte Folded Reload
	ldp	x24, x23, [sp, #80]             // 16-byte Folded Reload
	ldp	x26, x25, [sp, #64]             // 16-byte Folded Reload
	ldp	x28, x27, [sp, #48]             // 16-byte Folded Reload
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #128
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
.LBB33_32:
	.cfi_restore_state
	mov	w0, #1                          // =0x1
	b	.LBB33_31
.Lfunc_end33:
	.size	uECC_generate_random_int, .Lfunc_end33-uECC_generate_random_int
	.cfi_endproc
                                        // -- End function
	.globl	uECC_valid_point                // -- Begin function uECC_valid_point
	.p2align	2
	.type	uECC_valid_point,@function
uECC_valid_point:                       // @uECC_valid_point
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	stp	x22, x21, [sp, #80]             // 16-byte Folded Spill
	stp	x20, x19, [sp, #96]             // 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 48
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w30, -40
	.cfi_offset w29, -48
	.cfi_remember_state
	ldrb	w21, [x1]
	lsl	w8, w21, #1
	sxtb	w8, w8
	cmp	w8, #1
	b.lt	.LBB34_8
// %bb.1:
	and	x10, x8, #0xff
	sxtb	x8, w21
	mov	x9, xzr
	lsl	x10, x10, #2
	mov	w11, wzr
.LBB34_2:                               // =>This Inner Loop Header: Depth=1
	ldr	w12, [x0, x9]
	add	x9, x9, #4
	cmp	x10, x9
	orr	w11, w12, w11
	b.ne	.LBB34_2
// %bb.3:
	cbz	w11, .LBB34_8
// %bb.4:
	sub	x9, x21, #1
	add	x10, x1, #4
	mov	x11, x9
.LBB34_5:                               // =>This Inner Loop Header: Depth=1
	tbnz	w11, #7, .LBB34_13
// %bb.6:                               //   in Loop: Header=BB34_5 Depth=1
	mov	w12, w11
	ubfiz	x13, x12, #2, #7
	ldr	w12, [x10, x13]
	ldr	w13, [x0, x13]
	cmp	w12, w13
	b.hi	.LBB34_9
// %bb.7:                               //   in Loop: Header=BB34_5 Depth=1
	cmp	w12, w13
	sub	x11, x11, #1
	b.hs	.LBB34_5
	b	.LBB34_13
.LBB34_8:
	mov	w0, #-1                         // =0xffffffff
	b	.LBB34_14
.LBB34_9:
	add	x2, x0, x8, lsl #2
.LBB34_10:                              // =>This Inner Loop Header: Depth=1
	tbnz	w9, #7, .LBB34_13
// %bb.11:                              //   in Loop: Header=BB34_10 Depth=1
	mov	w8, w9
	ubfiz	x11, x8, #2, #7
	ldr	w8, [x10, x11]
	ldr	w11, [x2, x11]
	cmp	w8, w11
	b.hi	.LBB34_15
// %bb.12:                              //   in Loop: Header=BB34_10 Depth=1
	cmp	w8, w11
	sub	x9, x9, #1
	b.hs	.LBB34_10
.LBB34_13:
	mov	w0, #-2                         // =0xfffffffe
.LBB34_14:
	.cfi_def_cfa wsp, 112
	ldp	x20, x19, [sp, #96]             // 16-byte Folded Reload
	ldp	x22, x21, [sp, #80]             // 16-byte Folded Reload
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #112
	.cfi_def_cfa_offset 0
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w30
	.cfi_restore w29
	ret
.LBB34_15:
	.cfi_restore_state
	mov	x20, x1
	mov	x19, x0
	add	x0, sp, #32
	mov	x1, x2
	mov	x3, x20
	add	x22, sp, #32
	bl	uECC_vli_modMult_fast
	ldr	x8, [x20, #176]
	mov	x0, sp
	mov	x1, x19
	mov	x2, x20
	mov	x19, sp
	blr	x8
	sub	w9, w21, #1
	tbnz	w9, #7, .LBB34_19
// %bb.16:
	sxtb	w9, w9
	mov	w8, wzr
	and	x9, x9, #0xff
.LBB34_17:                              // =>This Inner Loop Header: Depth=1
	lsl	x10, x9, #2
	cmp	x9, #0
	sub	x9, x9, #1
	ldr	w11, [x22, x10]
	ldr	w10, [x19, x10]
	eor	w10, w10, w11
	orr	w8, w10, w8
	b.gt	.LBB34_17
// %bb.18:
	cmp	w8, #0
	mov	w8, #-3                         // =0xfffffffd
	csel	w0, wzr, w8, eq
	b	.LBB34_14
.LBB34_19:
	mov	w0, wzr
	b	.LBB34_14
.Lfunc_end34:
	.size	uECC_valid_point, .Lfunc_end34-uECC_valid_point
	.cfi_endproc
                                        // -- End function
	.globl	uECC_valid_public_key           // -- Begin function uECC_valid_public_key
	.p2align	2
	.type	uECC_valid_public_key,@function
uECC_valid_public_key:                  // @uECC_valid_public_key
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #144
	.cfi_def_cfa_offset 144
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	stp	x26, x25, [sp, #80]             // 16-byte Folded Spill
	stp	x24, x23, [sp, #96]             // 16-byte Folded Spill
	stp	x22, x21, [sp, #112]            // 16-byte Folded Spill
	stp	x20, x19, [sp, #128]            // 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 80
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w23, -40
	.cfi_offset w24, -48
	.cfi_offset w25, -56
	.cfi_offset w26, -64
	.cfi_offset w30, -72
	.cfi_offset w29, -80
	ldrsb	w23, [x1, #1]
	mov	x19, x1
	mov	x20, x0
	adds	w8, w23, #3
	add	w9, w23, #6
	sxtw	x24, w23
	csel	w8, w9, w8, lt
	and	x25, x23, #0xff
	asr	w22, w8, #2
	ubfiz	w21, w22, #2, #8
	cmp	w22, #1
	b.lt	.LBB35_2
// %bb.1:
	mov	x0, sp
	mov	w1, wzr
	mov	x2, x21
	bl	memset
.LBB35_2:
	lsl	w26, w23, #3
	cmp	w24, #1
	b.lt	.LBB35_5
// %bb.3:
	sub	w8, w23, #1
	sub	w9, w26, #8
	mov	x10, sp
	mov	x11, x25
	mov	x12, x20
.LBB35_4:                               // =>This Inner Loop Header: Depth=1
	ldrb	w13, [x12], #1
	and	w14, w9, #0x18
	and	w15, w8, #0xfffffffc
	sub	x11, x11, #1
	sub	w8, w8, #1
	ldr	w16, [x10, w15, uxtw]
	lsl	w13, w13, w14
	sub	w9, w9, #8
	orr	w13, w13, w16
	str	w13, [x10, w15, uxtw]
	cbnz	x11, .LBB35_4
.LBB35_5:
	ldrsb	x9, [x19]
	sxtb	w8, w22
	mov	x10, sp
	add	x22, x10, x9, lsl #2
	cmp	w8, #1
	b.lt	.LBB35_7
// %bb.6:
	mov	x0, x22
	mov	w1, wzr
	mov	x2, x21
	bl	memset
.LBB35_7:
	sxtb	w8, w25
	cmp	w8, #1
	b.lt	.LBB35_10
// %bb.8:
	add	x8, x20, x24
	and	x9, x23, #0xff
	sub	w10, w23, #1
	sub	w11, w26, #8
.LBB35_9:                               // =>This Inner Loop Header: Depth=1
	ldrb	w12, [x8], #1
	and	w13, w11, #0x18
	and	w14, w10, #0xfffffffc
	sub	x9, x9, #1
	sub	w10, w10, #1
	ldr	w15, [x22, w14, uxtw]
	lsl	w12, w12, w13
	sub	w11, w11, #8
	orr	w12, w12, w15
	str	w12, [x22, w14, uxtw]
	cbnz	x9, .LBB35_9
.LBB35_10:
	add	x8, x19, #68
	mov	w11, #15                        // =0xf
	mov	x9, sp
.LBB35_11:                              // =>This Inner Loop Header: Depth=1
	mov	x10, x11
	tbnz	w10, #7, .LBB35_15
// %bb.12:                              //   in Loop: Header=BB35_11 Depth=1
	mov	w11, w10
	ubfiz	x11, x11, #2, #7
	ldr	w12, [x9, x11]
	ldr	w11, [x8, x11]
	cmp	w12, w11
	sub	x11, x10, #1
	b.eq	.LBB35_11
// %bb.13:
	tbnz	w10, #7, .LBB35_15
// %bb.14:
	mov	x0, sp
	mov	x1, x19
	bl	uECC_valid_point
	b	.LBB35_16
.LBB35_15:
	mov	w0, #-4                         // =0xfffffffc
.LBB35_16:
	.cfi_def_cfa wsp, 144
	ldp	x20, x19, [sp, #128]            // 16-byte Folded Reload
	ldp	x22, x21, [sp, #112]            // 16-byte Folded Reload
	ldp	x24, x23, [sp, #96]             // 16-byte Folded Reload
	ldp	x26, x25, [sp, #80]             // 16-byte Folded Reload
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #144
	.cfi_def_cfa_offset 0
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w23
	.cfi_restore w24
	.cfi_restore w25
	.cfi_restore w26
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end35:
	.size	uECC_valid_public_key, .Lfunc_end35-uECC_valid_public_key
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
	stp	x29, x30, [sp, #96]             // 16-byte Folded Spill
	str	x23, [sp, #112]                 // 8-byte Folded Spill
	stp	x22, x21, [sp, #128]            // 16-byte Folded Spill
	stp	x20, x19, [sp, #144]            // 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 64
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w23, -48
	.cfi_offset w30, -56
	.cfi_offset w29, -64
	.cfi_remember_state
	ldrsh	w22, [x2, #2]
	mov	x20, x2
	mov	x19, x1
	mov	x21, x0
	adds	w8, w22, #7
	add	w9, w22, #14
	csel	w8, w9, w8, lt
	asr	w23, w8, #3
	adds	w8, w23, #3
	add	w9, w23, #6
	csel	w8, w9, w8, lt
	sbfx	w9, w8, #2, #8
	cmp	w9, #1
	b.lt	.LBB36_2
// %bb.1:
	asr	w8, w8, #2
	sub	x0, x29, #32
	mov	w1, wzr
	ubfiz	w2, w8, #2, #8
	bl	memset
.LBB36_2:
	cmp	w22, #1
	b.lt	.LBB36_5
// %bb.3:
	mov	w10, wzr
	mov	w8, wzr
	sub	x9, x29, #32
.LBB36_4:                               // =>This Inner Loop Header: Depth=1
	mvn	w10, w10
	sxtb	x11, w8
	add	w8, w8, #1
	add	w10, w23, w10
	ldrb	w11, [x21, x11]
	ubfiz	w12, w10, #3, #2
	and	w13, w10, #0xfffffffc
	sxtb	w10, w8
	lsl	w11, w11, w12
	ldr	w12, [x9, w13, uxtw]
	cmp	w23, w10
	orr	w11, w11, w12
	str	w11, [x9, w13, uxtw]
	b.gt	.LBB36_4
.LBB36_5:
	adds	w8, w22, #31
	add	w9, w22, #62
	csel	w8, w9, w8, lt
	sbfx	w9, w8, #5, #8
	cmp	w9, #1
	b.lt	.LBB36_19
// %bb.6:
	asr	w8, w8, #5
	mov	x10, xzr
	mov	w9, wzr
	sub	x12, x29, #32
	and	w11, w8, #0xff
	ubfiz	x11, x11, #2, #32
.LBB36_7:                               // =>This Inner Loop Header: Depth=1
	ldr	w13, [x12, x10]
	add	x10, x10, #4
	cmp	x11, x10
	orr	w9, w13, w9
	b.ne	.LBB36_7
// %bb.8:
	cbz	w9, .LBB36_19
// %bb.9:
	sxtb	w9, w8
	cmp	w9, #1
	b.lt	.LBB36_16
// %bb.10:
	mov	w12, wzr
	add	x10, x20, #36
	and	w11, w8, #0xff
	mov	x13, sp
	sub	x14, x29, #32
.LBB36_11:                              // =>This Inner Loop Header: Depth=1
	ldr	w15, [x14], #4
	ldr	w16, [x10], #4
	add	w15, w15, w12
	subs	w16, w16, w15
	cset	w17, lo
	cmp	w15, #0
	csel	w12, w12, wzr, eq
	subs	x11, x11, #1
	orr	w12, w12, w17
	str	w16, [x13], #4
	b.ne	.LBB36_11
// %bb.12:
	cmp	w12, #0
	mov	w10, #-2                        // =0xfffffffe
	csel	w10, wzr, w10, eq
	cmp	w9, #1
	b.lt	.LBB36_17
.LBB36_13:
	mov	w9, wzr
	and	w8, w8, #0xff
	mov	x11, sp
.LBB36_14:                              // =>This Inner Loop Header: Depth=1
	ldr	w12, [x11], #4
	subs	x8, x8, #1
	orr	w9, w12, w9
	b.ne	.LBB36_14
// %bb.15:
	cmp	w9, #0
	cset	w8, eq
	b	.LBB36_18
.LBB36_16:
	mov	w10, wzr
	cmp	w9, #1
	b.ge	.LBB36_13
.LBB36_17:
	mov	w8, #1                          // =0x1
.LBB36_18:
	orr	w8, w8, w10
	tst	w8, #0xff
	b.eq	.LBB36_21
.LBB36_19:
	mov	w0, wzr
.LBB36_20:
	.cfi_def_cfa wsp, 160
	ldp	x20, x19, [sp, #144]            // 16-byte Folded Reload
	ldr	x23, [sp, #112]                 // 8-byte Folded Reload
	ldp	x22, x21, [sp, #128]            // 16-byte Folded Reload
	ldp	x29, x30, [sp, #96]             // 16-byte Folded Reload
	add	sp, sp, #160
	.cfi_def_cfa_offset 0
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w23
	.cfi_restore w30
	.cfi_restore w29
	ret
.LBB36_21:
	.cfi_restore_state
	mov	x0, sp
	sub	x1, x29, #32
	mov	x2, x20
	bl	EccPoint_compute_public_key
	cbz	w0, .LBB36_20
// %bb.22:
	ldrsb	w9, [x20, #1]
	subs	w8, w9, #1
	b.lt	.LBB36_25
// %bb.23:
	lsl	w10, w9, #3
	and	x9, x9, #0xff
	mov	x11, sp
	mov	x12, x19
	sub	w10, w10, #8
.LBB36_24:                              // =>This Inner Loop Header: Depth=1
	and	w13, w8, #0xfffffffc
	and	w14, w10, #0x18
	sub	x9, x9, #1
	ldr	w13, [x11, w13, uxtw]
	sub	w10, w10, #8
	sub	w8, w8, #1
	lsr	w13, w13, w14
	strb	w13, [x12], #1
	cbnz	x9, .LBB36_24
.LBB36_25:
	ldrsb	x12, [x20, #1]
	cmp	x12, #1
	b.lt	.LBB36_28
// %bb.26:
	ldrsb	x9, [x20]
	mov	x10, sp
	lsl	w11, w12, #3
	add	x8, x19, x12
	add	x9, x10, x9, lsl #2
	mov	w10, w12
	sub	w11, w11, #8
	and	x10, x10, #0xff
	sub	w12, w12, #1
.LBB36_27:                              // =>This Inner Loop Header: Depth=1
	and	w13, w12, #0xfffffffc
	and	w14, w11, #0x18
	sub	x10, x10, #1
	ldr	w13, [x9, w13, uxtw]
	sub	w11, w11, #8
	sub	w12, w12, #1
	lsr	w13, w13, w14
	strb	w13, [x8], #1
	cbnz	x10, .LBB36_27
.LBB36_28:
	mov	w0, #1                          // =0x1
	b	.LBB36_20
.Lfunc_end36:
	.size	uECC_compute_public_key, .Lfunc_end36-uECC_compute_public_key
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
	.addrsig_sym double_jacobian_default
	.addrsig_sym x_side_default
	.addrsig_sym vli_mmod_fast_secp256r1
	.addrsig_sym default_CSPRNG
	.addrsig_sym curve_secp256r1
