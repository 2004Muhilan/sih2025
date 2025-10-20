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
	b.lt	.LBB5_3
// %bb.1:
	and	w8, w1, #0xff
	cmp	w8, #4
	and	x8, x1, #0xff
	b.hs	.LBB5_4
// %bb.2:
	mov	x9, xzr
	mov	w10, wzr
	b	.LBB5_7
.LBB5_3:
	mov	w0, #1                          // =0x1
	ret
.LBB5_4:
	movi	v0.2d, #0000000000000000
	and	x9, x8, #0x7c
	mov	x11, x0
	mov	x10, x9
.LBB5_5:                                // =>This Inner Loop Header: Depth=1
	ldr	q1, [x11], #16
	subs	x10, x10, #4
	orr	v0.16b, v1.16b, v0.16b
	b.ne	.LBB5_5
// %bb.6:
	ext	v1.16b, v0.16b, v0.16b, #8
	cmp	x9, x8
	orr	v0.8b, v0.8b, v1.8b
	fmov	x10, d0
	lsr	x11, x10, #32
	orr	w10, w10, w11
	b.eq	.LBB5_9
.LBB5_7:
	add	x11, x0, x9, lsl #2
	sub	x8, x8, x9
.LBB5_8:                                // =>This Inner Loop Header: Depth=1
	ldr	w9, [x11], #4
	subs	x8, x8, #1
	orr	w10, w9, w10
	b.ne	.LBB5_8
.LBB5_9:
	cmp	w10, #0
	cset	w0, eq
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
	b.lt	.LBB8_8
// %bb.1:
	and	w9, w2, #0xff
	mov	x8, xzr
	cmp	w9, #4
	and	x9, x2, #0xff
	b.lo	.LBB8_6
// %bb.2:
	sub	x10, x0, x1
	cmp	x10, #16
	b.lo	.LBB8_6
// %bb.3:
	and	x8, x9, #0x7c
	mov	x11, x0
	mov	x12, x1
	mov	x10, x8
.LBB8_4:                                // =>This Inner Loop Header: Depth=1
	ldr	q0, [x12], #16
	subs	x10, x10, #4
	str	q0, [x11], #16
	b.ne	.LBB8_4
// %bb.5:
	cmp	x8, x9
	b.eq	.LBB8_8
.LBB8_6:
	lsl	x11, x8, #2
	sub	x8, x9, x8
	add	x10, x0, x11
	add	x11, x1, x11
.LBB8_7:                                // =>This Inner Loop Header: Depth=1
	ldr	w9, [x11], #4
	subs	x8, x8, #1
	str	w9, [x10], #4
	b.ne	.LBB8_7
.LBB8_8:
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
	sub	w8, w2, #1
	tbnz	w8, #7, .LBB10_3
// %bb.1:
	and	w9, w8, #0xff
	and	x8, x8, #0xff
	cmp	w9, #7
	b.hs	.LBB10_4
// %bb.2:
	mov	w9, wzr
	b	.LBB10_7
.LBB10_3:
	mov	w0, wzr
	ret
.LBB10_4:
	lsl	x11, x8, #2
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	add	x9, x8, #1
	and	x10, x9, #0xf8
	sub	x12, x11, #12
	sub	x8, x8, x10
	add	x11, x1, x12
	add	x12, x0, x12
	mov	x13, x10
.LBB10_5:                               // =>This Inner Loop Header: Depth=1
	ldp	q3, q2, [x12, #-16]
	sub	x13, x13, #8
	ldp	q5, q4, [x11, #-16]
	sub	x11, x11, #32
	sub	x12, x12, #32
	eor	v2.16b, v4.16b, v2.16b
	eor	v3.16b, v5.16b, v3.16b
	rev64	v2.4s, v2.4s
	rev64	v3.4s, v3.4s
	ext	v2.16b, v2.16b, v2.16b, #8
	ext	v3.16b, v3.16b, v3.16b, #8
	orr	v0.16b, v2.16b, v0.16b
	orr	v1.16b, v3.16b, v1.16b
	cbnz	x13, .LBB10_5
// %bb.6:
	orr	v0.16b, v1.16b, v0.16b
	cmp	x9, x10
	ext	v1.16b, v0.16b, v0.16b, #8
	orr	v0.8b, v0.8b, v1.8b
	fmov	x11, d0
	lsr	x12, x11, #32
	orr	w9, w11, w12
	b.eq	.LBB10_8
.LBB10_7:                               // =>This Inner Loop Header: Depth=1
	lsl	x10, x8, #2
	sub	x8, x8, #1
	cmn	x8, #1
	ldr	w11, [x0, x10]
	ldr	w10, [x1, x10]
	eor	w10, w10, w11
	orr	w9, w10, w9
	b.ne	.LBB10_7
.LBB10_8:
	cmp	w9, #0
	cset	w0, ne
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
                                        // kill: def $w2 killed $w2 def $x2
	sxtb	w8, w2
	cmp	w8, #1
	b.lt	.LBB13_5
// %bb.1:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	.cfi_remember_state
	and	x9, x2, #0xff
	mov	w8, wzr
	mov	x10, sp
	mov	x11, x9
.LBB13_2:                               // =>This Inner Loop Header: Depth=1
	ldr	w12, [x1], #4
	ldr	w13, [x0], #4
	add	w12, w12, w8
	subs	w13, w13, w12
	cset	w14, lo
	cmp	w12, #0
	csel	w8, w8, wzr, eq
	subs	x11, x11, #1
	orr	w8, w8, w14
	str	w13, [x10], #4
	b.ne	.LBB13_2
// %bb.3:
	and	w10, w2, #0xff
	cmp	w10, #4
	b.hs	.LBB13_6
// %bb.4:
	mov	x10, xzr
	mov	w11, wzr
	b	.LBB13_9
.LBB13_5:
	.cfi_def_cfa wsp, 0
	mov	w0, wzr
	ret
.LBB13_6:
	.cfi_restore_state
	movi	v0.2d, #0000000000000000
	and	x10, x9, #0x7c
	mov	x11, sp
	mov	x12, x10
.LBB13_7:                               // =>This Inner Loop Header: Depth=1
	ldr	q1, [x11], #16
	subs	x12, x12, #4
	orr	v0.16b, v1.16b, v0.16b
	b.ne	.LBB13_7
// %bb.8:
	ext	v1.16b, v0.16b, v0.16b, #8
	cmp	x10, x9
	orr	v0.8b, v0.8b, v1.8b
	fmov	x11, d0
	lsr	x12, x11, #32
	orr	w11, w11, w12
	b.eq	.LBB13_11
.LBB13_9:
	mov	x12, sp
	sub	x9, x9, x10
	add	x12, x12, x10, lsl #2
.LBB13_10:                              // =>This Inner Loop Header: Depth=1
	ldr	w10, [x12], #4
	subs	x9, x9, #1
	orr	w11, w10, w11
	b.ne	.LBB13_10
.LBB13_11:
	cmp	w11, #0
	cset	w9, eq
	cmp	w8, #0
	mov	w8, #-2                         // =0xfffffffe
	csel	w8, wzr, w8, eq
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
	and	x9, x4, #0xff
	cmp	w8, #1
	b.lt	.LBB14_4
// %bb.1:
	mov	w10, wzr
	mov	x11, x0
	mov	x12, x9
.LBB14_2:                               // =>This Inner Loop Header: Depth=1
	ldr	w13, [x1], #4
	ldr	w14, [x2], #4
	add	w15, w13, w10
	add	w14, w15, w14
	cmp	w14, w13
	str	w14, [x11], #4
	cset	w13, lo
	csel	w10, w10, wzr, eq
	subs	x12, x12, #1
	orr	w10, w10, w13
	b.ne	.LBB14_2
// %bb.3:
	cbnz	w10, .LBB14_8
.LBB14_4:
	sub	x9, x9, #1
.LBB14_5:                               // =>This Inner Loop Header: Depth=1
	tbnz	w9, #7, .LBB14_8
// %bb.6:                               //   in Loop: Header=BB14_5 Depth=1
	mov	w10, w9
	ubfiz	x11, x10, #2, #7
	ldr	w10, [x3, x11]
	ldr	w11, [x0, x11]
	cmp	w10, w11
	b.hi	.LBB14_11
// %bb.7:                               //   in Loop: Header=BB14_5 Depth=1
	cmp	w10, w11
	sub	x9, x9, #1
	b.hs	.LBB14_5
.LBB14_8:
	cmp	w8, #1
	b.lt	.LBB14_11
// %bb.9:
	mov	w9, wzr
                                        // kill: def $w4 killed $w4 killed $x4 def $x4
	and	x8, x4, #0xff
.LBB14_10:                              // =>This Inner Loop Header: Depth=1
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
	b.ne	.LBB14_10
.LBB14_11:
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
	b.lt	.LBB15_6
// %bb.1:
	and	x8, x4, #0xff
	mov	w9, wzr
	mov	x10, x0
	mov	x11, x8
.LBB15_2:                               // =>This Inner Loop Header: Depth=1
	ldr	w12, [x2], #4
	ldr	w13, [x1], #4
	add	w12, w12, w9
	subs	w13, w13, w12
	cset	w14, lo
	cmp	w12, #0
	csel	w9, w9, wzr, eq
	subs	x11, x11, #1
	orr	w9, w9, w14
	str	w13, [x10], #4
	b.ne	.LBB15_2
// %bb.3:
	cbz	w9, .LBB15_6
// %bb.4:
	mov	w9, wzr
.LBB15_5:                               // =>This Inner Loop Header: Depth=1
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
	b.ne	.LBB15_5
.LBB15_6:
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
	ubfx	w9, w25, #26, #5
	add	w9, w8, w9
	sxth	w10, w9
	and	w11, w9, #0xffe0
	sbfx	w9, w9, #5, #11
	sub	w8, w8, w11
	sbfx	w10, w10, #5, #8
	sxth	w26, w8
	and	w27, w9, #0xffff
	cmp	w10, #1
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
	tbnz	w25, #31, .LBB16_33
// %bb.20:
	lsl	x12, x22, #2
	sxtb	x8, w20
	sub	x9, x29, #64
	mov	w13, #1                         // =0x1
	mov	x14, sp
	add	x11, x9, x12
	sub	x10, x8, #1
	add	x12, x11, x12
	b	.LBB16_24
.LBB16_21:                              //   in Loop: Header=BB16_24 Depth=1
	cmp	w13, #0
	cset	w13, eq
.LBB16_22:                              //   in Loop: Header=BB16_24 Depth=1
	ldr	w16, [x9, x8, lsl #2]
	ldr	w17, [x9, x15]
	orr	w16, w17, w16, lsl #31
	str	w16, [x9, x15]
.LBB16_23:                              //   in Loop: Header=BB16_24 Depth=1
	sxth	w15, w25
	sub	w25, w25, #1
	cmp	w15, #0
	b.le	.LBB16_32
.LBB16_24:                              // =>This Loop Header: Depth=1
                                        //     Child Loop BB16_26 Depth 2
                                        //     Child Loop BB16_29 Depth 2
                                        //     Child Loop BB16_31 Depth 2
	lsl	x15, x10, #2
	cmp	w23, #0
	b.le	.LBB16_21
// %bb.25:                              //   in Loop: Header=BB16_24 Depth=1
	eor	w18, w13, #0x1
	ldr	x17, [x14, w13, uxtw #3]
	mov	w16, wzr
	ldr	x18, [x14, w18, uxtw #3]
	mov	w0, wzr
.LBB16_26:                              //   Parent Loop BB16_24 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	sbfiz	x1, x16, #2, #8
	add	w16, w16, #1
	ldr	w2, [x9, x1]
	ldr	w3, [x17, x1]
	add	w2, w2, w0
	subs	w3, w3, w2
	str	w3, [x18, x1]
	cset	w4, lo
	cmp	w2, #0
	csel	w0, w0, w4, eq
	cmp	w24, w16, sxtb
	b.gt	.LBB16_26
// %bb.27:                              //   in Loop: Header=BB16_24 Depth=1
	cmp	w13, w0
	cset	w13, eq
	cmp	w23, #1
	b.lt	.LBB16_22
// %bb.28:                              //   in Loop: Header=BB16_24 Depth=1
	mov	w16, wzr
	mov	x17, x11
.LBB16_29:                              //   Parent Loop BB16_24 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w18, [x17, #-4]!
	cmp	x17, x9
	orr	w0, w16, w18, lsr #1
	lsl	w16, w18, #31
	str	w0, [x17]
	b.hi	.LBB16_29
// %bb.30:                              //   in Loop: Header=BB16_24 Depth=1
	ldr	w17, [x11]
	ldr	w18, [x9, x15]
	mov	w16, wzr
	orr	w17, w18, w17, lsl #31
	str	w17, [x9, x15]
	mov	x15, x12
.LBB16_31:                              //   Parent Loop BB16_24 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w17, [x15, #-4]!
	cmp	x15, x11
	orr	w18, w16, w17, lsr #1
	lsl	w16, w17, #31
	str	w18, [x15]
	b.hi	.LBB16_31
	b	.LBB16_23
.LBB16_32:
	mov	w8, w13
	cmp	w23, #1
	b.ge	.LBB16_34
	b	.LBB16_41
.LBB16_33:
	mov	w8, #1                          // =0x1
	cmp	w23, #1
	b.lt	.LBB16_41
.LBB16_34:
	mov	x9, sp
	and	w10, w20, #0xff
	ldr	x8, [x9, x8, lsl #3]
	cmp	w10, #4
	mov	x9, xzr
	b.lo	.LBB16_39
// %bb.35:
	sub	x10, x19, x8
	cmp	x10, #16
	b.lo	.LBB16_39
// %bb.36:
	and	x9, x22, #0x7c
	mov	x11, x19
	mov	x12, x8
	mov	x10, x9
.LBB16_37:                              // =>This Inner Loop Header: Depth=1
	ldr	q0, [x12], #16
	subs	x10, x10, #4
	str	q0, [x11], #16
	b.ne	.LBB16_37
// %bb.38:
	cmp	x9, x22
	b.eq	.LBB16_41
.LBB16_39:
	lsl	x11, x9, #2
	sub	x9, x22, x9
	add	x10, x19, x11
	add	x8, x8, x11
.LBB16_40:                              // =>This Inner Loop Header: Depth=1
	ldr	w11, [x8], #4
	subs	x9, x9, #1
	str	w11, [x10], #4
	b.ne	.LBB16_40
.LBB16_41:
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
	sub	sp, sp, #208
	.cfi_def_cfa_offset 208
	stp	x29, x30, [sp, #128]            // 16-byte Folded Spill
	stp	x26, x25, [sp, #144]            // 16-byte Folded Spill
	stp	x24, x23, [sp, #160]            // 16-byte Folded Spill
	stp	x22, x21, [sp, #176]            // 16-byte Folded Spill
	stp	x20, x19, [sp, #192]            // 16-byte Folded Spill
	add	x29, sp, #128
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
	.cfi_remember_state
                                        // kill: def $w3 killed $w3 def $x3
	sxtb	w8, w3
	cmp	w8, #1
	b.lt	.LBB19_76
// %bb.1:
	and	w8, w3, #0xff
	mov	x19, x2
	and	x21, x3, #0xff
	cmp	w8, #4
	b.hs	.LBB19_3
// %bb.2:
	mov	x8, xzr
	mov	w9, wzr
	b	.LBB19_6
.LBB19_3:
	movi	v0.2d, #0000000000000000
	and	x8, x21, #0x7c
	mov	x10, x1
	mov	x9, x8
.LBB19_4:                               // =>This Inner Loop Header: Depth=1
	ldr	q1, [x10], #16
	subs	x9, x9, #4
	orr	v0.16b, v1.16b, v0.16b
	b.ne	.LBB19_4
// %bb.5:
	ext	v1.16b, v0.16b, v0.16b, #8
	cmp	x8, x21
	orr	v0.8b, v0.8b, v1.8b
	fmov	x9, d0
	lsr	x10, x9, #32
	orr	w9, w9, w10
	b.eq	.LBB19_8
.LBB19_6:
	add	x10, x1, x8, lsl #2
	sub	x8, x21, x8
.LBB19_7:                               // =>This Inner Loop Header: Depth=1
	ldr	w11, [x10], #4
	subs	x8, x8, #1
	orr	w9, w11, w9
	b.ne	.LBB19_7
.LBB19_8:
	lsl	x20, x21, #2
	cbz	w9, .LBB19_77
// %bb.9:
	mov	x26, x0
	sub	x0, x29, #32
	mov	x2, x20
	sub	x22, x29, #32
	bl	memcpy
	add	x0, sp, #64
	mov	x1, x19
	mov	x2, x20
	add	x23, sp, #64
	bl	memcpy
	add	x0, sp, #32
	mov	w1, wzr
	mov	x2, x20
	add	x24, sp, #32
	bl	memset
	mov	w8, #1                          // =0x1
	mov	x0, sp
	mov	w1, wzr
	mov	x2, x20
	str	w8, [sp, #32]
	mov	x25, sp
	bl	memset
	add	x9, x25, x20
	add	x11, x24, x20
	mov	x0, x26
	add	x8, x23, x20
	add	x10, x22, x20
	sub	x12, x9, #4
	sub	x13, x11, #4
	sub	x14, x21, #1
	b	.LBB19_66
.LBB19_10:                              //   Parent Loop BB19_66 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB19_48 Depth 3
                                        //       Child Loop BB19_50 Depth 3
                                        //       Child Loop BB19_52 Depth 3
                                        //       Child Loop BB19_56 Depth 3
                                        //       Child Loop BB19_58 Depth 3
                                        //       Child Loop BB19_61 Depth 3
                                        //       Child Loop BB19_63 Depth 3
                                        //       Child Loop BB19_31 Depth 3
                                        //       Child Loop BB19_33 Depth 3
                                        //       Child Loop BB19_35 Depth 3
                                        //       Child Loop BB19_39 Depth 3
                                        //       Child Loop BB19_41 Depth 3
                                        //       Child Loop BB19_44 Depth 3
                                        //       Child Loop BB19_46 Depth 3
                                        //       Child Loop BB19_23 Depth 3
                                        //       Child Loop BB19_26 Depth 3
                                        //       Child Loop BB19_28 Depth 3
                                        //       Child Loop BB19_14 Depth 3
                                        //       Child Loop BB19_17 Depth 3
                                        //       Child Loop BB19_19 Depth 3
	sub	x16, x16, #1
	tbnz	w16, #7, .LBB19_75
// %bb.11:                              //   in Loop: Header=BB19_10 Depth=2
	mov	w15, w16
	ubfiz	x17, x15, #2, #7
	ldr	w15, [x22, x17]
	ldr	w17, [x23, x17]
	cmp	w15, w17
	b.eq	.LBB19_10
// %bb.12:                              //   in Loop: Header=BB19_10 Depth=2
	ldurb	w16, [x29, #-32]
	tbnz	w16, #0, .LBB19_21
// %bb.13:                              //   in Loop: Header=BB19_10 Depth=2
	mov	w15, wzr
	mov	x16, x10
.LBB19_14:                              //   Parent Loop BB19_66 Depth=1
                                        //     Parent Loop BB19_10 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	w17, [x16, #-4]!
	cmp	x16, x22
	orr	w18, w15, w17, lsr #1
	lsl	w15, w17, #31
	str	w18, [x16]
	b.hi	.LBB19_14
// %bb.15:                              //   in Loop: Header=BB19_10 Depth=2
	ldrb	w15, [sp, #32]
	tbz	w15, #0, .LBB19_67
// %bb.16:                              //   in Loop: Header=BB19_10 Depth=2
	mov	x16, xzr
	mov	w15, wzr
.LBB19_17:                              //   Parent Loop BB19_66 Depth=1
                                        //     Parent Loop BB19_10 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	lsl	x17, x16, #2
	add	x16, x16, #1
	ldr	w18, [x24, x17]
	ldr	w1, [x19, x17]
	add	w2, w18, w15
	add	w1, w2, w1
	str	w1, [x24, x17]
	cmp	w1, w18
	cset	w18, lo
	csel	w15, w15, wzr, eq
	cmp	x21, x16
	orr	w15, w15, w18
	b.ne	.LBB19_17
// %bb.18:                              //   in Loop: Header=BB19_10 Depth=2
	mov	w16, wzr
	mov	x17, x11
.LBB19_19:                              //   Parent Loop BB19_66 Depth=1
                                        //     Parent Loop BB19_10 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	w18, [x17, #-4]!
	cmp	x17, x24
	orr	w1, w16, w18, lsr #1
	lsl	w16, w18, #31
	str	w1, [x17]
	b.hi	.LBB19_19
.LBB19_20:                              //   in Loop: Header=BB19_10 Depth=2
	mov	x16, x21
	mov	x17, x13
	cbnz	w15, .LBB19_65
	b	.LBB19_10
.LBB19_21:                              //   in Loop: Header=BB19_10 Depth=2
	ldrb	w16, [sp, #64]
	tbnz	w16, #0, .LBB19_29
// %bb.22:                              //   in Loop: Header=BB19_10 Depth=2
	mov	w15, wzr
	mov	x16, x8
.LBB19_23:                              //   Parent Loop BB19_66 Depth=1
                                        //     Parent Loop BB19_10 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	w17, [x16, #-4]!
	cmp	x16, x23
	orr	w18, w15, w17, lsr #1
	lsl	w15, w17, #31
	str	w18, [x16]
	b.hi	.LBB19_23
// %bb.24:                              //   in Loop: Header=BB19_10 Depth=2
	ldrb	w15, [sp]
	tbz	w15, #0, .LBB19_69
// %bb.25:                              //   in Loop: Header=BB19_10 Depth=2
	mov	x16, xzr
	mov	w15, wzr
.LBB19_26:                              //   Parent Loop BB19_66 Depth=1
                                        //     Parent Loop BB19_10 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	lsl	x17, x16, #2
	add	x16, x16, #1
	ldr	w18, [x25, x17]
	ldr	w1, [x19, x17]
	add	w2, w18, w15
	add	w1, w2, w1
	str	w1, [x25, x17]
	cmp	w1, w18
	cset	w18, lo
	csel	w15, w15, wzr, eq
	cmp	x21, x16
	orr	w15, w15, w18
	b.ne	.LBB19_26
// %bb.27:                              //   in Loop: Header=BB19_10 Depth=2
	mov	w16, wzr
	mov	x17, x9
.LBB19_28:                              //   Parent Loop BB19_66 Depth=1
                                        //     Parent Loop BB19_10 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	w18, [x17, #-4]!
	cmp	x17, x25
	orr	w1, w16, w18, lsr #1
	lsl	w16, w18, #31
	str	w1, [x17]
	b.hi	.LBB19_28
	b	.LBB19_64
.LBB19_29:                              //   in Loop: Header=BB19_10 Depth=2
	cmp	w15, w17
	b.ls	.LBB19_47
// %bb.30:                              //   in Loop: Header=BB19_10 Depth=2
	mov	x15, xzr
	mov	w16, wzr
.LBB19_31:                              //   Parent Loop BB19_66 Depth=1
                                        //     Parent Loop BB19_10 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	lsl	x17, x15, #2
	add	x15, x15, #1
	ldr	w18, [x23, x17]
	ldr	w1, [x22, x17]
	add	w18, w18, w16
	subs	w1, w1, w18
	str	w1, [x22, x17]
	cset	w2, lo
	cmp	w18, #0
	csel	w16, w16, wzr, eq
	cmp	x21, x15
	orr	w16, w16, w2
	b.ne	.LBB19_31
// %bb.32:                              //   in Loop: Header=BB19_10 Depth=2
	mov	w15, wzr
	mov	x16, x10
.LBB19_33:                              //   Parent Loop BB19_66 Depth=1
                                        //     Parent Loop BB19_10 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	w17, [x16, #-4]!
	cmp	x16, x22
	orr	w18, w15, w17, lsr #1
	lsl	w15, w17, #31
	str	w18, [x16]
	b.hi	.LBB19_33
// %bb.34:                              //   in Loop: Header=BB19_10 Depth=2
	mov	x15, x14
.LBB19_35:                              //   Parent Loop BB19_66 Depth=1
                                        //     Parent Loop BB19_10 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	tbnz	w15, #7, .LBB19_40
// %bb.36:                              //   in Loop: Header=BB19_35 Depth=3
	mov	w16, w15
	ubfiz	x17, x16, #2, #7
	ldr	w16, [x24, x17]
	ldr	w17, [x25, x17]
	cmp	w16, w17
	b.hi	.LBB19_40
// %bb.37:                              //   in Loop: Header=BB19_35 Depth=3
	cmp	w16, w17
	sub	x15, x15, #1
	b.hs	.LBB19_35
// %bb.38:                              //   in Loop: Header=BB19_10 Depth=2
	mov	w17, wzr
	add	x15, sp, #32
	mov	x16, x19
	mov	x18, x21
.LBB19_39:                              //   Parent Loop BB19_66 Depth=1
                                        //     Parent Loop BB19_10 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	w1, [x15]
	ldr	w2, [x16], #4
	add	w3, w1, w17
	add	w2, w3, w2
	cmp	w2, w1
	str	w2, [x15], #4
	cset	w1, lo
	csel	w17, w17, wzr, eq
	subs	x18, x18, #1
	orr	w17, w17, w1
	b.ne	.LBB19_39
.LBB19_40:                              //   in Loop: Header=BB19_10 Depth=2
	mov	x15, xzr
	mov	w16, wzr
.LBB19_41:                              //   Parent Loop BB19_66 Depth=1
                                        //     Parent Loop BB19_10 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	lsl	x17, x15, #2
	add	x15, x15, #1
	ldr	w18, [x25, x17]
	ldr	w1, [x24, x17]
	add	w18, w18, w16
	subs	w1, w1, w18
	str	w1, [x24, x17]
	cset	w2, lo
	cmp	w18, #0
	csel	w16, w16, wzr, eq
	cmp	x21, x15
	orr	w16, w16, w2
	b.ne	.LBB19_41
// %bb.42:                              //   in Loop: Header=BB19_10 Depth=2
	ldrb	w15, [sp, #32]
	tbz	w15, #0, .LBB19_71
// %bb.43:                              //   in Loop: Header=BB19_10 Depth=2
	mov	x16, xzr
	mov	w15, wzr
.LBB19_44:                              //   Parent Loop BB19_66 Depth=1
                                        //     Parent Loop BB19_10 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	lsl	x17, x16, #2
	add	x16, x16, #1
	ldr	w18, [x24, x17]
	ldr	w1, [x19, x17]
	add	w2, w18, w15
	add	w1, w2, w1
	str	w1, [x24, x17]
	cmp	w1, w18
	cset	w18, lo
	csel	w15, w15, wzr, eq
	cmp	x21, x16
	orr	w15, w15, w18
	b.ne	.LBB19_44
// %bb.45:                              //   in Loop: Header=BB19_10 Depth=2
	mov	w16, wzr
	mov	x17, x11
.LBB19_46:                              //   Parent Loop BB19_66 Depth=1
                                        //     Parent Loop BB19_10 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	w18, [x17, #-4]!
	cmp	x17, x24
	orr	w1, w16, w18, lsr #1
	lsl	w16, w18, #31
	str	w1, [x17]
	b.hi	.LBB19_46
	b	.LBB19_20
.LBB19_47:                              //   in Loop: Header=BB19_10 Depth=2
	mov	x15, xzr
	mov	w16, wzr
.LBB19_48:                              //   Parent Loop BB19_66 Depth=1
                                        //     Parent Loop BB19_10 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	lsl	x17, x15, #2
	add	x15, x15, #1
	ldr	w18, [x22, x17]
	ldr	w1, [x23, x17]
	add	w18, w18, w16
	subs	w1, w1, w18
	str	w1, [x23, x17]
	cset	w2, lo
	cmp	w18, #0
	csel	w16, w16, wzr, eq
	cmp	x21, x15
	orr	w16, w16, w2
	b.ne	.LBB19_48
// %bb.49:                              //   in Loop: Header=BB19_10 Depth=2
	mov	w15, wzr
	mov	x16, x8
.LBB19_50:                              //   Parent Loop BB19_66 Depth=1
                                        //     Parent Loop BB19_10 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	w17, [x16, #-4]!
	cmp	x16, x23
	orr	w18, w15, w17, lsr #1
	lsl	w15, w17, #31
	str	w18, [x16]
	b.hi	.LBB19_50
// %bb.51:                              //   in Loop: Header=BB19_10 Depth=2
	mov	x15, x14
.LBB19_52:                              //   Parent Loop BB19_66 Depth=1
                                        //     Parent Loop BB19_10 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	tbnz	w15, #7, .LBB19_57
// %bb.53:                              //   in Loop: Header=BB19_52 Depth=3
	mov	w16, w15
	ubfiz	x17, x16, #2, #7
	ldr	w16, [x25, x17]
	ldr	w17, [x24, x17]
	cmp	w16, w17
	b.hi	.LBB19_57
// %bb.54:                              //   in Loop: Header=BB19_52 Depth=3
	cmp	w16, w17
	sub	x15, x15, #1
	b.hs	.LBB19_52
// %bb.55:                              //   in Loop: Header=BB19_10 Depth=2
	mov	w17, wzr
	mov	x15, sp
	mov	x16, x19
	mov	x18, x21
.LBB19_56:                              //   Parent Loop BB19_66 Depth=1
                                        //     Parent Loop BB19_10 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	w1, [x15]
	ldr	w2, [x16], #4
	add	w3, w1, w17
	add	w2, w3, w2
	cmp	w2, w1
	str	w2, [x15], #4
	cset	w1, lo
	csel	w17, w17, wzr, eq
	subs	x18, x18, #1
	orr	w17, w17, w1
	b.ne	.LBB19_56
.LBB19_57:                              //   in Loop: Header=BB19_10 Depth=2
	mov	x15, xzr
	mov	w16, wzr
.LBB19_58:                              //   Parent Loop BB19_66 Depth=1
                                        //     Parent Loop BB19_10 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	lsl	x17, x15, #2
	add	x15, x15, #1
	ldr	w18, [x24, x17]
	ldr	w1, [x25, x17]
	add	w18, w18, w16
	subs	w1, w1, w18
	str	w1, [x25, x17]
	cset	w2, lo
	cmp	w18, #0
	csel	w16, w16, wzr, eq
	cmp	x21, x15
	orr	w16, w16, w2
	b.ne	.LBB19_58
// %bb.59:                              //   in Loop: Header=BB19_10 Depth=2
	ldrb	w15, [sp]
	tbz	w15, #0, .LBB19_73
// %bb.60:                              //   in Loop: Header=BB19_10 Depth=2
	mov	x16, xzr
	mov	w15, wzr
.LBB19_61:                              //   Parent Loop BB19_66 Depth=1
                                        //     Parent Loop BB19_10 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	lsl	x17, x16, #2
	add	x16, x16, #1
	ldr	w18, [x25, x17]
	ldr	w1, [x19, x17]
	add	w2, w18, w15
	add	w1, w2, w1
	str	w1, [x25, x17]
	cmp	w1, w18
	cset	w18, lo
	csel	w15, w15, wzr, eq
	cmp	x21, x16
	orr	w15, w15, w18
	b.ne	.LBB19_61
// %bb.62:                              //   in Loop: Header=BB19_10 Depth=2
	mov	w16, wzr
	mov	x17, x9
.LBB19_63:                              //   Parent Loop BB19_66 Depth=1
                                        //     Parent Loop BB19_10 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	w18, [x17, #-4]!
	cmp	x17, x25
	orr	w1, w16, w18, lsr #1
	lsl	w16, w18, #31
	str	w1, [x17]
	b.hi	.LBB19_63
.LBB19_64:                              //   in Loop: Header=BB19_10 Depth=2
	mov	x16, x21
	mov	x17, x12
	cbz	w15, .LBB19_10
.LBB19_65:                              //   in Loop: Header=BB19_66 Depth=1
	ldr	w15, [x17]
	orr	w15, w15, #0x80000000
	str	w15, [x17]
.LBB19_66:                              // =>This Loop Header: Depth=1
                                        //     Child Loop BB19_10 Depth 2
                                        //       Child Loop BB19_48 Depth 3
                                        //       Child Loop BB19_50 Depth 3
                                        //       Child Loop BB19_52 Depth 3
                                        //       Child Loop BB19_56 Depth 3
                                        //       Child Loop BB19_58 Depth 3
                                        //       Child Loop BB19_61 Depth 3
                                        //       Child Loop BB19_63 Depth 3
                                        //       Child Loop BB19_31 Depth 3
                                        //       Child Loop BB19_33 Depth 3
                                        //       Child Loop BB19_35 Depth 3
                                        //       Child Loop BB19_39 Depth 3
                                        //       Child Loop BB19_41 Depth 3
                                        //       Child Loop BB19_44 Depth 3
                                        //       Child Loop BB19_46 Depth 3
                                        //       Child Loop BB19_23 Depth 3
                                        //       Child Loop BB19_26 Depth 3
                                        //       Child Loop BB19_28 Depth 3
                                        //       Child Loop BB19_14 Depth 3
                                        //       Child Loop BB19_17 Depth 3
                                        //       Child Loop BB19_19 Depth 3
                                        //     Child Loop BB19_74 Depth 2
                                        //     Child Loop BB19_72 Depth 2
                                        //     Child Loop BB19_70 Depth 2
                                        //     Child Loop BB19_68 Depth 2
	mov	x16, x21
	b	.LBB19_10
.LBB19_67:                              //   in Loop: Header=BB19_66 Depth=1
	mov	w15, wzr
	mov	x16, x11
.LBB19_68:                              //   Parent Loop BB19_66 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w17, [x16, #-4]!
	cmp	x16, x24
	orr	w18, w15, w17, lsr #1
	lsl	w15, w17, #31
	str	w18, [x16]
	b.hi	.LBB19_68
	b	.LBB19_66
.LBB19_69:                              //   in Loop: Header=BB19_66 Depth=1
	mov	w15, wzr
	mov	x16, x9
.LBB19_70:                              //   Parent Loop BB19_66 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w17, [x16, #-4]!
	cmp	x16, x25
	orr	w18, w15, w17, lsr #1
	lsl	w15, w17, #31
	str	w18, [x16]
	b.hi	.LBB19_70
	b	.LBB19_66
.LBB19_71:                              //   in Loop: Header=BB19_66 Depth=1
	mov	w15, wzr
	mov	x16, x11
.LBB19_72:                              //   Parent Loop BB19_66 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w17, [x16, #-4]!
	cmp	x16, x24
	orr	w18, w15, w17, lsr #1
	lsl	w15, w17, #31
	str	w18, [x16]
	b.hi	.LBB19_72
	b	.LBB19_66
.LBB19_73:                              //   in Loop: Header=BB19_66 Depth=1
	mov	w15, wzr
	mov	x16, x9
.LBB19_74:                              //   Parent Loop BB19_66 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w17, [x16, #-4]!
	cmp	x16, x25
	orr	w18, w15, w17, lsr #1
	lsl	w15, w17, #31
	str	w18, [x16]
	b.hi	.LBB19_74
	b	.LBB19_66
.LBB19_75:
	add	x1, sp, #32
	mov	x2, x20
	bl	memcpy
.LBB19_76:
	.cfi_def_cfa wsp, 208
	ldp	x20, x19, [sp, #192]            // 16-byte Folded Reload
	ldp	x22, x21, [sp, #176]            // 16-byte Folded Reload
	ldp	x24, x23, [sp, #160]            // 16-byte Folded Reload
	ldp	x26, x25, [sp, #144]            // 16-byte Folded Reload
	ldp	x29, x30, [sp, #128]            // 16-byte Folded Reload
	add	sp, sp, #208
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
.LBB19_77:
	.cfi_restore_state
	mov	w1, wzr
	mov	x2, x20
	.cfi_def_cfa wsp, 208
	ldp	x20, x19, [sp, #192]            // 16-byte Folded Reload
	ldp	x22, x21, [sp, #176]            // 16-byte Folded Reload
	ldp	x24, x23, [sp, #160]            // 16-byte Folded Reload
	ldp	x26, x25, [sp, #144]            // 16-byte Folded Reload
	ldp	x29, x30, [sp, #128]            // 16-byte Folded Reload
	add	sp, sp, #208
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
	b	memset
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
	ldrsb	w8, [x3]
	cmp	w8, #1
	b.lt	.LBB20_78
// %bb.1:
	sub	sp, sp, #144
	.cfi_def_cfa_offset 144
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	str	x25, [sp, #80]                  // 8-byte Folded Spill
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
	.cfi_offset w25, -64
	.cfi_offset w30, -72
	.cfi_offset w29, -80
	.cfi_remember_state
	and	w24, w8, #0xff
	mov	x22, x3
	mov	x20, x2
	mov	x19, x1
	mov	x21, x0
	cmp	w24, #4
	and	x23, x8, #0xff
	b.hs	.LBB20_3
// %bb.2:
	mov	x8, xzr
	mov	w9, wzr
	b	.LBB20_6
.LBB20_3:
	movi	v0.2d, #0000000000000000
	and	x8, x23, #0x7c
	mov	x10, x20
	mov	x9, x8
.LBB20_4:                               // =>This Inner Loop Header: Depth=1
	ldr	q1, [x10], #16
	subs	x9, x9, #4
	orr	v0.16b, v1.16b, v0.16b
	b.ne	.LBB20_4
// %bb.5:
	ext	v1.16b, v0.16b, v0.16b, #8
	cmp	x8, x23
	orr	v0.8b, v0.8b, v1.8b
	fmov	x9, d0
	lsr	x10, x9, #32
	orr	w9, w9, w10
	b.eq	.LBB20_8
.LBB20_6:
	add	x10, x20, x8, lsl #2
	sub	x8, x23, x8
.LBB20_7:                               // =>This Inner Loop Header: Depth=1
	ldr	w11, [x10], #4
	subs	x8, x8, #1
	orr	w9, w11, w9
	b.ne	.LBB20_7
.LBB20_8:
	cbz	w9, .LBB20_77
// %bb.9:
	add	x0, sp, #32
	mov	x1, x19
	mov	x2, x19
	mov	x3, x22
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
	mov	x8, xzr
	mov	w9, wzr
.LBB20_10:                              // =>This Inner Loop Header: Depth=1
	lsl	x10, x8, #2
	add	x8, x8, #1
	ldr	w11, [x21, x10]
	ldr	w12, [x20, x10]
	add	w13, w11, w9
	add	w12, w13, w12
	str	w12, [x21, x10]
	cmp	w12, w11
	cset	w11, lo
	csel	w9, w9, wzr, eq
	cmp	x23, x8
	orr	w9, w9, w11
	b.ne	.LBB20_10
// %bb.11:
	add	x25, x22, #4
	cbz	w9, .LBB20_79
.LBB20_12:
	mov	w11, wzr
	mov	x8, x21
	mov	x9, x25
	mov	x10, x23
.LBB20_13:                              // =>This Inner Loop Header: Depth=1
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
	b.ne	.LBB20_13
.LBB20_14:
	mov	x8, xzr
	mov	w9, wzr
.LBB20_15:                              // =>This Inner Loop Header: Depth=1
	lsl	x10, x8, #2
	add	x8, x8, #1
	ldr	w11, [x20, x10]
	add	w12, w9, w11, lsl #1
	str	w12, [x20, x10]
	cmp	w12, w11
	cset	w10, lo
	csel	w9, w9, wzr, eq
	cmp	x23, x8
	orr	w9, w9, w10
	b.ne	.LBB20_15
// %bb.16:
	cbz	w9, .LBB20_83
.LBB20_17:
	mov	w11, wzr
	mov	x8, x20
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
	mov	x8, xzr
	mov	w9, wzr
.LBB20_20:                              // =>This Inner Loop Header: Depth=1
	lsl	x10, x8, #2
	add	x8, x8, #1
	ldr	w11, [x20, x10]
	ldr	w12, [x21, x10]
	add	w11, w11, w9
	subs	w12, w12, w11
	str	w12, [x20, x10]
	cset	w13, lo
	cmp	w11, #0
	csel	w9, w9, wzr, eq
	cmp	x23, x8
	orr	w9, w9, w13
	b.ne	.LBB20_20
// %bb.21:
	cbz	w9, .LBB20_24
// %bb.22:
	mov	w11, wzr
	mov	x8, x20
	mov	x9, x25
	mov	x10, x23
.LBB20_23:                              // =>This Inner Loop Header: Depth=1
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
	b.ne	.LBB20_23
.LBB20_24:
	mov	x0, x21
	mov	x1, x21
	mov	x2, x20
	mov	x3, x22
	bl	uECC_vli_modMult_fast
	mov	x8, xzr
	mov	w9, wzr
.LBB20_25:                              // =>This Inner Loop Header: Depth=1
	lsl	x10, x8, #2
	add	x8, x8, #1
	ldr	w11, [x21, x10]
	add	w12, w9, w11, lsl #1
	str	w12, [x20, x10]
	cmp	w12, w11
	cset	w10, lo
	csel	w9, w9, wzr, eq
	cmp	x23, x8
	orr	w9, w9, w10
	b.ne	.LBB20_25
// %bb.26:
	cbz	w9, .LBB20_87
.LBB20_27:
	mov	w11, wzr
	mov	x8, x20
	mov	x9, x25
	mov	x10, x23
.LBB20_28:                              // =>This Inner Loop Header: Depth=1
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
	b.ne	.LBB20_28
.LBB20_29:
	mov	x8, xzr
	mov	w9, wzr
.LBB20_30:                              // =>This Inner Loop Header: Depth=1
	lsl	x10, x8, #2
	add	x8, x8, #1
	ldr	w11, [x21, x10]
	ldr	w12, [x20, x10]
	add	w13, w11, w9
	add	w12, w13, w12
	str	w12, [x21, x10]
	cmp	w12, w11
	cset	w11, lo
	csel	w9, w9, wzr, eq
	cmp	x23, x8
	orr	w9, w9, w11
	b.ne	.LBB20_30
// %bb.31:
	cbz	w9, .LBB20_91
.LBB20_32:
	mov	w11, wzr
	mov	x8, x21
	mov	x9, x25
	mov	x10, x23
.LBB20_33:                              // =>This Inner Loop Header: Depth=1
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
	b.ne	.LBB20_33
.LBB20_34:
	ldrb	w9, [x21]
	add	x8, x21, x23, lsl #2
	tbnz	w9, #0, .LBB20_37
// %bb.35:
	mov	w9, wzr
.LBB20_36:                              // =>This Inner Loop Header: Depth=1
	ldr	w10, [x8, #-4]!
	cmp	x8, x21
	orr	w11, w9, w10, lsr #1
	lsl	w9, w10, #31
	str	w11, [x8]
	b.hi	.LBB20_36
	b	.LBB20_42
.LBB20_37:
	mov	x10, xzr
	mov	w9, wzr
.LBB20_38:                              // =>This Inner Loop Header: Depth=1
	lsl	x11, x10, #2
	add	x10, x10, #1
	ldr	w12, [x21, x11]
	ldr	w13, [x25, x11]
	add	w14, w12, w9
	add	w13, w14, w13
	str	w13, [x21, x11]
	cmp	w13, w12
	cset	w12, lo
	csel	w9, w9, wzr, eq
	cmp	x23, x10
	orr	w9, w9, w12
	b.ne	.LBB20_38
// %bb.39:
	mov	w10, wzr
	mov	x11, x8
.LBB20_40:                              // =>This Inner Loop Header: Depth=1
	ldr	w12, [x11, #-4]!
	cmp	x11, x21
	orr	w13, w10, w12, lsr #1
	lsl	w10, w12, #31
	str	w13, [x11]
	b.hi	.LBB20_40
// %bb.41:
	ldur	w10, [x8, #-4]
	orr	w9, w10, w9, lsl #31
	stur	w9, [x8, #-4]
.LBB20_42:
	mov	x0, x20
	mov	x1, x21
	mov	x2, x21
	mov	x3, x22
	bl	uECC_vli_modMult_fast
	mov	x8, xzr
	mov	w9, wzr
	mov	x10, sp
.LBB20_43:                              // =>This Inner Loop Header: Depth=1
	lsl	x11, x8, #2
	add	x8, x8, #1
	ldr	w12, [x10, x11]
	ldr	w13, [x20, x11]
	add	w12, w12, w9
	subs	w13, w13, w12
	str	w13, [x20, x11]
	cset	w14, lo
	cmp	w12, #0
	csel	w9, w9, wzr, eq
	cmp	x23, x8
	orr	w9, w9, w14
	b.ne	.LBB20_43
// %bb.44:
	cbz	w9, .LBB20_47
// %bb.45:
	mov	w11, wzr
	mov	x8, x20
	mov	x9, x25
	mov	x10, x23
.LBB20_46:                              // =>This Inner Loop Header: Depth=1
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
	b.ne	.LBB20_46
.LBB20_47:
	mov	x8, xzr
	mov	w9, wzr
	mov	x10, sp
.LBB20_48:                              // =>This Inner Loop Header: Depth=1
	lsl	x11, x8, #2
	add	x8, x8, #1
	ldr	w12, [x10, x11]
	ldr	w13, [x20, x11]
	add	w12, w12, w9
	subs	w13, w13, w12
	str	w13, [x20, x11]
	cset	w14, lo
	cmp	w12, #0
	csel	w9, w9, wzr, eq
	cmp	x23, x8
	orr	w9, w9, w14
	b.ne	.LBB20_48
// %bb.49:
	cbz	w9, .LBB20_52
// %bb.50:
	mov	w11, wzr
	mov	x8, x20
	mov	x9, x25
	mov	x10, x23
.LBB20_51:                              // =>This Inner Loop Header: Depth=1
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
	b.ne	.LBB20_51
.LBB20_52:
	mov	x8, xzr
	mov	w9, wzr
	mov	x10, sp
.LBB20_53:                              // =>This Inner Loop Header: Depth=1
	lsl	x11, x8, #2
	add	x8, x8, #1
	ldr	w12, [x20, x11]
	ldr	w13, [x10, x11]
	add	w12, w12, w9
	subs	w13, w13, w12
	str	w13, [x10, x11]
	cset	w14, lo
	cmp	w12, #0
	csel	w9, w9, wzr, eq
	cmp	x23, x8
	orr	w9, w9, w14
	b.ne	.LBB20_53
// %bb.54:
	cbz	w9, .LBB20_57
// %bb.55:
	mov	w10, wzr
	mov	x8, sp
	mov	x9, x25
	mov	x11, x23
.LBB20_56:                              // =>This Inner Loop Header: Depth=1
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
	b.ne	.LBB20_56
.LBB20_57:
	mov	x2, sp
	mov	x0, x21
	mov	x1, x21
	mov	x3, x22
	bl	uECC_vli_modMult_fast
	mov	x8, xzr
	mov	w9, wzr
	add	x10, sp, #32
.LBB20_58:                              // =>This Inner Loop Header: Depth=1
	lsl	x11, x8, #2
	add	x8, x8, #1
	ldr	w12, [x10, x11]
	ldr	w13, [x21, x11]
	add	w12, w12, w9
	subs	w13, w13, w12
	str	w13, [x10, x11]
	cset	w14, lo
	cmp	w12, #0
	csel	w9, w9, wzr, eq
	cmp	x23, x8
	orr	w9, w9, w14
	b.ne	.LBB20_58
// %bb.59:
	cbz	w9, .LBB20_62
// %bb.60:
	mov	w9, wzr
	add	x8, sp, #32
	mov	x10, x23
.LBB20_61:                              // =>This Inner Loop Header: Depth=1
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
	b.ne	.LBB20_61
.LBB20_62:
	cmp	w24, #8
	mov	x8, xzr
	b.lo	.LBB20_67
// %bb.63:
	sub	x9, x21, x20
	cmp	x9, #32
	b.lo	.LBB20_67
// %bb.64:
	and	x8, x23, #0x78
	add	x9, x20, #16
	add	x10, x21, #16
	mov	x11, x8
.LBB20_65:                              // =>This Inner Loop Header: Depth=1
	ldp	q0, q1, [x9, #-16]
	subs	x11, x11, #8
	add	x9, x9, #32
	stp	q0, q1, [x10, #-16]
	add	x10, x10, #32
	b.ne	.LBB20_65
// %bb.66:
	cmp	x8, x23
	b.eq	.LBB20_69
.LBB20_67:
	lsl	x10, x8, #2
	sub	x8, x23, x8
	add	x9, x21, x10
	add	x10, x20, x10
.LBB20_68:                              // =>This Inner Loop Header: Depth=1
	ldr	w11, [x10], #4
	subs	x8, x8, #1
	str	w11, [x9], #4
	b.ne	.LBB20_68
.LBB20_69:
	cmp	w24, #8
	mov	x8, xzr
	b.lo	.LBB20_74
// %bb.70:
	sub	x9, x20, x19
	cmp	x9, #32
	b.lo	.LBB20_74
// %bb.71:
	and	x8, x23, #0x78
	add	x9, x19, #16
	add	x10, x20, #16
	mov	x11, x8
.LBB20_72:                              // =>This Inner Loop Header: Depth=1
	ldp	q0, q1, [x9, #-16]
	subs	x11, x11, #8
	add	x9, x9, #32
	stp	q0, q1, [x10, #-16]
	add	x10, x10, #32
	b.ne	.LBB20_72
// %bb.73:
	cmp	x8, x23
	b.eq	.LBB20_76
.LBB20_74:
	lsl	x10, x8, #2
	sub	x8, x23, x8
	add	x9, x20, x10
	add	x10, x19, x10
.LBB20_75:                              // =>This Inner Loop Header: Depth=1
	ldr	w11, [x10], #4
	subs	x8, x8, #1
	str	w11, [x9], #4
	b.ne	.LBB20_75
.LBB20_76:
	lsl	x2, x23, #2
	add	x1, sp, #32
	mov	x0, x19
	bl	memcpy
.LBB20_77:
	.cfi_def_cfa wsp, 144
	ldp	x20, x19, [sp, #128]            // 16-byte Folded Reload
	ldr	x25, [sp, #80]                  // 8-byte Folded Reload
	ldp	x22, x21, [sp, #112]            // 16-byte Folded Reload
	ldp	x24, x23, [sp, #96]             // 16-byte Folded Reload
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
	.cfi_restore w30
	.cfi_restore w29
.LBB20_78:
	ret
.LBB20_79:
	.cfi_restore_state
	sub	x8, x23, #1
.LBB20_80:                              // =>This Inner Loop Header: Depth=1
	tbnz	w8, #7, .LBB20_12
// %bb.81:                              //   in Loop: Header=BB20_80 Depth=1
	mov	w9, w8
	ubfiz	x10, x9, #2, #7
	ldr	w9, [x25, x10]
	ldr	w10, [x21, x10]
	cmp	w9, w10
	b.hi	.LBB20_14
// %bb.82:                              //   in Loop: Header=BB20_80 Depth=1
	cmp	w9, w10
	sub	x8, x8, #1
	b.hs	.LBB20_80
	b	.LBB20_12
.LBB20_83:
	sub	x8, x23, #1
.LBB20_84:                              // =>This Inner Loop Header: Depth=1
	tbnz	w8, #7, .LBB20_17
// %bb.85:                              //   in Loop: Header=BB20_84 Depth=1
	mov	w9, w8
	ubfiz	x10, x9, #2, #7
	ldr	w9, [x25, x10]
	ldr	w10, [x20, x10]
	cmp	w9, w10
	b.hi	.LBB20_19
// %bb.86:                              //   in Loop: Header=BB20_84 Depth=1
	cmp	w9, w10
	sub	x8, x8, #1
	b.hs	.LBB20_84
	b	.LBB20_17
.LBB20_87:
	sub	x8, x23, #1
.LBB20_88:                              // =>This Inner Loop Header: Depth=1
	tbnz	w8, #7, .LBB20_27
// %bb.89:                              //   in Loop: Header=BB20_88 Depth=1
	mov	w9, w8
	ubfiz	x10, x9, #2, #7
	ldr	w9, [x25, x10]
	ldr	w10, [x20, x10]
	cmp	w9, w10
	b.hi	.LBB20_29
// %bb.90:                              //   in Loop: Header=BB20_88 Depth=1
	cmp	w9, w10
	sub	x8, x8, #1
	b.hs	.LBB20_88
	b	.LBB20_27
.LBB20_91:
	sub	x8, x23, #1
.LBB20_92:                              // =>This Inner Loop Header: Depth=1
	tbnz	w8, #7, .LBB20_32
// %bb.93:                              //   in Loop: Header=BB20_92 Depth=1
	mov	w9, w8
	ubfiz	x10, x9, #2, #7
	ldr	w9, [x25, x10]
	ldr	w10, [x21, x10]
	cmp	w9, w10
	b.hi	.LBB20_34
// %bb.94:                              //   in Loop: Header=BB20_92 Depth=1
	cmp	w9, w10
	sub	x8, x8, #1
	b.hs	.LBB20_92
	b	.LBB20_32
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
	cmp	w24, #0
	b.le	.LBB21_9
// %bb.1:
	lsl	x10, x23, #2
	mov	x8, xzr
	mov	w9, wzr
	mov	x24, x23
	adrp	x11, .L__const.x_side_default._3
	add	x11, x11, :lo12:.L__const.x_side_default._3
.LBB21_2:                               // =>This Inner Loop Header: Depth=1
	ldr	w12, [x11, x8]
	ldr	w13, [x19, x8]
	add	w12, w12, w9
	subs	w13, w13, w12
	str	w13, [x19, x8]
	add	x8, x8, #4
	cset	w14, lo
	cmp	w12, #0
	csel	w9, w9, wzr, eq
	cmp	x10, x8
	orr	w9, w9, w14
	b.ne	.LBB21_2
// %bb.3:
	cbz	w9, .LBB21_6
// %bb.4:
	mov	w11, wzr
	mov	x8, x19
	mov	x9, x22
	mov	x10, x24
.LBB21_5:                               // =>This Inner Loop Header: Depth=1
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
	b.ne	.LBB21_5
.LBB21_6:
	mov	x0, x19
	mov	x1, x19
	mov	x2, x21
	mov	x3, x20
	bl	uECC_vli_modMult_fast
	mov	w9, wzr
	add	x8, x20, #132
	mov	x10, x19
.LBB21_7:                               // =>This Inner Loop Header: Depth=1
	ldr	w11, [x10]
	ldr	w12, [x8], #4
	add	w13, w11, w9
	add	w12, w13, w12
	cmp	w12, w11
	str	w12, [x10], #4
	cset	w11, lo
	csel	w9, w9, wzr, eq
	subs	x24, x24, #1
	orr	w9, w9, w11
	b.ne	.LBB21_7
// %bb.8:
	cbnz	w9, .LBB21_15
	b	.LBB21_10
.LBB21_9:
	mov	x0, x19
	mov	x1, x19
	mov	x2, x21
	mov	x3, x20
	bl	uECC_vli_modMult_fast
.LBB21_10:
	sub	x8, x23, #1
.LBB21_11:                              // =>This Inner Loop Header: Depth=1
	tbnz	w8, #7, .LBB21_14
// %bb.12:                              //   in Loop: Header=BB21_11 Depth=1
	mov	w9, w8
	ubfiz	x10, x9, #2, #7
	ldr	w9, [x22, x10]
	ldr	w10, [x19, x10]
	cmp	w9, w10
	b.hi	.LBB21_17
// %bb.13:                              //   in Loop: Header=BB21_11 Depth=1
	cmp	w9, w10
	sub	x8, x8, #1
	b.hs	.LBB21_11
.LBB21_14:
	sxtb	w8, w23
	cmp	w8, #1
	b.lt	.LBB21_17
.LBB21_15:
	mov	w8, wzr
.LBB21_16:                              // =>This Inner Loop Header: Depth=1
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
	b.ne	.LBB21_16
.LBB21_17:
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
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	stp	x28, x27, [sp, #32]             // 16-byte Folded Spill
	stp	x26, x25, [sp, #48]             // 16-byte Folded Spill
	stp	x24, x23, [sp, #64]             // 16-byte Folded Spill
	stp	x22, x21, [sp, #80]             // 16-byte Folded Spill
	stp	x20, x19, [sp, #96]             // 16-byte Folded Spill
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
	ldr	w8, [x1]
	str	w8, [x0]
	ldr	w5, [x1, #4]
	str	w5, [x0, #4]
	ldr	w10, [x1, #8]
	str	w10, [x0, #8]
	ldr	w13, [x1, #12]
	str	w13, [x0, #12]
	ldr	w14, [x1, #16]
	str	w14, [x0, #16]
	ldr	w15, [x1, #20]
	str	w15, [x0, #20]
	ldr	w16, [x1, #24]
	str	w16, [x0, #24]
	ldr	w11, [x1, #28]
	str	w11, [x0, #28]
	ldp	w17, w12, [x1, #44]
	extr	w9, w12, w17, #31
	lsr	w18, w17, #31
	cmp	w9, w12
	csel	w12, w18, wzr, eq
	ldp	w18, w2, [x1, #52]
	csinc	w12, w12, wzr, hs
	orr	w3, w12, w18, lsl #1
	cmp	w3, w18
	csel	w12, w12, wzr, eq
	csinc	w12, w12, wzr, hs
	orr	w18, w12, w2, lsl #1
	cmp	w18, w2
	csel	w12, w12, wzr, eq
	csinc	w12, w12, wzr, hs
	adds	w17, w13, w17, lsl #1
	adc	w4, w9, w14
	cset	w13, hs
	cinc	w2, w14, hs
	cmp	w4, w14
	csel	w13, w13, wzr, eq
	csinc	w13, w13, wzr, hs
	add	w14, w15, w13
	add	w3, w14, w3
	cmp	w3, w15
	csel	w13, w13, wzr, eq
	csinc	w14, w13, wzr, hs
	ldr	w13, [x1, #60]
	stp	w8, w5, [x0]
	add	w15, w16, w14
	stp	w10, w17, [x0, #8]
	add	w7, w15, w18
	add	w15, w12, w13, lsl #1
	stp	w4, w3, [x0, #16]
	cmp	w7, w16
	csel	w14, w14, wzr, eq
	csinc	w14, w14, wzr, hs
	add	w16, w11, w14
	add	w18, w16, w15
	stp	w7, w18, [x0, #24]
	ldp	w16, w6, [x1, #48]
	extr	w19, w6, w16, #31
	lsr	w20, w16, #31
	cmp	w19, w6
	csel	w6, w20, wzr, eq
	ldp	w20, w21, [x1, #56]
	csinc	w6, w6, wzr, hs
	stp	w5, w10, [x0, #4]
	orr	w22, w6, w20, lsl #1
	cmp	w22, w20
	csel	w6, w6, wzr, eq
	csinc	w20, w6, wzr, hs
	orr	w6, w20, w21, lsl #1
	cmp	w6, w21
	csel	w20, w20, wzr, eq
	csinc	w20, w20, wzr, hs
	adds	w16, w17, w16, lsl #1
	adc	w9, w2, w9
	add	w2, w9, w19
	cset	w9, hs
	cmp	w2, w4
	stp	w16, w2, [x0, #12]
	csel	w9, w9, wzr, eq
	csinc	w9, w9, wzr, hs
	add	w17, w3, w9
	add	w17, w17, w22
	cmp	w17, w3
	csel	w9, w9, wzr, eq
	csinc	w9, w9, wzr, hs
	add	w29, w7, w9
	add	w30, w29, w6
	cmp	w30, w7
	stp	w17, w30, [x0, #20]
	csel	w9, w9, wzr, eq
	csinc	w3, w9, wzr, hs
	add	w9, w18, w3
	add	w4, w9, w20
	str	w4, [x0, #28]
	ldp	w9, w20, [x1, #32]
	ldr	w7, [x1, #40]
	adds	w25, w8, w9
	add	w7, w10, w7
	str	w9, [sp, #12]                   // 4-byte Folded Spill
	adc	w24, w20, w5
	cset	w19, hs
	cinc	w28, w5, hs
	cmp	w24, w5
	csel	w5, w19, wzr, eq
	csinc	w5, w5, wzr, hs
	add	w27, w7, w5
	cmp	w27, w10
	csel	w10, w5, wzr, eq
	csinc	w22, w10, wzr, hs
	adds	w26, w16, w22
	adcs	w23, w2, wzr
	mrs	x21, NZCV
	ldp	w10, w5, [x1, #56]
	adcs	w19, w17, wzr
	stp	w25, w24, [x0]
	adc	w6, w29, w6
	stp	w27, w26, [x0, #8]
	add	w7, w6, w10
	cset	w10, hs
	stp	w23, w19, [x0, #16]
	cmp	w7, w30
	csel	w10, w10, wzr, eq
	csinc	w6, w10, wzr, hs
	add	w10, w6, w5
	add	w5, w4, w10
	stp	w7, w5, [x0, #24]
	ldp	w29, w9, [x1, #32]
	adds	w25, w25, w9
	str	w9, [sp, #8]                    // 4-byte Folded Spill
	adc	w20, w28, w20
	ldp	w30, w28, [x1, #40]
	add	w20, w20, w30
	cset	w30, hs
	add	w28, w27, w28
	cmp	w20, w24
	csel	w24, w30, wzr, eq
	csinc	w30, w24, wzr, hs
	add	w24, w28, w30
	cmp	w24, w27
	csel	w27, w30, wzr, eq
	ldp	w28, w30, [x1, #52]
	csinc	w10, w27, wzr, hs
	add	w9, w26, w28
	add	w27, w9, w10
	cmp	w27, w26
	csel	w9, w10, wzr, eq
	csinc	w9, w9, wzr, hs
	cmn	w16, w22
	adc	w10, w9, w2
	add	w22, w10, w30
	cmp	w22, w23
	cset	w10, lo
	csel	w9, w9, wzr, eq
	msr	NZCV, x21
	orr	w9, w9, w10
	ldr	w10, [x1, #60]
	stp	w25, w20, [x0]
	adc	w17, w9, w17
	cmp	w15, w13
	stp	w24, w27, [x0, #8]
	csel	w15, w12, wzr, eq
	cset	w16, lo
	cmp	w18, w11
	add	w10, w17, w10
	csel	w17, w14, wzr, eq
	cset	w2, lo
	cmp	w4, w18
	add	w12, w7, w28
	stp	w22, w10, [x0, #16]
	csel	w18, w3, wzr, eq
	cset	w3, lo
	cmp	w10, w19
	cset	w11, lo
	csel	w9, w9, wzr, eq
	orr	w9, w9, w11
	add	w19, w12, w9
	add	w12, w5, w29
	cmp	w19, w7
	cset	w11, lo
	csel	w9, w9, wzr, eq
	cmp	w5, w4
	orr	w9, w9, w11
	csel	w11, w6, wzr, eq
	add	w21, w12, w9
	csinc	w4, w11, wzr, hs
	stp	w19, w21, [x0, #24]
	ldp	w12, w13, [x1, #44]
	ldr	w11, [x1, #52]
	ldr	w7, [x1, #32]
	ldr	w6, [x1, #40]
	subs	w23, w25, w12
	cinc	w13, w13, lo
	cset	w14, lo
	cmp	w13, #0
	csel	w14, w14, wzr, eq
	subs	w20, w20, w13
	csinc	w13, w14, wzr, hs
	stp	w23, w20, [x0]
	adds	w11, w11, w13
	csel	w13, w13, wzr, eq
	subs	w24, w24, w11
	csinc	w11, w13, wzr, hs
	subs	w14, w27, w11
	cset	w11, lo
	stp	w24, w14, [x0, #8]
	subs	w13, w22, w11
	cset	w11, lo
	subs	w11, w10, w11
	cinc	w10, w7, lo
	cset	w7, lo
	stp	w13, w11, [x0, #16]
	cmp	w10, #0
	csel	w7, w7, wzr, eq
	subs	w10, w19, w10
	csinc	w7, w7, wzr, hs
	adds	w19, w6, w7
	csel	w22, w7, wzr, eq
	cmp	w21, w5
	csel	w6, w9, wzr, eq
	cset	w7, lo
	subs	w9, w21, w19
	stp	w10, w9, [x0, #24]
	csinc	w19, w22, wzr, hs
	ldp	w5, w21, [x1, #48]
	ldr	w25, [x1, #56]
	ldr	w22, [x1, #44]
	subs	w23, w23, w5
	cinc	w21, w21, lo
	cset	w26, lo
	cmp	w21, #0
	csel	w26, w26, wzr, eq
	subs	w27, w20, w21
	csinc	w20, w26, wzr, hs
	adds	w21, w25, w20
	ldr	w25, [x1, #60]
	csel	w20, w20, wzr, eq
	subs	w24, w24, w21
	csinc	w20, w20, wzr, hs
	adds	w21, w25, w20
	csel	w20, w20, wzr, eq
	subs	w14, w14, w21
	csinc	w20, w20, wzr, hs
	subs	w13, w13, w20
	ldr	w20, [x1, #36]
	stp	w23, w27, [x0]
	cset	w21, lo
	stp	w24, w14, [x0, #8]
	subs	w25, w11, w21
	cinc	w11, w20, lo
	cset	w20, lo
	stp	w13, w25, [x0, #16]
	cmp	w11, #0
	csel	w20, w20, wzr, eq
	subs	w10, w10, w11
	csinc	w11, w20, wzr, hs
	adds	w20, w22, w11
	csel	w21, w11, wzr, eq
	subs	w11, w9, w20
	stp	w10, w11, [x0, #24]
	csinc	w21, w21, wzr, hs
	ldp	w20, w9, [x1, #52]
	ldr	w22, [x1, #48]
	subs	w28, w23, w20
	ldr	w23, [x1, #60]
	cinc	w9, w9, lo
	cset	w26, lo
	cmp	w9, #0
	csel	w26, w26, wzr, eq
	subs	w9, w27, w9
	csinc	w26, w26, wzr, hs
	adds	w23, w23, w26
	csel	w26, w26, wzr, eq
	subs	w29, w24, w23
	csinc	w24, w26, wzr, hs
	ldp	w23, w26, [x1, #32]
	adds	w23, w23, w24
	csel	w24, w24, wzr, eq
	subs	w14, w14, w23
	csinc	w23, w24, wzr, hs
	add	w24, w26, w23
	subs	w27, w13, w24
	cset	w13, lo
	cmp	w24, #0
	ldr	w24, [x1, #40]
	csel	w23, w23, wzr, eq
	stp	w28, w9, [x0]
	orr	w13, w23, w13
	stp	w29, w14, [x0, #8]
	add	w24, w24, w13
	subs	w23, w25, w24
	cset	w25, lo
	cmp	w24, #0
	stp	w27, w23, [x0, #16]
	csel	w13, w13, wzr, eq
	orr	w13, w13, w25
	subs	w24, w10, w13
	cinc	w10, w22, lo
	cset	w13, lo
	cmp	w10, #0
	csel	w13, w13, wzr, eq
	subs	w25, w11, w10
	stp	w24, w25, [x0, #24]
	csinc	w26, w13, wzr, hs
	ldp	w22, w10, [x1, #56]
	ldr	w30, [x1, #52]
	subs	w28, w28, w22
	cinc	w10, w10, lo
	cset	w11, lo
	cmp	w10, #0
	csel	w11, w11, wzr, eq
	subs	w13, w9, w10
	csinc	w9, w11, wzr, hs
	subs	w11, w29, w9
	ldp	w10, w9, [x1, #36]
	cset	w29, lo
	cinc	w10, w10, lo
	cmp	w10, #0
	csel	w29, w29, wzr, eq
	subs	w14, w14, w10
	csinc	w10, w29, wzr, hs
	ldr	w29, [x1, #44]
	stp	w28, w13, [x0]
	adds	w9, w9, w10
	stp	w11, w14, [x0, #8]
	csel	w10, w10, wzr, eq
	subs	w1, w27, w9
	csinc	w9, w10, wzr, hs
	orr	w10, w15, w16
	orr	w16, w17, w2
	adds	w15, w29, w9
	orr	w17, w18, w3
	add	w10, w16, w10
	csel	w9, w9, wzr, eq
	subs	w15, w23, w15
	add	w10, w10, w17
	csinc	w9, w9, wzr, hs
	add	w2, w19, w21
	add	w10, w10, w4
	subs	w16, w24, w9
	orr	w9, w6, w7
	add	w2, w2, w26
	cinc	w17, w30, lo
	cset	w18, lo
	add	w9, w10, w9
	cmp	w17, #0
	stp	w1, w15, [x0, #16]
	csel	w18, w18, wzr, eq
	subs	w17, w25, w17
	csinc	w18, w18, wzr, hs
	stp	w16, w17, [x0, #24]
	add	w10, w2, w18
	subs	w18, w9, w10
	b.mi	.LBB23_13
// %bb.1:
	ldp	w10, w9, [sp, #8]               // 8-byte Folded Reload
	add	w9, w9, w10
	add	w8, w9, w8
	mov	w9, #1                          // =0x1
	sub	w8, w8, w12
	sub	w8, w8, w5
	sub	w8, w8, w20
	sub	w8, w8, w22
	add	w8, w8, #1
	b	.LBB23_3
.LBB23_2:                               //   in Loop: Header=BB23_3 Depth=1
	cmp	w8, #0
	csetm	w10, eq
	cset	w12, ne
	subs	w13, w13, w10
	csinc	w10, w12, wzr, hs
	stp	w8, w13, [x0]
	add	w8, w8, #1
	sub	w12, w10, #1
	subs	w11, w11, w12
	csinc	w10, w10, wzr, hs
	subs	w14, w14, w10
	cset	w10, lo
	stp	w11, w14, [x0, #8]
	subs	w1, w1, w10
	cset	w10, lo
	subs	w15, w15, w10
	cinc	w10, w9, lo
	stp	w1, w15, [x0, #16]
	subs	w16, w16, w10
	csetm	w10, hs
	cset	w12, lo
	subs	w17, w17, w10
	csinc	w10, w12, wzr, hs
	stp	w16, w17, [x0, #24]
	sub	w18, w18, w10
.LBB23_3:                               // =>This Inner Loop Header: Depth=1
	cbnz	w18, .LBB23_2
// %bb.4:                               //   in Loop: Header=BB23_3 Depth=1
	cmn	w17, #1
	b.ne	.LBB23_16
// %bb.5:                               //   in Loop: Header=BB23_3 Depth=1
	cbz	w16, .LBB23_16
// %bb.6:                               //   in Loop: Header=BB23_3 Depth=1
	cmp	w16, #1
	b.ne	.LBB23_2
// %bb.7:                               //   in Loop: Header=BB23_3 Depth=1
	cbnz	w15, .LBB23_2
// %bb.8:                               //   in Loop: Header=BB23_3 Depth=1
	cbnz	w1, .LBB23_2
// %bb.9:                               //   in Loop: Header=BB23_3 Depth=1
	cbnz	w14, .LBB23_2
// %bb.10:                              //   in Loop: Header=BB23_3 Depth=1
	cmn	w11, #1
	b.ne	.LBB23_16
// %bb.11:                              //   in Loop: Header=BB23_3 Depth=1
	cmn	w13, #1
	b.ne	.LBB23_16
// %bb.12:                              //   in Loop: Header=BB23_3 Depth=1
	cbz	w8, .LBB23_2
	b	.LBB23_16
.LBB23_13:
	add	w9, w12, w5
	add	w10, w20, w22
	add	w9, w9, w10
	ldr	w10, [sp, #12]                  // 4-byte Folded Reload
	sub	w9, w9, w10
	ldr	w10, [sp, #8]                   // 4-byte Folded Reload
	sub	w9, w9, w10
	sub	w8, w9, w8
	mov	w9, #1                          // =0x1
.LBB23_14:                              // =>This Inner Loop Header: Depth=1
	cmp	w8, #0
	mov	w10, w13
	add	w8, w8, #1
	cinc	w12, w13, ne
	sub	w13, w12, #1
	cset	w12, ne
	cmp	w13, w10
	csel	w10, w12, wzr, eq
	mov	w12, w11
	csinc	w10, w10, wzr, hs
	add	w11, w11, w10
	sub	w11, w11, #1
	cmp	w11, w12
	csel	w10, w10, wzr, eq
	csinc	w10, w10, wzr, hs
	adds	w14, w14, w10
	mov	w10, w16
	adcs	w1, w1, wzr
	adcs	w15, w15, wzr
	adc	w16, w16, w9
	cset	w12, hs
	cmp	w16, w10
	csel	w10, w12, wzr, eq
	mov	w12, w17
	csinc	w10, w10, wzr, hs
	add	w17, w17, w10
	sub	w17, w17, #1
	cmp	w17, w12
	csel	w10, w10, wzr, eq
	csinc	w10, w10, wzr, hs
	adds	w18, w10, w18
	b.mi	.LBB23_14
// %bb.15:
	neg	w8, w8
	stp	w11, w14, [x0, #8]
	stp	w8, w13, [x0]
	stp	w1, w15, [x0, #16]
	stp	w16, w17, [x0, #24]
.LBB23_16:
	ldp	x20, x19, [sp, #96]             // 16-byte Folded Reload
	ldp	x22, x21, [sp, #80]             // 16-byte Folded Reload
	ldp	x24, x23, [sp, #64]             // 16-byte Folded Reload
	ldp	x26, x25, [sp, #48]             // 16-byte Folded Reload
	ldp	x28, x27, [sp, #32]             // 16-byte Folded Reload
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
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
	.cfi_restore w27
	.cfi_restore w28
	.cfi_restore w30
	.cfi_restore w29
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
	b.lt	.LBB24_3
// %bb.1:
	and	w9, w8, #0xff
	and	x8, x8, #0xff
	cmp	w9, #8
	b.hs	.LBB24_4
// %bb.2:
	mov	x9, xzr
	mov	w10, wzr
	b	.LBB24_7
.LBB24_3:
	mov	w0, #1                          // =0x1
	ret
.LBB24_4:
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	and	x9, x8, #0x78
	add	x10, x0, #16
	mov	x11, x9
.LBB24_5:                               // =>This Inner Loop Header: Depth=1
	ldp	q2, q3, [x10, #-16]
	subs	x11, x11, #8
	add	x10, x10, #32
	orr	v0.16b, v2.16b, v0.16b
	orr	v1.16b, v3.16b, v1.16b
	b.ne	.LBB24_5
// %bb.6:
	orr	v0.16b, v1.16b, v0.16b
	cmp	x9, x8
	ext	v1.16b, v0.16b, v0.16b, #8
	orr	v0.8b, v0.8b, v1.8b
	fmov	x10, d0
	lsr	x11, x10, #32
	orr	w10, w10, w11
	b.eq	.LBB24_9
.LBB24_7:
	add	x11, x0, x9, lsl #2
	sub	x8, x8, x9
.LBB24_8:                               // =>This Inner Loop Header: Depth=1
	ldr	w9, [x11], #4
	subs	x8, x8, #1
	orr	w10, w9, w10
	b.ne	.LBB24_8
.LBB24_9:
	cmp	w10, #0
	cset	w0, eq
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
	sub	sp, sp, #128
	.cfi_def_cfa_offset 128
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	str	x27, [sp, #48]                  // 8-byte Folded Spill
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
	.cfi_offset w27, -80
	.cfi_offset w30, -88
	.cfi_offset w29, -96
	mov	x25, x4
	mov	x23, x4
	mov	x20, x3
	ldrsb	w10, [x25], #4
	mov	x19, x2
	mov	x21, x1
	mov	x24, x0
	cmp	w10, #1
	b.lt	.LBB26_37
// %bb.1:
	and	x26, x10, #0xff
	mov	x8, xzr
	mov	w9, wzr
	lsl	x22, x26, #2
	mov	x10, sp
.LBB26_2:                               // =>This Inner Loop Header: Depth=1
	ldr	w11, [x24, x8]
	ldr	w12, [x19, x8]
	add	w11, w11, w9
	subs	w12, w12, w11
	str	w12, [x10, x8]
	add	x8, x8, #4
	cset	w13, lo
	cmp	w11, #0
	csel	w9, w9, wzr, eq
	cmp	x22, x8
	orr	w9, w9, w13
	b.ne	.LBB26_2
// %bb.3:
	cbz	w9, .LBB26_6
// %bb.4:
	mov	w10, wzr
	mov	x8, sp
	mov	x9, x25
	mov	x11, x26
.LBB26_5:                               // =>This Inner Loop Header: Depth=1
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
	b.ne	.LBB26_5
.LBB26_6:
	mov	x0, sp
	mov	x1, sp
	mov	x2, sp
	mov	x3, x23
	bl	uECC_vli_modMult_fast
	mov	x2, sp
	mov	x0, x24
	mov	x1, x24
	mov	x3, x23
	bl	uECC_vli_modMult_fast
	mov	x2, sp
	mov	x0, x19
	mov	x1, x19
	mov	x3, x23
	bl	uECC_vli_modMult_fast
	mov	x8, xzr
	mov	w9, wzr
.LBB26_7:                               // =>This Inner Loop Header: Depth=1
	lsl	x10, x8, #2
	add	x8, x8, #1
	ldr	w11, [x21, x10]
	ldr	w12, [x20, x10]
	add	w11, w11, w9
	subs	w12, w12, w11
	str	w12, [x20, x10]
	cset	w13, lo
	cmp	w11, #0
	csel	w9, w9, wzr, eq
	cmp	x26, x8
	orr	w9, w9, w13
	b.ne	.LBB26_7
// %bb.8:
	cbz	w9, .LBB26_11
// %bb.9:
	mov	w11, wzr
	mov	x8, x20
	mov	x9, x25
	mov	x10, x26
.LBB26_10:                              // =>This Inner Loop Header: Depth=1
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
	b.ne	.LBB26_10
.LBB26_11:
	mov	x0, sp
	mov	x1, x20
	mov	x2, x20
	mov	x3, x23
	mov	x27, sp
	bl	uECC_vli_modMult_fast
	mov	x8, xzr
	mov	w9, wzr
.LBB26_12:                              // =>This Inner Loop Header: Depth=1
	lsl	x10, x8, #2
	add	x8, x8, #1
	ldr	w11, [x24, x10]
	ldr	w12, [x27, x10]
	add	w11, w11, w9
	subs	w12, w12, w11
	str	w12, [x27, x10]
	cset	w13, lo
	cmp	w11, #0
	csel	w9, w9, wzr, eq
	cmp	x26, x8
	orr	w9, w9, w13
	b.ne	.LBB26_12
// %bb.13:
	cbz	w9, .LBB26_16
// %bb.14:
	mov	w10, wzr
	mov	x8, sp
	mov	x9, x25
	mov	x11, x26
.LBB26_15:                              // =>This Inner Loop Header: Depth=1
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
	b.ne	.LBB26_15
.LBB26_16:
	mov	x8, xzr
	mov	w9, wzr
	mov	x10, sp
.LBB26_17:                              // =>This Inner Loop Header: Depth=1
	lsl	x11, x8, #2
	add	x8, x8, #1
	ldr	w12, [x19, x11]
	ldr	w13, [x10, x11]
	add	w12, w12, w9
	subs	w13, w13, w12
	str	w13, [x10, x11]
	cset	w14, lo
	cmp	w12, #0
	csel	w9, w9, wzr, eq
	cmp	x26, x8
	orr	w9, w9, w14
	b.ne	.LBB26_17
// %bb.18:
	cbz	w9, .LBB26_21
// %bb.19:
	mov	w10, wzr
	mov	x8, sp
	mov	x9, x25
	mov	x11, x26
.LBB26_20:                              // =>This Inner Loop Header: Depth=1
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
	b.ne	.LBB26_20
.LBB26_21:
	mov	x8, xzr
	mov	w9, wzr
.LBB26_22:                              // =>This Inner Loop Header: Depth=1
	lsl	x10, x8, #2
	add	x8, x8, #1
	ldr	w11, [x24, x10]
	ldr	w12, [x19, x10]
	add	w11, w11, w9
	subs	w12, w12, w11
	str	w12, [x19, x10]
	cset	w13, lo
	cmp	w11, #0
	csel	w9, w9, wzr, eq
	cmp	x26, x8
	orr	w9, w9, w13
	b.ne	.LBB26_22
// %bb.23:
	cbz	w9, .LBB26_26
// %bb.24:
	mov	w11, wzr
	mov	x8, x19
	mov	x9, x25
	mov	x10, x26
.LBB26_25:                              // =>This Inner Loop Header: Depth=1
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
	b.ne	.LBB26_25
.LBB26_26:
	mov	x0, x21
	mov	x1, x21
	mov	x2, x19
	mov	x3, x23
	bl	uECC_vli_modMult_fast
	mov	x8, xzr
	mov	w9, wzr
	mov	x10, sp
.LBB26_27:                              // =>This Inner Loop Header: Depth=1
	lsl	x11, x8, #2
	add	x8, x8, #1
	ldr	w12, [x10, x11]
	ldr	w13, [x24, x11]
	add	w12, w12, w9
	subs	w13, w13, w12
	str	w13, [x19, x11]
	cset	w14, lo
	cmp	w12, #0
	csel	w9, w9, wzr, eq
	cmp	x26, x8
	orr	w9, w9, w14
	b.ne	.LBB26_27
// %bb.28:
	cbz	w9, .LBB26_31
// %bb.29:
	mov	w11, wzr
	mov	x8, x19
	mov	x9, x25
	mov	x10, x26
.LBB26_30:                              // =>This Inner Loop Header: Depth=1
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
	b.ne	.LBB26_30
.LBB26_31:
	mov	x0, x20
	mov	x1, x20
	mov	x2, x19
	mov	x3, x23
	bl	uECC_vli_modMult_fast
	mov	w9, wzr
	mov	x8, x20
	mov	x10, x26
.LBB26_32:                              // =>This Inner Loop Header: Depth=1
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
	b.ne	.LBB26_32
// %bb.33:
	cbz	w9, .LBB26_36
// %bb.34:
	mov	w8, wzr
.LBB26_35:                              // =>This Inner Loop Header: Depth=1
	ldr	w9, [x20]
	ldr	w10, [x25], #4
	add	w11, w9, w8
	add	w10, w11, w10
	cmp	w10, w9
	str	w10, [x20], #4
	cset	w9, lo
	csel	w8, w8, wzr, eq
	subs	x26, x26, #1
	orr	w8, w8, w9
	b.ne	.LBB26_35
.LBB26_36:
	mov	x1, sp
	mov	x0, x19
	mov	x2, x22
	bl	memcpy
	b	.LBB26_38
.LBB26_37:
	mov	x0, sp
	mov	x1, sp
	mov	x2, sp
	mov	x3, x23
	bl	uECC_vli_modMult_fast
	mov	x2, sp
	mov	x0, x24
	mov	x1, x24
	mov	x3, x23
	bl	uECC_vli_modMult_fast
	mov	x2, sp
	mov	x0, x19
	mov	x1, x19
	mov	x3, x23
	bl	uECC_vli_modMult_fast
	mov	x0, sp
	mov	x1, x20
	mov	x2, x20
	mov	x3, x23
	bl	uECC_vli_modMult_fast
	mov	x0, x21
	mov	x1, x21
	mov	x2, x19
	mov	x3, x23
	bl	uECC_vli_modMult_fast
	mov	x0, x20
	mov	x1, x20
	mov	x2, x19
	mov	x3, x23
	bl	uECC_vli_modMult_fast
.LBB26_38:
	.cfi_def_cfa wsp, 128
	ldp	x20, x19, [sp, #112]            // 16-byte Folded Reload
	ldr	x27, [sp, #48]                  // 8-byte Folded Reload
	ldp	x22, x21, [sp, #96]             // 16-byte Folded Reload
	ldp	x24, x23, [sp, #80]             // 16-byte Folded Reload
	ldp	x26, x25, [sp, #64]             // 16-byte Folded Reload
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
	ldrsb	w8, [x5]
	add	x9, sp, #104
	mov	x20, x5
	mov	w26, w4
	mov	x19, x3
	mov	x25, x2
	mov	x22, x1
	cmp	w8, #1
	and	x21, x8, #0xff
	add	x24, x9, #32
	str	x0, [sp, #16]                   // 8-byte Folded Spill
	b.lt	.LBB27_3
// %bb.1:
	lsl	x28, x21, #2
	mov	x0, x24
	mov	x1, x22
	mov	x2, x28
	bl	memcpy
	add	x8, sp, #40
	add	x1, x22, x28
	mov	x2, x28
	add	x27, x8, #32
	str	x1, [sp, #24]                   // 8-byte Folded Spill
	mov	x0, x27
	bl	memcpy
	sub	x0, x29, #72
	cbz	x19, .LBB27_5
// %bb.2:
	mov	x1, x19
	mov	x2, x28
	bl	memcpy
	b	.LBB27_6
.LBB27_3:
	sxtb	x9, w21
	add	x8, sp, #40
	add	x27, x8, #32
	str	x9, [sp, #8]                    // 8-byte Folded Spill
	add	x9, x22, w21, sxtb #2
	str	x9, [sp, #24]                   // 8-byte Folded Spill
	cbnz	x19, .LBB27_7
// %bb.4:
	mov	w8, #1                          // =0x1
	stur	w8, [x29, #-72]
	b	.LBB27_7
.LBB27_5:
	mov	w1, wzr
	mov	x2, x28
	bl	memset
	mov	w8, #1                          // =0x1
	stur	w8, [x29, #-72]
.LBB27_6:
	add	x0, sp, #104
	mov	x1, x24
	mov	x2, x28
	bl	memmove
	add	x8, sp, #40
	add	x0, sp, #40
	mov	x2, x28
	add	x1, x8, #32
	bl	memmove
	str	x21, [sp, #8]                   // 8-byte Folded Spill
.LBB27_7:
	sub	x0, x29, #40
	sub	x1, x29, #72
	sub	x2, x29, #72
	mov	x3, x20
	str	x22, [sp, #32]                  // 8-byte Folded Spill
	bl	uECC_vli_modMult_fast
	sub	x2, x29, #40
	mov	x0, x24
	mov	x1, x24
	mov	x3, x20
	bl	uECC_vli_modMult_fast
	sub	x0, x29, #40
	sub	x1, x29, #40
	sub	x2, x29, #72
	mov	x3, x20
	bl	uECC_vli_modMult_fast
	sub	x2, x29, #40
	mov	x0, x27
	mov	x1, x27
	mov	x3, x20
	bl	uECC_vli_modMult_fast
	ldr	x8, [x20, #168]
	sub	x2, x29, #72
	mov	x0, x24
	mov	x1, x27
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
	add	x19, sp, #104
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
	add	x27, sp, #40
	bl	uECC_vli_modMult_fast
	sub	w8, w26, #2
	sxth	w8, w8
	cmp	w8, #1
	b.lt	.LBB27_10
// %bb.8:
	and	w26, w8, #0xffff
	mov	w28, #1                         // =0x1
.LBB27_9:                               // =>This Inner Loop Header: Depth=1
	lsr	w8, w26, #5
	lsl	w9, w28, w26
	mov	x4, x20
	ldr	w8, [x25, w8, uxtw #2]
	tst	w8, w9
	cset	w8, eq
	cset	w9, ne
	ubfiz	x23, x9, #5, #32
	ubfiz	x22, x8, #5, #32
	add	x0, x19, x23
	add	x1, x27, x23
	add	x2, x19, x22
	add	x3, x27, x22
	bl	XYcZ_addC
	add	x0, x19, x22
	add	x1, x27, x22
	add	x2, x19, x23
	add	x3, x27, x23
	mov	x4, x20
	bl	XYcZ_add
	subs	w26, w26, #1
	b.hi	.LBB27_9
.LBB27_10:
	ldr	w8, [x25]
	mov	x4, x20
	sxtb	w22, w21
	and	x8, x8, #0x1
	eor	w9, w8, #0x1
	lsl	x26, x8, #5
	ubfiz	x28, x9, #5, #32
	add	x0, x19, x26
	add	x1, x27, x26
	add	x2, x19, x28
	add	x3, x27, x28
	bl	XYcZ_addC
	cmp	w22, #1
	ldr	x22, [sp, #32]                  // 8-byte Folded Reload
	add	x25, x20, #4
	b.lt	.LBB27_16
// %bb.11:
	mov	w9, wzr
	sub	x8, x29, #72
	mov	x10, x21
.LBB27_12:                              // =>This Inner Loop Header: Depth=1
	ldur	w11, [x24, #-32]
	ldr	w12, [x24], #4
	add	w11, w11, w9
	subs	w12, w12, w11
	cset	w13, lo
	cmp	w11, #0
	csel	w9, w9, wzr, eq
	subs	x10, x10, #1
	orr	w9, w9, w13
	str	w12, [x8], #4
	b.ne	.LBB27_12
// %bb.13:
	cbz	w9, .LBB27_16
// %bb.14:
	mov	w10, wzr
	sub	x8, x29, #72
	mov	x9, x25
	mov	x11, x21
.LBB27_15:                              // =>This Inner Loop Header: Depth=1
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
	b.ne	.LBB27_15
.LBB27_16:
	sub	x0, x29, #72
	sub	x1, x29, #72
	add	x2, x27, x26
	mov	x3, x20
	sxtb	w24, w21
	bl	uECC_vli_modMult_fast
	sub	x0, x29, #72
	sub	x1, x29, #72
	mov	x2, x22
	mov	x3, x20
	bl	uECC_vli_modMult_fast
	sub	x0, x29, #72
	sub	x1, x29, #72
	mov	x2, x25
	mov	w3, w21
	bl	uECC_vli_modInv
	ldr	x2, [sp, #24]                   // 8-byte Folded Reload
	sub	x0, x29, #72
	sub	x1, x29, #72
	mov	x3, x20
	bl	uECC_vli_modMult_fast
	sub	x0, x29, #72
	sub	x1, x29, #72
	add	x2, x19, x26
	mov	x3, x20
	bl	uECC_vli_modMult_fast
	add	x0, x19, x28
	add	x1, x27, x28
	add	x2, x19, x26
	add	x3, x27, x26
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
	cmp	w24, #1
	b.lt	.LBB27_18
// %bb.17:
	lsl	x19, x21, #2
	ldr	x20, [sp, #16]                  // 8-byte Folded Reload
	add	x1, sp, #104
	mov	x0, x20
	mov	x2, x19
	bl	memcpy
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	add	x1, sp, #40
	mov	x2, x19
	add	x0, x20, x8, lsl #2
	bl	memcpy
.LBB27_18:
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
	and	x26, x8, #0xff
	b.lt	.LBB28_6
// %bb.1:
	mov	w9, wzr
	sub	x8, x29, #32
	mov	x10, x23
	mov	x11, x19
	mov	x12, x26
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
	cbz	w9, .LBB28_6
// %bb.4:
	mov	w10, wzr
	sub	x8, x29, #32
	mov	x9, x25
	mov	x11, x26
.LBB28_5:                               // =>This Inner Loop Header: Depth=1
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
	b.ne	.LBB28_5
.LBB28_6:
	sub	x0, x29, #32
	sub	x1, x29, #32
	sub	x2, x29, #32
	mov	x3, x21
	sxtb	w27, w26
	sub	x24, x29, #32
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
	b.lt	.LBB28_10
// %bb.7:
	mov	w9, wzr
	sub	x8, x29, #32
	mov	x10, x22
	mov	x11, x20
	mov	x12, x26
.LBB28_8:                               // =>This Inner Loop Header: Depth=1
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
	b.ne	.LBB28_8
// %bb.9:
	cbnz	w9, .LBB28_14
.LBB28_10:
	sub	x8, x26, #1
.LBB28_11:                              // =>This Inner Loop Header: Depth=1
	tbnz	w8, #7, .LBB28_14
// %bb.12:                              //   in Loop: Header=BB28_11 Depth=1
	mov	w9, w8
	ubfiz	x10, x9, #2, #7
	ldr	w9, [x25, x10]
	ldr	w10, [x24, x10]
	cmp	w9, w10
	b.hi	.LBB28_17
// %bb.13:                              //   in Loop: Header=BB28_11 Depth=1
	cmp	w9, w10
	sub	x8, x8, #1
	b.hs	.LBB28_11
.LBB28_14:
	sxtb	w8, w26
	cmp	w8, #1
	b.lt	.LBB28_31
// %bb.15:
	mov	w10, wzr
	sub	x8, x29, #32
	mov	x9, x25
	mov	x11, x26
.LBB28_16:                              // =>This Inner Loop Header: Depth=1
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
	b.ne	.LBB28_16
.LBB28_17:
	sxtb	w8, w26
	cmp	w8, #1
	b.lt	.LBB28_31
// %bb.18:
	lsl	x9, x26, #2
	mov	x8, xzr
	mov	w10, wzr
.LBB28_19:                              // =>This Inner Loop Header: Depth=1
	ldr	w11, [x20, x8]
	ldr	w12, [x22, x8]
	add	w11, w11, w10
	subs	w12, w12, w11
	str	w12, [x22, x8]
	add	x8, x8, #4
	cset	w13, lo
	cmp	w11, #0
	csel	w10, w10, wzr, eq
	cmp	x9, x8
	orr	w10, w10, w13
	b.ne	.LBB28_19
// %bb.20:
	cbz	w10, .LBB28_23
// %bb.21:
	mov	w11, wzr
	mov	x8, x22
	mov	x9, x25
	mov	x10, x26
.LBB28_22:                              // =>This Inner Loop Header: Depth=1
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
	b.ne	.LBB28_22
.LBB28_23:
	mov	x8, xzr
	mov	w9, wzr
	add	x10, sp, #32
.LBB28_24:                              // =>This Inner Loop Header: Depth=1
	lsl	x11, x8, #2
	add	x8, x8, #1
	ldr	w12, [x19, x11]
	ldr	w13, [x23, x11]
	add	w12, w12, w9
	subs	w13, w13, w12
	str	w13, [x10, x11]
	cset	w14, lo
	cmp	w12, #0
	csel	w9, w9, wzr, eq
	cmp	x26, x8
	orr	w9, w9, w14
	b.ne	.LBB28_24
// %bb.25:
	cbz	w9, .LBB28_28
// %bb.26:
	mov	w10, wzr
	add	x8, sp, #32
	mov	x9, x25
	mov	x11, x26
.LBB28_27:                              // =>This Inner Loop Header: Depth=1
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
	b.ne	.LBB28_27
.LBB28_28:
	add	x2, sp, #32
	mov	x0, x20
	mov	x1, x20
	mov	x3, x21
	add	x24, sp, #32
	bl	uECC_vli_modMult_fast
	mov	w8, wzr
	mov	x9, x19
	mov	x10, x23
	mov	x11, x26
.LBB28_29:                              // =>This Inner Loop Header: Depth=1
	ldr	w12, [x9], #4
	ldr	w13, [x10], #4
	add	w14, w12, w8
	add	w13, w14, w13
	cmp	w13, w12
	str	w13, [x24], #4
	cset	w12, lo
	csel	w8, w8, wzr, eq
	subs	x11, x11, #1
	orr	w8, w8, w12
	b.ne	.LBB28_29
// %bb.30:
	cbnz	w8, .LBB28_36
	b	.LBB28_32
.LBB28_31:
	add	x2, sp, #32
	mov	x0, x20
	mov	x1, x20
	mov	x3, x21
	bl	uECC_vli_modMult_fast
.LBB28_32:
	sub	x8, x26, #1
	add	x9, sp, #32
.LBB28_33:                              // =>This Inner Loop Header: Depth=1
	tbnz	w8, #7, .LBB28_36
// %bb.34:                              //   in Loop: Header=BB28_33 Depth=1
	mov	w10, w8
	ubfiz	x11, x10, #2, #7
	ldr	w10, [x25, x11]
	ldr	w11, [x9, x11]
	cmp	w10, w11
	b.hi	.LBB28_39
// %bb.35:                              //   in Loop: Header=BB28_33 Depth=1
	cmp	w10, w11
	sub	x8, x8, #1
	b.hs	.LBB28_33
.LBB28_36:
	sxtb	w8, w26
	cmp	w8, #1
	b.lt	.LBB28_71
// %bb.37:
	mov	w10, wzr
	add	x8, sp, #32
	mov	x9, x25
	mov	x11, x26
.LBB28_38:                              // =>This Inner Loop Header: Depth=1
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
	b.ne	.LBB28_38
.LBB28_39:
	mov	x0, x23
	mov	x1, x22
	mov	x2, x22
	mov	x3, x21
	sxtb	w24, w26
	bl	uECC_vli_modMult_fast
	cmp	w24, #1
	b.lt	.LBB28_72
// %bb.40:
	lsl	x24, x26, #2
	mov	x8, xzr
	mov	w9, wzr
	add	x10, sp, #32
.LBB28_41:                              // =>This Inner Loop Header: Depth=1
	ldr	w11, [x10, x8]
	ldr	w12, [x23, x8]
	add	w11, w11, w9
	subs	w12, w12, w11
	str	w12, [x23, x8]
	add	x8, x8, #4
	cset	w13, lo
	cmp	w11, #0
	csel	w9, w9, wzr, eq
	cmp	x24, x8
	orr	w9, w9, w13
	b.ne	.LBB28_41
// %bb.42:
	cbz	w9, .LBB28_45
// %bb.43:
	mov	w11, wzr
	mov	x8, x23
	mov	x9, x25
	mov	x10, x26
.LBB28_44:                              // =>This Inner Loop Header: Depth=1
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
	b.ne	.LBB28_44
.LBB28_45:
	mov	x8, xzr
	mov	w9, wzr
	mov	x10, sp
.LBB28_46:                              // =>This Inner Loop Header: Depth=1
	lsl	x11, x8, #2
	add	x8, x8, #1
	ldr	w12, [x23, x11]
	ldr	w13, [x19, x11]
	add	w12, w12, w9
	subs	w13, w13, w12
	str	w13, [x10, x11]
	cset	w14, lo
	cmp	w12, #0
	csel	w9, w9, wzr, eq
	cmp	x26, x8
	orr	w9, w9, w14
	b.ne	.LBB28_46
// %bb.47:
	cbz	w9, .LBB28_50
// %bb.48:
	mov	w10, wzr
	mov	x8, sp
	mov	x9, x25
	mov	x11, x26
.LBB28_49:                              // =>This Inner Loop Header: Depth=1
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
	b.ne	.LBB28_49
.LBB28_50:
	mov	x2, sp
	mov	x0, x22
	mov	x1, x22
	mov	x3, x21
	bl	uECC_vli_modMult_fast
	mov	w9, wzr
	mov	x8, x22
	mov	x10, x20
	mov	x11, x26
.LBB28_51:                              // =>This Inner Loop Header: Depth=1
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
	b.ne	.LBB28_51
// %bb.52:
	cbz	w9, .LBB28_55
// %bb.53:
	mov	w10, wzr
	mov	x8, x25
	mov	x9, x26
.LBB28_54:                              // =>This Inner Loop Header: Depth=1
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
	b.ne	.LBB28_54
.LBB28_55:
	mov	x0, sp
	sub	x1, x29, #32
	sub	x2, x29, #32
	mov	x3, x21
	mov	x22, sp
	bl	uECC_vli_modMult_fast
	mov	x8, xzr
	mov	w9, wzr
	add	x10, sp, #32
.LBB28_56:                              // =>This Inner Loop Header: Depth=1
	lsl	x11, x8, #2
	add	x8, x8, #1
	ldr	w12, [x10, x11]
	ldr	w13, [x22, x11]
	add	w12, w12, w9
	subs	w13, w13, w12
	str	w13, [x22, x11]
	cset	w14, lo
	cmp	w12, #0
	csel	w9, w9, wzr, eq
	cmp	x26, x8
	orr	w9, w9, w14
	b.ne	.LBB28_56
// %bb.57:
	cbz	w9, .LBB28_60
// %bb.58:
	mov	w10, wzr
	mov	x8, sp
	mov	x9, x25
	mov	x11, x26
.LBB28_59:                              // =>This Inner Loop Header: Depth=1
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
	b.ne	.LBB28_59
.LBB28_60:
	mov	x8, xzr
	mov	w9, wzr
	mov	x10, sp
	add	x11, sp, #32
.LBB28_61:                              // =>This Inner Loop Header: Depth=1
	lsl	x12, x8, #2
	add	x8, x8, #1
	ldr	w13, [x19, x12]
	ldr	w14, [x10, x12]
	add	w13, w13, w9
	subs	w14, w14, w13
	str	w14, [x11, x12]
	cset	w15, lo
	cmp	w13, #0
	csel	w9, w9, wzr, eq
	cmp	x26, x8
	orr	w9, w9, w15
	b.ne	.LBB28_61
// %bb.62:
	cbz	w9, .LBB28_65
// %bb.63:
	mov	w10, wzr
	add	x8, sp, #32
	mov	x9, x25
	mov	x11, x26
.LBB28_64:                              // =>This Inner Loop Header: Depth=1
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
	b.ne	.LBB28_64
.LBB28_65:
	add	x0, sp, #32
	add	x1, sp, #32
	sub	x2, x29, #32
	mov	x3, x21
	add	x21, sp, #32
	bl	uECC_vli_modMult_fast
	mov	w8, wzr
	mov	x9, x20
	mov	x10, x26
.LBB28_66:                              // =>This Inner Loop Header: Depth=1
	ldr	w11, [x9]
	ldr	w12, [x21], #4
	add	w11, w11, w8
	subs	w12, w12, w11
	cset	w13, lo
	cmp	w11, #0
	csel	w8, w8, wzr, eq
	subs	x10, x10, #1
	orr	w8, w8, w13
	str	w12, [x9], #4
	b.ne	.LBB28_66
// %bb.67:
	cbz	w8, .LBB28_70
// %bb.68:
	mov	w8, wzr
.LBB28_69:                              // =>This Inner Loop Header: Depth=1
	ldr	w9, [x20]
	ldr	w10, [x25], #4
	add	w11, w9, w8
	add	w10, w11, w10
	cmp	w10, w9
	str	w10, [x20], #4
	cset	w9, lo
	csel	w8, w8, wzr, eq
	subs	x26, x26, #1
	orr	w8, w8, w9
	b.ne	.LBB28_69
.LBB28_70:
	mov	x1, sp
	mov	x0, x19
	mov	x2, x24
	bl	memcpy
	b	.LBB28_73
.LBB28_71:
	mov	x0, x23
	mov	x1, x22
	mov	x2, x22
	mov	x3, x21
	bl	uECC_vli_modMult_fast
.LBB28_72:
	mov	x2, sp
	mov	x0, x22
	mov	x1, x22
	mov	x3, x21
	bl	uECC_vli_modMult_fast
	mov	x0, sp
	sub	x1, x29, #32
	sub	x2, x29, #32
	mov	x3, x21
	bl	uECC_vli_modMult_fast
	add	x0, sp, #32
	add	x1, sp, #32
	sub	x2, x29, #32
	mov	x3, x21
	bl	uECC_vli_modMult_fast
.LBB28_73:
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
	b.lt	.LBB30_13
// %bb.11:
	and	w9, w8, #0xff
	and	x8, x8, #0xff
	cmp	w9, #8
	b.hs	.LBB30_14
// %bb.12:
	mov	x9, xzr
	mov	w10, wzr
	b	.LBB30_17
.LBB30_13:
	mov	w0, wzr
	b	.LBB30_20
.LBB30_14:
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	and	x9, x8, #0x78
	add	x10, x19, #16
	mov	x11, x9
.LBB30_15:                              // =>This Inner Loop Header: Depth=1
	ldp	q2, q3, [x10, #-16]
	subs	x11, x11, #8
	add	x10, x10, #32
	orr	v0.16b, v2.16b, v0.16b
	orr	v1.16b, v3.16b, v1.16b
	b.ne	.LBB30_15
// %bb.16:
	orr	v0.16b, v1.16b, v0.16b
	cmp	x9, x8
	ext	v1.16b, v0.16b, v0.16b, #8
	orr	v0.8b, v0.8b, v1.8b
	fmov	x10, d0
	lsr	x11, x10, #32
	orr	w10, w10, w11
	b.eq	.LBB30_19
.LBB30_17:
	add	x11, x19, x9, lsl #2
	sub	x8, x8, x9
.LBB30_18:                              // =>This Inner Loop Header: Depth=1
	ldr	w9, [x11], #4
	subs	x8, x8, #1
	orr	w10, w9, w10
	b.ne	.LBB30_18
.LBB30_19:
	cmp	w10, #0
	cset	w0, ne
.LBB30_20:
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
	sub	sp, sp, #144
	.cfi_def_cfa_offset 144
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	stp	x28, x27, [sp, #64]             // 16-byte Folded Spill
	stp	x26, x25, [sp, #80]             // 16-byte Folded Spill
	stp	x24, x23, [sp, #96]             // 16-byte Folded Spill
	stp	x22, x21, [sp, #112]            // 16-byte Folded Spill
	stp	x20, x19, [sp, #128]            // 16-byte Folded Spill
	add	x29, sp, #48
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
	sub	w8, w2, #1
	mov	w9, w2
	mov	w19, w2
	sxtb	w8, w8
	and	x23, x9, #0xff
	mov	x20, x1
	mov	x21, x0
	add	x9, x23, #1
	cmn	w8, #1
	csinv	w8, w8, wzr, lt
	add	w8, w8, #1
.LBB33_1:                               // =>This Inner Loop Header: Depth=1
	sub	x10, x9, #2
	tbnz	w10, #7, .LBB33_4
// %bb.2:                               //   in Loop: Header=BB33_1 Depth=1
	and	x10, x10, #0x7f
	sub	x9, x9, #1
	ldr	w10, [x20, x10, lsl #2]
	cbz	w10, .LBB33_1
// %bb.3:
	mov	w8, w9
.LBB33_4:
	tst	w8, #0xff
	b.eq	.LBB33_8
// %bb.5:
	sxtb	w8, w8
	sub	w8, w8, #1
	ldr	w9, [x20, w8, sxtw #2]
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
	adrp	x9, g_rng_function
	ldr	x9, [x9, :lo12:g_rng_function]
	cbz	x9, .LBB33_34
// %bb.12:
	sbfiz	w9, w19, #5, #8
	sxtb	x10, w19
	sbfiz	w22, w19, #2, #8
	mov	w25, wzr
	sub	x26, x21, #4
	and	x27, x23, #0x7c
	sub	w8, w9, w8
	mov	w9, #-1                         // =0xffffffff
	lsl	x24, x10, #2
	lsr	w11, w9, w8
	sxtb	w8, w19
	add	x28, sp, #16
	stp	w8, w11, [sp, #8]               // 8-byte Folded Spill
	b	.LBB33_15
.LBB33_13:                              //   in Loop: Header=BB33_15 Depth=1
	cmp	w9, #0
	cset	w9, eq
	cmp	w8, #0
	mov	w8, #-2                         // =0xfffffffe
	csel	w8, wzr, w8, eq
	orr	w8, w8, w9
	cbz	w8, .LBB33_36
.LBB33_14:                              //   in Loop: Header=BB33_15 Depth=1
	add	w25, w25, #1
	cmp	w25, #64
	b.eq	.LBB33_34
.LBB33_15:                              // =>This Loop Header: Depth=1
                                        //     Child Loop BB33_20 Depth 2
                                        //     Child Loop BB33_23 Depth 2
                                        //     Child Loop BB33_26 Depth 2
                                        //     Child Loop BB33_30 Depth 2
                                        //     Child Loop BB33_33 Depth 2
	adrp	x8, g_rng_function
	mov	x0, x21
	mov	w1, w22
	ldr	x8, [x8, :lo12:g_rng_function]
	blr	x8
	cbz	w0, .LBB33_35
// %bb.16:                              //   in Loop: Header=BB33_15 Depth=1
	ldp	w10, w9, [sp, #8]               // 8-byte Folded Reload
	ldr	w8, [x26, x24]
	cmp	w10, #1
	and	w8, w8, w9
	str	w8, [x26, x24]
	b.lt	.LBB33_14
// %bb.17:                              //   in Loop: Header=BB33_15 Depth=1
	and	w8, w19, #0xff
	cmp	w8, #4
	b.hs	.LBB33_19
// %bb.18:                              //   in Loop: Header=BB33_15 Depth=1
	mov	x10, xzr
	mov	w8, wzr
	b	.LBB33_22
.LBB33_19:                              //   in Loop: Header=BB33_15 Depth=1
	movi	v0.2d, #0000000000000000
	mov	x8, x27
	mov	x9, x21
.LBB33_20:                              //   Parent Loop BB33_15 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	q1, [x9], #16
	subs	x8, x8, #4
	orr	v0.16b, v1.16b, v0.16b
	b.ne	.LBB33_20
// %bb.21:                              //   in Loop: Header=BB33_15 Depth=1
	ext	v1.16b, v0.16b, v0.16b, #8
	cmp	x27, x23
	mov	x10, x27
	orr	v0.8b, v0.8b, v1.8b
	fmov	x8, d0
	lsr	x9, x8, #32
	orr	w8, w8, w9
	b.eq	.LBB33_24
.LBB33_22:                              //   in Loop: Header=BB33_15 Depth=1
	add	x9, x21, x10, lsl #2
	sub	x10, x23, x10
.LBB33_23:                              //   Parent Loop BB33_15 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w11, [x9], #4
	subs	x10, x10, #1
	orr	w8, w11, w8
	b.ne	.LBB33_23
.LBB33_24:                              //   in Loop: Header=BB33_15 Depth=1
	cbz	w8, .LBB33_14
// %bb.25:                              //   in Loop: Header=BB33_15 Depth=1
	mov	x9, xzr
	mov	w8, wzr
.LBB33_26:                              //   Parent Loop BB33_15 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	lsl	x10, x9, #2
	add	x9, x9, #1
	ldr	w11, [x21, x10]
	ldr	w12, [x20, x10]
	add	w11, w11, w8
	subs	w12, w12, w11
	str	w12, [x28, x10]
	cset	w13, lo
	cmp	w11, #0
	csel	w8, w8, wzr, eq
	cmp	x23, x9
	orr	w8, w8, w13
	b.ne	.LBB33_26
// %bb.27:                              //   in Loop: Header=BB33_15 Depth=1
	and	w9, w19, #0xff
	cmp	w9, #4
	b.hs	.LBB33_29
// %bb.28:                              //   in Loop: Header=BB33_15 Depth=1
	mov	x11, xzr
	mov	w9, wzr
	b	.LBB33_32
.LBB33_29:                              //   in Loop: Header=BB33_15 Depth=1
	movi	v0.2d, #0000000000000000
	add	x9, sp, #16
	mov	x10, x27
.LBB33_30:                              //   Parent Loop BB33_15 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	q1, [x9], #16
	subs	x10, x10, #4
	orr	v0.16b, v1.16b, v0.16b
	b.ne	.LBB33_30
// %bb.31:                              //   in Loop: Header=BB33_15 Depth=1
	ext	v1.16b, v0.16b, v0.16b, #8
	cmp	x27, x23
	mov	x11, x27
	orr	v0.8b, v0.8b, v1.8b
	fmov	x9, d0
	lsr	x10, x9, #32
	orr	w9, w9, w10
	b.eq	.LBB33_13
.LBB33_32:                              //   in Loop: Header=BB33_15 Depth=1
	add	x10, x28, x11, lsl #2
	sub	x11, x23, x11
.LBB33_33:                              //   Parent Loop BB33_15 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w12, [x10], #4
	subs	x11, x11, #1
	orr	w9, w12, w9
	b.ne	.LBB33_33
	b	.LBB33_13
.LBB33_34:
	mov	w0, wzr
.LBB33_35:
	.cfi_def_cfa wsp, 144
	ldp	x20, x19, [sp, #128]            // 16-byte Folded Reload
	ldp	x22, x21, [sp, #112]            // 16-byte Folded Reload
	ldp	x24, x23, [sp, #96]             // 16-byte Folded Reload
	ldp	x26, x25, [sp, #80]             // 16-byte Folded Reload
	ldp	x28, x27, [sp, #64]             // 16-byte Folded Reload
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
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
	.cfi_restore w27
	.cfi_restore w28
	.cfi_restore w30
	.cfi_restore w29
	ret
.LBB33_36:
	.cfi_restore_state
	mov	w0, #1                          // =0x1
	b	.LBB33_35
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
	str	x21, [sp, #80]                  // 8-byte Folded Spill
	stp	x20, x19, [sp, #96]             // 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 48
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -32
	.cfi_offset w30, -40
	.cfi_offset w29, -48
	.cfi_remember_state
	ldrb	w21, [x1]
	lsl	w8, w21, #1
	sxtb	w9, w8
	cmp	w9, #1
	b.lt	.LBB34_13
// %bb.1:
	and	w9, w8, #0xff
	and	x8, x8, #0xff
	cmp	w9, #8
	b.hs	.LBB34_3
// %bb.2:
	mov	x9, xzr
	mov	w10, wzr
	b	.LBB34_6
.LBB34_3:
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	and	x9, x8, #0x78
	add	x10, x0, #16
	mov	x11, x9
.LBB34_4:                               // =>This Inner Loop Header: Depth=1
	ldp	q2, q3, [x10, #-16]
	subs	x11, x11, #8
	add	x10, x10, #32
	orr	v0.16b, v2.16b, v0.16b
	orr	v1.16b, v3.16b, v1.16b
	b.ne	.LBB34_4
// %bb.5:
	orr	v0.16b, v1.16b, v0.16b
	cmp	x9, x8
	ext	v1.16b, v0.16b, v0.16b, #8
	orr	v0.8b, v0.8b, v1.8b
	fmov	x10, d0
	lsr	x11, x10, #32
	orr	w10, w10, w11
	b.eq	.LBB34_8
.LBB34_6:
	add	x11, x0, x9, lsl #2
	sub	x8, x8, x9
.LBB34_7:                               // =>This Inner Loop Header: Depth=1
	ldr	w9, [x11], #4
	subs	x8, x8, #1
	orr	w10, w9, w10
	b.ne	.LBB34_7
.LBB34_8:
	cbz	w10, .LBB34_13
// %bb.9:
	sxtb	x10, w21
	sub	x8, x21, #1
	add	x9, x1, #4
	mov	x11, x8
.LBB34_10:                              // =>This Inner Loop Header: Depth=1
	tbnz	w11, #7, .LBB34_18
// %bb.11:                              //   in Loop: Header=BB34_10 Depth=1
	mov	w12, w11
	ubfiz	x13, x12, #2, #7
	ldr	w12, [x9, x13]
	ldr	w13, [x0, x13]
	cmp	w12, w13
	b.hi	.LBB34_14
// %bb.12:                              //   in Loop: Header=BB34_10 Depth=1
	cmp	w12, w13
	sub	x11, x11, #1
	b.hs	.LBB34_10
	b	.LBB34_18
.LBB34_13:
	mov	w0, #-1                         // =0xffffffff
	b	.LBB34_19
.LBB34_14:
	add	x2, x0, x10, lsl #2
.LBB34_15:                              // =>This Inner Loop Header: Depth=1
	tbnz	w8, #7, .LBB34_18
// %bb.16:                              //   in Loop: Header=BB34_15 Depth=1
	mov	w10, w8
	ubfiz	x11, x10, #2, #7
	ldr	w10, [x9, x11]
	ldr	w11, [x2, x11]
	cmp	w10, w11
	b.hi	.LBB34_20
// %bb.17:                              //   in Loop: Header=BB34_15 Depth=1
	cmp	w10, w11
	sub	x8, x8, #1
	b.hs	.LBB34_15
.LBB34_18:
	mov	w0, #-2                         // =0xfffffffe
.LBB34_19:
	.cfi_def_cfa wsp, 112
	ldp	x20, x19, [sp, #96]             // 16-byte Folded Reload
	ldr	x21, [sp, #80]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #112
	.cfi_def_cfa_offset 0
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w30
	.cfi_restore w29
	ret
.LBB34_20:
	.cfi_restore_state
	mov	x20, x1
	mov	x19, x0
	add	x0, sp, #32
	mov	x1, x2
	mov	x3, x20
	bl	uECC_vli_modMult_fast
	ldr	x8, [x20, #176]
	mov	x0, sp
	mov	x1, x19
	mov	x2, x20
	blr	x8
	sub	w8, w21, #1
	tbnz	w8, #7, .LBB34_30
// %bb.21:
	and	w9, w8, #0xff
	and	x8, x8, #0xff
	cmp	w9, #7
	b.hs	.LBB34_23
// %bb.22:
	mov	w9, wzr
	b	.LBB34_26
.LBB34_23:
	lsl	x11, x8, #2
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	add	x9, x8, #1
	add	x13, sp, #32
	and	x10, x9, #0xf8
	sub	x12, x11, #12
	mov	x11, sp
	sub	x8, x8, x10
	add	x11, x11, x12
	add	x12, x13, x12
	mov	x13, x10
.LBB34_24:                              // =>This Inner Loop Header: Depth=1
	ldp	q3, q2, [x12, #-16]
	sub	x13, x13, #8
	ldp	q5, q4, [x11, #-16]
	sub	x11, x11, #32
	sub	x12, x12, #32
	eor	v2.16b, v4.16b, v2.16b
	eor	v3.16b, v5.16b, v3.16b
	rev64	v2.4s, v2.4s
	rev64	v3.4s, v3.4s
	ext	v2.16b, v2.16b, v2.16b, #8
	ext	v3.16b, v3.16b, v3.16b, #8
	orr	v0.16b, v2.16b, v0.16b
	orr	v1.16b, v3.16b, v1.16b
	cbnz	x13, .LBB34_24
// %bb.25:
	orr	v0.16b, v1.16b, v0.16b
	cmp	x9, x10
	ext	v1.16b, v0.16b, v0.16b, #8
	orr	v0.8b, v0.8b, v1.8b
	fmov	x11, d0
	lsr	x12, x11, #32
	orr	w9, w11, w12
	b.eq	.LBB34_28
.LBB34_26:
	add	x10, sp, #32
	mov	x11, sp
.LBB34_27:                              // =>This Inner Loop Header: Depth=1
	lsl	x12, x8, #2
	sub	x8, x8, #1
	cmn	x8, #1
	ldr	w13, [x10, x12]
	ldr	w12, [x11, x12]
	eor	w12, w12, w13
	orr	w9, w12, w9
	b.ne	.LBB34_27
.LBB34_28:
	cbz	w9, .LBB34_30
// %bb.29:
	mov	w0, #-3                         // =0xfffffffd
	b	.LBB34_19
.LBB34_30:
	mov	w0, wzr
	b	.LBB34_19
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
	sub	sp, sp, #160
	.cfi_def_cfa_offset 160
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	str	x27, [sp, #80]                  // 8-byte Folded Spill
	stp	x26, x25, [sp, #96]             // 16-byte Folded Spill
	stp	x24, x23, [sp, #112]            // 16-byte Folded Spill
	stp	x22, x21, [sp, #128]            // 16-byte Folded Spill
	stp	x20, x19, [sp, #144]            // 16-byte Folded Spill
	add	x29, sp, #64
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
	ldrsb	w23, [x1, #1]
	mov	x19, x1
	mov	x20, x0
	add	w8, w23, #3
	sxtw	x24, w23
	and	x25, x23, #0xff
	and	w9, w8, #0xc000
	add	w8, w8, w9, lsr #14
	asr	w27, w8, #2
	ubfiz	w21, w27, #2, #8
	cmp	w27, #1
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
	ldrsb	x8, [x19]
	mov	x9, sp
	cmp	w27, #1
	add	x22, x9, x8, lsl #2
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
	ldr	w8, [sp, #60]
	ldr	w9, [x19, #128]
	cmp	w8, w9
	b.ne	.LBB35_27
// %bb.11:
	ldr	w8, [sp, #56]
	ldr	w9, [x19, #124]
	cmp	w8, w9
	b.ne	.LBB35_27
// %bb.12:
	ldr	w8, [sp, #52]
	ldr	w9, [x19, #120]
	cmp	w8, w9
	b.ne	.LBB35_27
// %bb.13:
	ldr	w8, [sp, #48]
	ldr	w9, [x19, #116]
	cmp	w8, w9
	b.ne	.LBB35_27
// %bb.14:
	ldr	w8, [sp, #44]
	ldr	w9, [x19, #112]
	cmp	w8, w9
	b.ne	.LBB35_27
// %bb.15:
	ldr	w8, [sp, #40]
	ldr	w9, [x19, #108]
	cmp	w8, w9
	b.ne	.LBB35_27
// %bb.16:
	ldr	w8, [sp, #36]
	ldr	w9, [x19, #104]
	cmp	w8, w9
	b.ne	.LBB35_27
// %bb.17:
	ldr	w8, [sp, #32]
	ldr	w9, [x19, #100]
	cmp	w8, w9
	b.ne	.LBB35_27
// %bb.18:
	ldr	w8, [sp, #28]
	ldr	w9, [x19, #96]
	cmp	w8, w9
	b.ne	.LBB35_27
// %bb.19:
	ldr	w8, [sp, #24]
	ldr	w9, [x19, #92]
	cmp	w8, w9
	b.ne	.LBB35_27
// %bb.20:
	ldr	w8, [sp, #20]
	ldr	w9, [x19, #88]
	cmp	w8, w9
	b.ne	.LBB35_27
// %bb.21:
	ldr	w8, [sp, #16]
	ldr	w9, [x19, #84]
	cmp	w8, w9
	b.ne	.LBB35_27
// %bb.22:
	ldr	w8, [sp, #12]
	ldr	w9, [x19, #80]
	cmp	w8, w9
	b.ne	.LBB35_27
// %bb.23:
	ldr	w8, [sp, #8]
	ldr	w9, [x19, #76]
	cmp	w8, w9
	b.ne	.LBB35_27
// %bb.24:
	ldr	w8, [sp, #4]
	ldr	w9, [x19, #72]
	cmp	w8, w9
	b.ne	.LBB35_27
// %bb.25:
	ldr	w8, [sp]
	ldr	w9, [x19, #68]
	cmp	w8, w9
	b.ne	.LBB35_27
// %bb.26:
	mov	w0, #-4                         // =0xfffffffc
	b	.LBB35_28
.LBB35_27:
	mov	x0, sp
	mov	x1, x19
	bl	uECC_valid_point
.LBB35_28:
	.cfi_def_cfa wsp, 160
	ldp	x20, x19, [sp, #144]            // 16-byte Folded Reload
	ldr	x27, [sp, #80]                  // 8-byte Folded Reload
	ldp	x22, x21, [sp, #128]            // 16-byte Folded Reload
	ldp	x24, x23, [sp, #112]            // 16-byte Folded Reload
	ldp	x26, x25, [sp, #96]             // 16-byte Folded Reload
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #160
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
	ldrsh	w22, [x2, #2]
	mov	x20, x2
	mov	x19, x1
	mov	x21, x0
	adds	w8, w22, #7
	add	w9, w22, #14
	csel	w8, w9, w8, lt
	asr	w23, w8, #3
	add	w8, w23, #3
	ubfx	w9, w8, #29, #2
	add	w8, w8, w9
	sbfx	w9, w8, #2, #8
	cmp	w9, #1
	b.lt	.LBB36_2
// %bb.1:
	asr	w8, w8, #2
	sub	x0, x29, #32
	mov	w1, wzr
	ubfiz	x2, x8, #2, #8
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
	b.lt	.LBB36_18
// %bb.6:
	asr	w8, w8, #5
	and	w8, w8, #0xff
	cmp	w8, #8
	b.hs	.LBB36_8
// %bb.7:
	mov	x9, xzr
	mov	w10, wzr
	b	.LBB36_11
.LBB36_8:
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	and	x9, x8, #0xf8
	sub	x10, x29, #32
	mov	x11, x9
	add	x10, x10, #16
.LBB36_9:                               // =>This Inner Loop Header: Depth=1
	ldp	q2, q3, [x10, #-16]
	subs	x11, x11, #8
	add	x10, x10, #32
	orr	v0.16b, v2.16b, v0.16b
	orr	v1.16b, v3.16b, v1.16b
	b.ne	.LBB36_9
// %bb.10:
	orr	v0.16b, v1.16b, v0.16b
	cmp	x9, x8
	ext	v1.16b, v0.16b, v0.16b, #8
	orr	v0.8b, v0.8b, v1.8b
	fmov	x10, d0
	lsr	x11, x10, #32
	orr	w10, w10, w11
	b.eq	.LBB36_13
.LBB36_11:
	sub	x11, x29, #32
	add	x11, x11, x9, lsl #2
	sub	x9, x8, x9
.LBB36_12:                              // =>This Inner Loop Header: Depth=1
	ldr	w12, [x11], #4
	subs	x9, x9, #1
	orr	w10, w12, w10
	b.ne	.LBB36_12
.LBB36_13:
	cbz	w10, .LBB36_18
// %bb.14:
	mov	x10, xzr
	mov	w9, wzr
	sub	x11, x29, #32
	mov	x12, sp
.LBB36_15:                              // =>This Inner Loop Header: Depth=1
	lsl	x13, x10, #2
	add	x10, x10, #1
	add	x14, x20, x13
	ldr	w15, [x11, x13]
	ldr	w14, [x14, #36]
	add	w15, w15, w9
	subs	w14, w14, w15
	str	w14, [x12, x13]
	cset	w16, lo
	cmp	w15, #0
	csel	w9, w9, wzr, eq
	cmp	x8, x10
	orr	w9, w9, w16
	b.ne	.LBB36_15
// %bb.16:
	cmp	w8, #8
	b.hs	.LBB36_19
// %bb.17:
	mov	x10, xzr
	mov	w11, wzr
	b	.LBB36_22
.LBB36_18:
	mov	w0, wzr
	b	.LBB36_33
.LBB36_19:
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	and	x10, x8, #0xf8
	mov	x11, sp
	mov	x12, x10
	add	x11, x11, #16
.LBB36_20:                              // =>This Inner Loop Header: Depth=1
	ldp	q2, q3, [x11, #-16]
	subs	x12, x12, #8
	add	x11, x11, #32
	orr	v0.16b, v2.16b, v0.16b
	orr	v1.16b, v3.16b, v1.16b
	b.ne	.LBB36_20
// %bb.21:
	orr	v0.16b, v1.16b, v0.16b
	cmp	x10, x8
	ext	v1.16b, v0.16b, v0.16b, #8
	orr	v0.8b, v0.8b, v1.8b
	fmov	x11, d0
	lsr	x12, x11, #32
	orr	w11, w11, w12
	b.eq	.LBB36_24
.LBB36_22:
	mov	x12, sp
	sub	x8, x8, x10
	add	x12, x12, x10, lsl #2
.LBB36_23:                              // =>This Inner Loop Header: Depth=1
	ldr	w10, [x12], #4
	subs	x8, x8, #1
	orr	w11, w10, w11
	b.ne	.LBB36_23
.LBB36_24:
	cmp	w11, #0
	mov	w0, wzr
	cset	w8, eq
	cmp	w9, #0
	mov	w9, #-2                         // =0xfffffffe
	csel	w9, wzr, w9, eq
	orr	w8, w9, w8
	cbnz	w8, .LBB36_33
// %bb.25:
	mov	x0, sp
	sub	x1, x29, #32
	mov	x2, x20
	bl	EccPoint_compute_public_key
	cbz	w0, .LBB36_33
// %bb.26:
	ldrsb	w9, [x20, #1]
	subs	w8, w9, #1
	b.lt	.LBB36_32
// %bb.27:
	lsl	w10, w9, #3
	and	x9, x9, #0xff
	mov	x11, sp
	mov	x12, x19
	sub	w10, w10, #8
.LBB36_28:                              // =>This Inner Loop Header: Depth=1
	and	w13, w8, #0xfffffffc
	and	w14, w10, #0x18
	sub	x9, x9, #1
	ldr	w13, [x11, w13, uxtw]
	sub	w10, w10, #8
	sub	w8, w8, #1
	lsr	w13, w13, w14
	strb	w13, [x12], #1
	cbnz	x9, .LBB36_28
// %bb.29:
	ldrsb	x12, [x20, #1]
	cmp	x12, #1
	b.lt	.LBB36_32
// %bb.30:
	ldrsb	x9, [x20]
	mov	x10, sp
	lsl	w11, w12, #3
	add	x8, x19, x12
	add	x9, x10, x9, lsl #2
	mov	w10, w12
	sub	w11, w11, #8
	and	x10, x10, #0xff
	sub	w12, w12, #1
.LBB36_31:                              // =>This Inner Loop Header: Depth=1
	and	w13, w12, #0xfffffffc
	and	w14, w11, #0x18
	sub	x10, x10, #1
	ldr	w13, [x9, w13, uxtw]
	sub	w11, w11, #8
	sub	w12, w12, #1
	lsr	w13, w13, w14
	strb	w13, [x8], #1
	cbnz	x10, .LBB36_31
.LBB36_32:
	mov	w0, #1                          // =0x1
.LBB36_33:
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
