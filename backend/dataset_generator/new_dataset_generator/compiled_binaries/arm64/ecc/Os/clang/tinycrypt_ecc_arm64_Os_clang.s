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
	b.eq	.LBB7_8
// %bb.5:
	sxtb	w8, w8
	sub	w8, w8, #1
	ldr	w9, [x0, w8, sxtw #2]
	cbz	w9, .LBB7_9
// %bb.6:
	mov	w10, wzr
.LBB7_7:                                // =>This Inner Loop Header: Depth=1
	lsr	w11, w9, #1
	cmp	w9, #1
	add	w10, w10, #1
	mov	w9, w11
	b.hi	.LBB7_7
	b	.LBB7_10
.LBB7_8:
	mov	w0, wzr
	ret
.LBB7_9:
	mov	w10, wzr
.LBB7_10:
	add	w0, w10, w8, lsl #5
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
	sub	w8, w2, #1
	tbnz	w8, #7, .LBB10_4
// %bb.1:
	sxtb	w8, w8
	mov	w9, wzr
	and	x8, x8, #0xff
	lsl	x8, x8, #2
.LBB10_2:                               // =>This Inner Loop Header: Depth=1
	ldr	w10, [x0, x8]
	ldr	w11, [x1, x8]
	sub	x8, x8, #4
	cmn	x8, #4
	eor	w10, w11, w10
	orr	w9, w10, w9
	b.ne	.LBB10_2
// %bb.3:
	cmp	w9, #0
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
	b.lt	.LBB12_3
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
	b	.LBB12_4
.LBB12_3:
	mov	w8, wzr
.LBB12_4:
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
	b.lt	.LBB13_6
// %bb.1:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	and	x8, x2, #0xff
	mov	w9, wzr
	mov	x10, sp
	mov	x11, x8
.LBB13_2:                               // =>This Inner Loop Header: Depth=1
	ldr	w12, [x1], #4
	ldr	w13, [x0], #4
	add	w12, w12, w9
	subs	w13, w13, w12
	cset	w14, lo
	cmp	w12, #0
	csel	w9, w9, wzr, eq
	subs	x11, x11, #1
	orr	w9, w9, w14
	str	w13, [x10], #4
	b.ne	.LBB13_2
// %bb.3:
	mov	w10, wzr
	mov	x11, sp
.LBB13_4:                               // =>This Inner Loop Header: Depth=1
	ldr	w12, [x11], #4
	subs	x8, x8, #1
	orr	w10, w12, w10
	b.ne	.LBB13_4
// %bb.5:
	cmp	w10, #0
	cset	w8, eq
	cmp	w9, #0
	mov	w9, #-2                         // =0xfffffffe
	csel	w9, wzr, w9, eq
	orr	w8, w9, w8
	eor	w0, w8, #0x1
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	ret
.LBB13_6:
	mov	w0, wzr
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
	sub	sp, sp, #224
	.cfi_def_cfa_offset 224
	stp	x29, x30, [sp, #144]            // 16-byte Folded Spill
	str	x25, [sp, #160]                 // 8-byte Folded Spill
	stp	x24, x23, [sp, #176]            // 16-byte Folded Spill
	stp	x22, x21, [sp, #192]            // 16-byte Folded Spill
	stp	x20, x19, [sp, #208]            // 16-byte Folded Spill
	add	x29, sp, #144
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
	add	x8, sp, #16
	mov	x19, x0
	mov	x0, x2
	stp	x8, x1, [sp]
	mov	w1, w3
	mov	w20, w3
	mov	x21, x2
	bl	uECC_vli_numBits
	sbfiz	w8, w20, #6, #8
	sub	w8, w8, w0
	sxth	w22, w8
	ubfx	w9, w22, #26, #5
	add	w9, w8, w9
	sxth	w10, w9
	and	w11, w9, #0xffe0
	sbfx	w9, w9, #5, #11
	sub	w8, w8, w11
	sbfx	w10, w10, #5, #8
	sxth	w24, w8
	and	w25, w9, #0xffff
	cmp	w10, #1
	b.lt	.LBB16_2
// %bb.1:
	ubfiz	w2, w25, #2, #8
	sub	x0, x29, #64
	mov	w1, wzr
	bl	memset
.LBB16_2:
	sxtb	w23, w20
	cmp	w24, #1
	b.lt	.LBB16_6
// %bb.3:
	tst	w20, #0xff
	b.eq	.LBB16_8
// %bb.4:
	sxtb	w8, w25
	mov	w10, #32                        // =0x20
	mov	w9, wzr
	sub	w10, w10, w24
	sub	x11, x29, #64
	mov	x12, x23
.LBB16_5:                               // =>This Inner Loop Header: Depth=1
	ldr	w13, [x21], #4
	subs	x12, x12, #1
	lsl	w14, w13, w24
	orr	w14, w14, w9
	lsr	w9, w13, w10
	str	w14, [x11, w8, uxtw #2]
	add	w8, w8, #1
	b.ne	.LBB16_5
	b	.LBB16_8
.LBB16_6:
	cmp	w23, #1
	b.lt	.LBB16_8
// %bb.7:
	sub	x8, x29, #64
	and	x9, x20, #0xff
	mov	x1, x21
	add	x0, x8, w25, sxtb #2
	lsl	x2, x9, #2
	bl	memcpy
.LBB16_8:
	tbnz	w22, #31, .LBB16_22
// %bb.9:
	sub	x8, x29, #64
	mov	w12, w20
	sbfiz	w11, w20, #1, #8
	add	x9, x8, w20, uxtb #2
	sxtb	x10, w12
	mov	w14, #1                         // =0x1
	mov	x15, sp
	add	x12, x9, w12, uxtb #2
	sub	x13, x10, #1
.LBB16_10:                              // =>This Loop Header: Depth=1
                                        //     Child Loop BB16_12 Depth 2
                                        //     Child Loop BB16_15 Depth 2
                                        //     Child Loop BB16_17 Depth 2
	cmp	w23, #0
	b.le	.LBB16_18
// %bb.11:                              //   in Loop: Header=BB16_10 Depth=1
	eor	w18, w14, #0x1
	ldr	x17, [x15, w14, uxtw #3]
	mov	w16, wzr
	ldr	x18, [x15, w18, uxtw #3]
	mov	w0, wzr
.LBB16_12:                              //   Parent Loop BB16_10 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	sxtb	x1, w16
	add	w16, w16, #1
	ldr	w2, [x8, x1, lsl #2]
	ldr	w3, [x17, x1, lsl #2]
	add	w2, w2, w0
	subs	w3, w3, w2
	str	w3, [x18, x1, lsl #2]
	cset	w4, lo
	cmp	w2, #0
	csel	w0, w0, w4, eq
	cmp	w11, w16, sxtb
	b.gt	.LBB16_12
// %bb.13:                              //   in Loop: Header=BB16_10 Depth=1
	cmp	w14, w0
	cset	w14, eq
	cmp	w23, #1
	b.lt	.LBB16_19
// %bb.14:                              //   in Loop: Header=BB16_10 Depth=1
	mov	w16, wzr
	mov	x17, x9
.LBB16_15:                              //   Parent Loop BB16_10 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w18, [x17, #-4]!
	cmp	x17, x8
	orr	w0, w16, w18, lsr #1
	lsl	w16, w18, #31
	str	w0, [x17]
	b.hi	.LBB16_15
// %bb.16:                              //   in Loop: Header=BB16_10 Depth=1
	ldr	w17, [x9]
	ldr	w18, [x8, x13, lsl #2]
	mov	w16, wzr
	orr	w17, w18, w17, lsl #31
	str	w17, [x8, x13, lsl #2]
	mov	x17, x12
.LBB16_17:                              //   Parent Loop BB16_10 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w18, [x17, #-4]!
	cmp	x17, x9
	orr	w0, w16, w18, lsr #1
	lsl	w16, w18, #31
	str	w0, [x17]
	b.hi	.LBB16_17
	b	.LBB16_20
.LBB16_18:                              //   in Loop: Header=BB16_10 Depth=1
	cmp	w14, #0
	cset	w14, eq
.LBB16_19:                              //   in Loop: Header=BB16_10 Depth=1
	ldr	w16, [x8, x10, lsl #2]
	ldr	w17, [x8, x13, lsl #2]
	orr	w16, w17, w16, lsl #31
	str	w16, [x8, x13, lsl #2]
.LBB16_20:                              //   in Loop: Header=BB16_10 Depth=1
	sxth	w16, w22
	sub	w22, w22, #1
	cmp	w16, #0
	b.gt	.LBB16_10
// %bb.21:
	mov	w8, w14
	b	.LBB16_23
.LBB16_22:
	mov	w8, #1                          // =0x1
.LBB16_23:
	cmp	w23, #1
	b.lt	.LBB16_26
// %bb.24:
	mov	x9, sp
                                        // kill: def $w20 killed $w20 killed $x20 def $x20
	ldr	x8, [x9, x8, lsl #3]
	and	x9, x20, #0xff
.LBB16_25:                              // =>This Inner Loop Header: Depth=1
	ldr	w10, [x8], #4
	subs	x9, x9, #1
	str	w10, [x19], #4
	b.ne	.LBB16_25
.LBB16_26:
	.cfi_def_cfa wsp, 224
	ldp	x20, x19, [sp, #208]            // 16-byte Folded Reload
	ldr	x25, [sp, #160]                 // 8-byte Folded Reload
	ldp	x22, x21, [sp, #192]            // 16-byte Folded Reload
	ldp	x24, x23, [sp, #176]            // 16-byte Folded Reload
	ldp	x29, x30, [sp, #144]            // 16-byte Folded Reload
	add	sp, sp, #224
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
	mov	x20, x3
	mov	x21, x0
	mov	x0, sp
	mov	w3, w4
	mov	w19, w4
	bl	uECC_vli_mult
	mov	x1, sp
	mov	x0, x21
	mov	x2, x20
	mov	w3, w19
	bl	uECC_vli_mmod
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
.Lfunc_end17:
	.size	uECC_vli_modMult, .Lfunc_end17-uECC_vli_modMult
	.cfi_endproc
                                        // -- End function
	.p2align	2                               // -- Begin function uECC_vli_mult
	.type	uECC_vli_mult,@function
uECC_vli_mult:                          // @uECC_vli_mult
	.cfi_startproc
// %bb.0:
                                        // kill: def $w3 killed $w3 def $x3
	sxtb	w8, w3
	cmp	w8, #1
	b.lt	.LBB18_5
// %bb.1:
	mov	x9, xzr
	mov	x10, xzr
	mov	w8, wzr
	mov	x12, xzr
	and	x11, x3, #0xff
.LBB18_2:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB18_3 Depth 2
	mov	w13, w8
	mov	x14, x1
	mov	x15, x9
	mov	w8, wzr
.LBB18_3:                               //   Parent Loop BB18_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w16, [x14], #4
	ldr	w17, [x2, x15]
                                        // kill: def $w13 killed $w13 killed $x13 def $x13
	bfi	x12, x13, #32, #32
	sub	x15, x15, #4
	umull	x16, w17, w16
	adds	x12, x12, x16
	lsr	x13, x12, #32
	cinc	w8, w8, hs
	cmn	x15, #4
	b.ne	.LBB18_3
// %bb.4:                               //   in Loop: Header=BB18_2 Depth=1
	str	w12, [x0, x10, lsl #2]
	add	x10, x10, #1
	add	x9, x9, #4
	cmp	x10, x11
	mov	x12, x13
	b.ne	.LBB18_2
	b	.LBB18_6
.LBB18_5:
	mov	w13, wzr
	mov	w8, wzr
.LBB18_6:
	sbfiz	w9, w3, #1, #8
	sub	w9, w9, #1
	cmp	w9, w3, sxtb
	b.le	.LBB18_13
// %bb.7:
	mov	w10, #1                         // =0x1
	mov	w11, w3
	mov	w12, w13
.LBB18_8:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB18_10 Depth 2
	add	w14, w11, #1
	sub	w13, w14, w3
	sxtb	w13, w13
	cmp	w13, w3, sxtb
	b.ge	.LBB18_11
// %bb.9:                               //   in Loop: Header=BB18_8 Depth=1
	sub	x13, x2, w10, sxtb #2
	mov	w16, w10
	mov	w15, wzr
	sxtb	x16, w16
	mov	w17, w8
	add	x13, x13, w11, sxtb #2
.LBB18_10:                              //   Parent Loop BB18_8 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w8, [x1, x16, lsl #2]
	ldr	w18, [x13], #-4
	mov	w12, w12
	add	x16, x16, #1
	umull	x8, w18, w8
	orr	x12, x12, x17, lsl #32
	and	w17, w16, #0xff
	adds	x12, x12, x8
	lsr	x8, x12, #32
	cinc	w15, w15, hs
	cmp	w17, w3, uxtb
	mov	w17, w8
	b.ne	.LBB18_10
	b	.LBB18_12
.LBB18_11:                              //   in Loop: Header=BB18_8 Depth=1
	mov	w15, wzr
.LBB18_12:                              //   in Loop: Header=BB18_8 Depth=1
	sxtb	x11, w11
	mov	w13, w8
	add	w10, w10, #1
	cmp	w9, w14, sxtb
	mov	w8, w15
	str	w12, [x0, x11, lsl #2]
	mov	w11, w14
	mov	w12, w13
	b.gt	.LBB18_8
.LBB18_13:
	str	w13, [x0, w9, sxtw #2]
	ret
.Lfunc_end18:
	.size	uECC_vli_mult, .Lfunc_end18-uECC_vli_mult
	.cfi_endproc
                                        // -- End function
	.globl	uECC_vli_modMult_fast           // -- Begin function uECC_vli_modMult_fast
	.p2align	2
	.type	uECC_vli_modMult_fast,@function
uECC_vli_modMult_fast:                  // @uECC_vli_modMult_fast
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	stp	x20, x19, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 32
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w30, -24
	.cfi_offset w29, -32
	mov	x19, x3
	ldrb	w3, [x3]
	mov	x20, x0
	mov	x0, sp
	bl	uECC_vli_mult
	ldr	x8, [x19, #184]
	mov	x1, sp
	mov	x0, x20
	blr	x8
	.cfi_def_cfa wsp, 96
	ldp	x20, x19, [sp, #80]             // 16-byte Folded Reload
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #96
	.cfi_def_cfa_offset 0
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end19:
	.size	uECC_vli_modMult_fast, .Lfunc_end19-uECC_vli_modMult_fast
	.cfi_endproc
                                        // -- End function
	.globl	uECC_vli_modInv                 // -- Begin function uECC_vli_modInv
	.p2align	2
	.type	uECC_vli_modInv,@function
uECC_vli_modInv:                        // @uECC_vli_modInv
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #240
	.cfi_def_cfa_offset 240
	stp	x29, x30, [sp, #144]            // 16-byte Folded Spill
	stp	x28, x27, [sp, #160]            // 16-byte Folded Spill
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
	.cfi_offset w27, -72
	.cfi_offset w28, -80
	.cfi_offset w30, -88
	.cfi_offset w29, -96
	.cfi_remember_state
	sxtb	w8, w3
	cmp	w8, #1
	b.lt	.LBB20_43
// %bb.1:
	mov	w20, w3
	mov	x21, x2
	mov	x8, xzr
	and	x23, x20, #0xff
	mov	w9, wzr
	lsl	x22, x23, #2
.LBB20_2:                               // =>This Inner Loop Header: Depth=1
	ldr	w10, [x1, x8]
	add	x8, x8, #4
	cmp	x22, x8
	orr	w9, w10, w9
	b.ne	.LBB20_2
// %bb.3:
	cbz	w9, .LBB20_44
// %bb.4:
	str	x0, [sp]                        // 8-byte Folded Spill
	sub	x0, x29, #32
	mov	x2, x22
	sub	x24, x29, #32
	bl	memcpy
	sub	x0, x29, #64
	mov	x1, x21
	mov	x2, x22
	sub	x25, x29, #64
	bl	memcpy
	add	x0, sp, #48
	mov	w1, wzr
	mov	x2, x22
	add	x26, sp, #48
	bl	memset
	mov	w8, #1                          // =0x1
	add	x0, sp, #16
	mov	w1, wzr
	mov	x2, x22
	str	w8, [sp, #48]
	add	x27, sp, #16
	bl	memset
	add	x28, x25, x23, lsl #2
	add	x19, x24, x23, lsl #2
	sub	x8, x23, #1
	str	x8, [sp, #8]                    // 8-byte Folded Spill
.LBB20_5:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB20_6 Depth 2
                                        //     Child Loop BB20_30 Depth 2
                                        //     Child Loop BB20_32 Depth 2
                                        //     Child Loop BB20_34 Depth 2
                                        //     Child Loop BB20_38 Depth 2
                                        //     Child Loop BB20_40 Depth 2
                                        //     Child Loop BB20_18 Depth 2
                                        //     Child Loop BB20_20 Depth 2
                                        //     Child Loop BB20_22 Depth 2
                                        //     Child Loop BB20_26 Depth 2
                                        //     Child Loop BB20_28 Depth 2
                                        //     Child Loop BB20_14 Depth 2
                                        //     Child Loop BB20_10 Depth 2
	mov	x8, x23
.LBB20_6:                               //   Parent Loop BB20_5 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	sub	x8, x8, #1
	tbnz	w8, #7, .LBB20_42
// %bb.7:                               //   in Loop: Header=BB20_6 Depth=2
	mov	w9, w8
	ubfiz	x10, x9, #2, #7
	ldr	w9, [x24, x10]
	ldr	w10, [x25, x10]
	cmp	w9, w10
	b.eq	.LBB20_6
// %bb.8:                               //   in Loop: Header=BB20_5 Depth=1
	ldurb	w8, [x29, #-32]
	tbnz	w8, #0, .LBB20_12
// %bb.9:                               //   in Loop: Header=BB20_5 Depth=1
	mov	w8, wzr
	mov	x9, x19
.LBB20_10:                              //   Parent Loop BB20_5 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w10, [x9, #-4]!
	cmp	x9, x24
	orr	w11, w8, w10, lsr #1
	lsl	w8, w10, #31
	str	w11, [x9]
	b.hi	.LBB20_10
// %bb.11:                              //   in Loop: Header=BB20_5 Depth=1
	add	x0, sp, #48
	b	.LBB20_41
.LBB20_12:                              //   in Loop: Header=BB20_5 Depth=1
	ldurb	w8, [x29, #-64]
	tbnz	w8, #0, .LBB20_16
// %bb.13:                              //   in Loop: Header=BB20_5 Depth=1
	mov	w8, wzr
	mov	x9, x28
.LBB20_14:                              //   Parent Loop BB20_5 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w10, [x9, #-4]!
	cmp	x9, x25
	orr	w11, w8, w10, lsr #1
	lsl	w8, w10, #31
	str	w11, [x9]
	b.hi	.LBB20_14
// %bb.15:                              //   in Loop: Header=BB20_5 Depth=1
	add	x0, sp, #16
	b	.LBB20_41
.LBB20_16:                              //   in Loop: Header=BB20_5 Depth=1
	cmp	w9, w10
	b.ls	.LBB20_29
// %bb.17:                              //   in Loop: Header=BB20_5 Depth=1
	mov	x8, xzr
	mov	w9, wzr
.LBB20_18:                              //   Parent Loop BB20_5 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w10, [x25, x8]
	ldr	w11, [x24, x8]
	add	w10, w10, w9
	subs	w11, w11, w10
	str	w11, [x24, x8]
	add	x8, x8, #4
	cset	w12, lo
	cmp	w10, #0
	csel	w9, w9, wzr, eq
	cmp	x22, x8
	orr	w9, w9, w12
	b.ne	.LBB20_18
// %bb.19:                              //   in Loop: Header=BB20_5 Depth=1
	mov	w8, wzr
	mov	x9, x19
.LBB20_20:                              //   Parent Loop BB20_5 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w10, [x9, #-4]!
	cmp	x9, x24
	orr	w11, w8, w10, lsr #1
	lsl	w8, w10, #31
	str	w11, [x9]
	b.hi	.LBB20_20
// %bb.21:                              //   in Loop: Header=BB20_5 Depth=1
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
.LBB20_22:                              //   Parent Loop BB20_5 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	tbnz	w8, #7, .LBB20_27
// %bb.23:                              //   in Loop: Header=BB20_22 Depth=2
	mov	w9, w8
	ubfiz	x10, x9, #2, #7
	ldr	w9, [x26, x10]
	ldr	w10, [x27, x10]
	cmp	w9, w10
	b.hi	.LBB20_27
// %bb.24:                              //   in Loop: Header=BB20_22 Depth=2
	cmp	w9, w10
	sub	x8, x8, #1
	b.hs	.LBB20_22
// %bb.25:                              //   in Loop: Header=BB20_5 Depth=1
	mov	w10, wzr
	add	x8, sp, #48
	mov	x9, x21
	mov	x11, x23
.LBB20_26:                              //   Parent Loop BB20_5 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
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
	b.ne	.LBB20_26
.LBB20_27:                              //   in Loop: Header=BB20_5 Depth=1
	mov	x8, xzr
	mov	w9, wzr
.LBB20_28:                              //   Parent Loop BB20_5 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	add	x0, sp, #48
	ldr	w10, [x27, x8]
	ldr	w11, [x0, x8]
	add	w10, w10, w9
	subs	w11, w11, w10
	str	w11, [x0, x8]
	add	x8, x8, #4
	cset	w12, lo
	cmp	w10, #0
	csel	w9, w9, wzr, eq
	cmp	x22, x8
	orr	w9, w9, w12
	b.ne	.LBB20_28
	b	.LBB20_41
.LBB20_29:                              //   in Loop: Header=BB20_5 Depth=1
	mov	x8, xzr
	mov	w9, wzr
.LBB20_30:                              //   Parent Loop BB20_5 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w10, [x24, x8]
	ldr	w11, [x25, x8]
	add	w10, w10, w9
	subs	w11, w11, w10
	str	w11, [x25, x8]
	add	x8, x8, #4
	cset	w12, lo
	cmp	w10, #0
	csel	w9, w9, wzr, eq
	cmp	x22, x8
	orr	w9, w9, w12
	b.ne	.LBB20_30
// %bb.31:                              //   in Loop: Header=BB20_5 Depth=1
	mov	w8, wzr
	mov	x9, x28
.LBB20_32:                              //   Parent Loop BB20_5 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w10, [x9, #-4]!
	cmp	x9, x25
	orr	w11, w8, w10, lsr #1
	lsl	w8, w10, #31
	str	w11, [x9]
	b.hi	.LBB20_32
// %bb.33:                              //   in Loop: Header=BB20_5 Depth=1
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
.LBB20_34:                              //   Parent Loop BB20_5 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	tbnz	w8, #7, .LBB20_39
// %bb.35:                              //   in Loop: Header=BB20_34 Depth=2
	mov	w9, w8
	ubfiz	x10, x9, #2, #7
	ldr	w9, [x27, x10]
	ldr	w10, [x26, x10]
	cmp	w9, w10
	b.hi	.LBB20_39
// %bb.36:                              //   in Loop: Header=BB20_34 Depth=2
	cmp	w9, w10
	sub	x8, x8, #1
	b.hs	.LBB20_34
// %bb.37:                              //   in Loop: Header=BB20_5 Depth=1
	mov	w10, wzr
	add	x8, sp, #16
	mov	x9, x21
	mov	x11, x23
.LBB20_38:                              //   Parent Loop BB20_5 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
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
	b.ne	.LBB20_38
.LBB20_39:                              //   in Loop: Header=BB20_5 Depth=1
	mov	x8, xzr
	mov	w9, wzr
.LBB20_40:                              //   Parent Loop BB20_5 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	add	x0, sp, #16
	ldr	w10, [x26, x8]
	ldr	w11, [x0, x8]
	add	w10, w10, w9
	subs	w11, w11, w10
	str	w11, [x0, x8]
	add	x8, x8, #4
	cset	w12, lo
	cmp	w10, #0
	csel	w9, w9, wzr, eq
	cmp	x22, x8
	orr	w9, w9, w12
	b.ne	.LBB20_40
.LBB20_41:                              //   in Loop: Header=BB20_5 Depth=1
	mov	x1, x21
	mov	w2, w20
	bl	vli_modInv_update
	b	.LBB20_5
.LBB20_42:
	ldr	x0, [sp]                        // 8-byte Folded Reload
	add	x1, sp, #48
	mov	x2, x22
	bl	memcpy
.LBB20_43:
	.cfi_def_cfa wsp, 240
	ldp	x20, x19, [sp, #224]            // 16-byte Folded Reload
	ldp	x22, x21, [sp, #208]            // 16-byte Folded Reload
	ldp	x24, x23, [sp, #192]            // 16-byte Folded Reload
	ldp	x26, x25, [sp, #176]            // 16-byte Folded Reload
	ldp	x28, x27, [sp, #160]            // 16-byte Folded Reload
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
	.cfi_restore w28
	.cfi_restore w30
	.cfi_restore w29
	ret
.LBB20_44:
	.cfi_restore_state
	mov	w1, wzr
	mov	x2, x22
	.cfi_def_cfa wsp, 240
	ldp	x20, x19, [sp, #224]            // 16-byte Folded Reload
	ldp	x22, x21, [sp, #208]            // 16-byte Folded Reload
	ldp	x24, x23, [sp, #192]            // 16-byte Folded Reload
	ldp	x26, x25, [sp, #176]            // 16-byte Folded Reload
	ldp	x28, x27, [sp, #160]            // 16-byte Folded Reload
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
	.cfi_restore w28
	.cfi_restore w30
	.cfi_restore w29
	b	memset
.Lfunc_end20:
	.size	uECC_vli_modInv, .Lfunc_end20-uECC_vli_modInv
	.cfi_endproc
                                        // -- End function
	.p2align	2                               // -- Begin function vli_modInv_update
	.type	vli_modInv_update,@function
vli_modInv_update:                      // @vli_modInv_update
	.cfi_startproc
// %bb.0:
	ldrb	w8, [x0]
                                        // kill: def $w2 killed $w2 def $x2
	tbnz	w8, #0, .LBB21_5
// %bb.1:
	sxtb	w8, w2
	cmp	w8, #1
	b.lt	.LBB21_4
// %bb.2:
	add	x8, x0, w2, uxtb #2
	mov	w9, wzr
.LBB21_3:                               // =>This Inner Loop Header: Depth=1
	ldr	w10, [x8, #-4]!
	cmp	x8, x0
	orr	w11, w9, w10, lsr #1
	lsl	w9, w10, #31
	str	w11, [x8]
	b.hi	.LBB21_3
.LBB21_4:
	ret
.LBB21_5:
	sxtb	w8, w2
	cmp	w8, #1
	b.lt	.LBB21_4
// %bb.6:
	and	x9, x2, #0xff
	mov	x10, xzr
	mov	w8, wzr
	lsl	x11, x9, #2
.LBB21_7:                               // =>This Inner Loop Header: Depth=1
	ldr	w12, [x0, x10]
	ldr	w13, [x1, x10]
	add	w14, w12, w8
	add	w13, w14, w13
	str	w13, [x0, x10]
	add	x10, x10, #4
	cmp	w13, w12
	cset	w12, lo
	csel	w8, w8, wzr, eq
	cmp	x11, x10
	orr	w8, w8, w12
	b.ne	.LBB21_7
// %bb.8:
	add	x9, x0, x9, lsl #2
	mov	w10, wzr
	mov	x11, x9
.LBB21_9:                               // =>This Inner Loop Header: Depth=1
	ldr	w12, [x11, #-4]!
	cmp	x11, x0
	orr	w13, w10, w12, lsr #1
	lsl	w10, w12, #31
	str	w13, [x11]
	b.hi	.LBB21_9
// %bb.10:
	cbz	w8, .LBB21_4
// %bb.11:
	ldur	w8, [x9, #-4]
	orr	w8, w8, #0x80000000
	stur	w8, [x9, #-4]
	ret
.Lfunc_end21:
	.size	vli_modInv_update, .Lfunc_end21-vli_modInv_update
	.cfi_endproc
                                        // -- End function
	.globl	double_jacobian_default         // -- Begin function double_jacobian_default
	.p2align	2
	.type	double_jacobian_default,@function
double_jacobian_default:                // @double_jacobian_default
	.cfi_startproc
// %bb.0:
	ldrsb	w10, [x3]
	cmp	w10, #1
	b.lt	.LBB22_18
// %bb.1:
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
	and	x26, x10, #0xff
	mov	x24, x3
	mov	x20, x2
	lsl	x21, x26, #2
	mov	x19, x1
	mov	x22, x0
	mov	x9, xzr
	mov	w8, wzr
	mov	x23, x26
.LBB22_2:                               // =>This Inner Loop Header: Depth=1
	ldr	w10, [x20, x9]
	add	x9, x9, #4
	cmp	x21, x9
	orr	w8, w10, w8
	b.ne	.LBB22_2
// %bb.3:
	cbz	w8, .LBB22_17
// %bb.4:
	add	x0, sp, #64
	mov	x1, x19
	mov	x2, x19
	mov	w3, w23
	bl	uECC_vli_mult
	ldr	x8, [x24, #184]
	add	x0, sp, #32
	add	x1, sp, #64
	blr	x8
	ldrb	w3, [x24]
	add	x0, sp, #64
	add	x2, sp, #32
	mov	x1, x22
	bl	uECC_vli_mult
	ldr	x8, [x24, #184]
	mov	x0, sp
	add	x1, sp, #64
	blr	x8
	ldrb	w3, [x24]
	add	x0, sp, #64
	add	x1, sp, #32
	add	x2, sp, #32
	bl	uECC_vli_mult
	ldr	x8, [x24, #184]
	add	x0, sp, #32
	add	x1, sp, #64
	blr	x8
	ldrb	w3, [x24]
	add	x0, sp, #64
	mov	x1, x19
	mov	x2, x20
	bl	uECC_vli_mult
	ldr	x8, [x24, #184]
	add	x1, sp, #64
	mov	x0, x19
	blr	x8
	ldrb	w3, [x24]
	add	x0, sp, #64
	mov	x1, x20
	mov	x2, x20
	bl	uECC_vli_mult
	ldr	x8, [x24, #184]
	add	x1, sp, #64
	mov	x0, x20
	blr	x8
	add	x25, x24, #4
	mov	x0, x22
	mov	x1, x22
	mov	x2, x20
	mov	x3, x25
	mov	w4, w23
	bl	uECC_vli_modAdd
	mov	x0, x20
	mov	x1, x20
	mov	x2, x20
	mov	x3, x25
	mov	w4, w23
	bl	uECC_vli_modAdd
	mov	x0, x20
	mov	x1, x22
	mov	x2, x20
	mov	x3, x25
	mov	w4, w23
	bl	uECC_vli_modSub
	ldrb	w3, [x24]
	add	x0, sp, #64
	mov	x1, x22
	mov	x2, x20
	bl	uECC_vli_mult
	ldr	x8, [x24, #184]
	add	x1, sp, #64
	mov	x0, x22
	blr	x8
	mov	x0, x20
	mov	x1, x22
	mov	x2, x22
	mov	x3, x25
	mov	w4, w23
	bl	uECC_vli_modAdd
	mov	x0, x22
	mov	x1, x22
	mov	x2, x20
	mov	x3, x25
	mov	w4, w23
	bl	uECC_vli_modAdd
	ldrb	w8, [x22]
	tbnz	w8, #0, .LBB22_7
// %bb.5:
	add	x8, x22, x26, lsl #2
	mov	w9, wzr
.LBB22_6:                               // =>This Inner Loop Header: Depth=1
	ldr	w10, [x8, #-4]!
	cmp	x8, x22
	orr	w11, w9, w10, lsr #1
	lsl	w9, w10, #31
	str	w11, [x8]
	b.hi	.LBB22_6
	b	.LBB22_12
.LBB22_7:
	mov	x9, xzr
	mov	w8, wzr
.LBB22_8:                               // =>This Inner Loop Header: Depth=1
	ldr	w10, [x22, x9]
	ldr	w11, [x25, x9]
	add	w12, w10, w8
	add	w11, w12, w11
	str	w11, [x22, x9]
	add	x9, x9, #4
	cmp	w11, w10
	cset	w10, lo
	csel	w8, w8, wzr, eq
	cmp	x21, x9
	orr	w8, w8, w10
	b.ne	.LBB22_8
// %bb.9:
	add	x9, x22, x26, lsl #2
	mov	w10, wzr
	mov	x11, x9
.LBB22_10:                              // =>This Inner Loop Header: Depth=1
	ldr	w12, [x11, #-4]!
	cmp	x11, x22
	orr	w13, w10, w12, lsr #1
	lsl	w10, w12, #31
	str	w13, [x11]
	b.hi	.LBB22_10
// %bb.11:
	ldur	w10, [x9, #-4]
	orr	w8, w10, w8, lsl #31
	stur	w8, [x9, #-4]
.LBB22_12:
	ldrb	w3, [x24]
	add	x0, sp, #64
	mov	x1, x22
	mov	x2, x22
	bl	uECC_vli_mult
	ldr	x8, [x24, #184]
	add	x1, sp, #64
	mov	x0, x20
	blr	x8
	mov	x2, sp
	mov	x0, x20
	mov	x1, x20
	mov	x3, x25
	mov	w4, w23
	bl	uECC_vli_modSub
	mov	x2, sp
	mov	x0, x20
	mov	x1, x20
	mov	x3, x25
	mov	w4, w23
	bl	uECC_vli_modSub
	mov	x0, sp
	mov	x1, sp
	mov	x2, x20
	mov	x3, x25
	mov	w4, w23
	bl	uECC_vli_modSub
	ldrb	w3, [x24]
	add	x0, sp, #64
	mov	x2, sp
	mov	x1, x22
	bl	uECC_vli_mult
	ldr	x8, [x24, #184]
	add	x1, sp, #64
	mov	x0, x22
	blr	x8
	add	x0, sp, #32
	add	x2, sp, #32
	mov	x1, x22
	mov	x3, x25
	mov	w4, w23
	bl	uECC_vli_modSub
	mov	x8, x20
.LBB22_13:                              // =>This Inner Loop Header: Depth=1
	ldr	w9, [x8], #4
	subs	x23, x23, #1
	str	w9, [x22], #4
	b.ne	.LBB22_13
// %bb.14:
	mov	x8, xzr
.LBB22_15:                              // =>This Inner Loop Header: Depth=1
	ldr	w9, [x19, x8, lsl #2]
	str	w9, [x20, x8, lsl #2]
	add	x8, x8, #1
	cmp	x26, x8
	b.ne	.LBB22_15
// %bb.16:
	add	x1, sp, #32
	mov	x0, x19
	mov	x2, x21
	bl	memcpy
.LBB22_17:
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
.LBB22_18:
	ret
.Lfunc_end22:
	.size	double_jacobian_default, .Lfunc_end22-double_jacobian_default
	.cfi_endproc
                                        // -- End function
	.globl	x_side_default                  // -- Begin function x_side_default
	.p2align	2
	.type	x_side_default,@function
x_side_default:                         // @x_side_default
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
	ldrb	w21, [x2]
	mov	x19, x2
	mov	x22, x0
	mov	x0, sp
	mov	x2, x1
	mov	x20, x1
	mov	w3, w21
	bl	uECC_vli_mult
	ldr	x8, [x19, #184]
	mov	x1, sp
	mov	x0, x22
	blr	x8
	adrp	x2, .L__const.x_side_default._3
	add	x2, x2, :lo12:.L__const.x_side_default._3
	add	x3, x19, #4
	mov	x0, x22
	mov	x1, x22
	mov	w4, w21
	bl	uECC_vli_modSub
	ldrb	w3, [x19]
	mov	x0, sp
	mov	x1, x22
	mov	x2, x20
	bl	uECC_vli_mult
	ldr	x8, [x19, #184]
	mov	x1, sp
	mov	x0, x22
	blr	x8
	add	x2, x19, #132
	add	x3, x19, #4
	mov	x0, x22
	mov	x1, x22
	mov	w4, w21
	bl	uECC_vli_modAdd
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
.Lfunc_end23:
	.size	x_side_default, .Lfunc_end23-x_side_default
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
.Lfunc_end24:
	.size	uECC_secp256r1, .Lfunc_end24-uECC_secp256r1
	.cfi_endproc
                                        // -- End function
	.globl	vli_mmod_fast_secp256r1         // -- Begin function vli_mmod_fast_secp256r1
	.p2align	2
	.type	vli_mmod_fast_secp256r1,@function
vli_mmod_fast_secp256r1:                // @vli_mmod_fast_secp256r1
	.cfi_startproc
// %bb.0:
	mov	x8, xzr
.LBB25_1:                               // =>This Inner Loop Header: Depth=1
	ldr	w9, [x1, x8]
	str	w9, [x0, x8]
	add	x8, x8, #4
	cmp	x8, #32
	b.ne	.LBB25_1
// %bb.2:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	ldur	q0, [x1, #44]
	ldr	w11, [x1, #60]
	mov	x9, xzr
	mov	w8, wzr
	mov	x10, sp
	str	wzr, [sp, #8]
	str	xzr, [sp]
	stur	q0, [sp, #12]
	str	w11, [sp, #28]
.LBB25_3:                               // =>This Inner Loop Header: Depth=1
	ldr	w11, [x10, x9]
	add	w12, w8, w11, lsl #1
	str	w12, [x10, x9]
	add	x9, x9, #4
	cmp	w12, w11
	cset	w11, lo
	csel	w8, w8, wzr, eq
	cmp	x9, #32
	orr	w8, w8, w11
	b.ne	.LBB25_3
// %bb.4:
	mov	x10, xzr
	mov	w9, wzr
	mov	x11, sp
.LBB25_5:                               // =>This Inner Loop Header: Depth=1
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
	b.ne	.LBB25_5
// %bb.6:
	ldr	q0, [x1, #48]
	mov	x11, xzr
	mov	w10, wzr
	mov	x12, sp
	str	wzr, [sp, #28]
	stur	q0, [sp, #12]
.LBB25_7:                               // =>This Inner Loop Header: Depth=1
	ldr	w13, [x12, x11]
	add	w14, w10, w13, lsl #1
	str	w14, [x12, x11]
	add	x11, x11, #4
	cmp	w14, w13
	cset	w13, lo
	csel	w10, w10, wzr, eq
	cmp	x11, #32
	orr	w10, w10, w13
	b.ne	.LBB25_7
// %bb.8:
	mov	x12, xzr
	mov	w11, wzr
	mov	x13, sp
.LBB25_9:                               // =>This Inner Loop Header: Depth=1
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
	b.ne	.LBB25_9
// %bb.10:
	ldr	d0, [x1, #32]
	ldr	w14, [x1, #40]
	mov	x13, xzr
	mov	w12, wzr
	str	xzr, [sp, #16]
	str	d0, [sp]
	ldr	d0, [x1, #56]
	stp	w14, wzr, [sp, #8]
	mov	x14, sp
	str	d0, [sp, #24]
.LBB25_11:                              // =>This Inner Loop Header: Depth=1
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
	b.ne	.LBB25_11
// %bb.12:
	ldr	d0, [x1, #40]
	ldur	d1, [x1, #52]
	mov	x14, xzr
	ldp	w17, w15, [x1, #32]
	mov	v0.d[1], v1.d[0]
	ldr	w16, [x1, #60]
	mov	w13, wzr
	str	s1, [sp, #24]
	str	w15, [sp]
	mov	x15, sp
	str	w16, [sp, #20]
	stur	q0, [sp, #4]
	str	w17, [sp, #28]
.LBB25_13:                              // =>This Inner Loop Header: Depth=1
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
	b.ne	.LBB25_13
// %bb.14:
	ldr	w16, [x1, #52]
	ldur	d0, [x1, #44]
	mov	x15, xzr
	ldr	w17, [x1, #32]
	ldr	w18, [x1, #40]
	mov	w14, wzr
	stp	w16, wzr, [sp, #8]
	mov	x16, sp
	str	xzr, [sp, #16]
	str	d0, [sp]
	stp	w17, w18, [sp, #24]
.LBB25_15:                              // =>This Inner Loop Header: Depth=1
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
	b.ne	.LBB25_15
// %bb.16:
	ldr	w17, [x1, #36]
	ldr	w18, [x1, #44]
	mov	x16, xzr
	ldr	q0, [x1, #48]
	mov	w15, wzr
	str	xzr, [sp, #16]
	stp	w17, w18, [sp, #24]
	mov	x17, sp
	str	q0, [sp]
.LBB25_17:                              // =>This Inner Loop Header: Depth=1
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
	b.ne	.LBB25_17
// %bb.18:
	ldr	d0, [x1, #56]
	ldr	d1, [x1, #32]
	mov	x17, xzr
	ldp	w3, w18, [x1, #48]
	mov	v0.d[1], v1.d[0]
	ldr	w2, [x1, #40]
	mov	w16, wzr
	str	w18, [sp]
	mov	x18, sp
	stp	w2, wzr, [sp, #20]
	stur	q0, [sp, #4]
	str	w3, [sp, #28]
.LBB25_19:                              // =>This Inner Loop Header: Depth=1
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
	b.ne	.LBB25_19
// %bb.20:
	ldr	d0, [x1, #56]
	ldur	d1, [x1, #36]
	mov	x18, xzr
	ldr	w2, [x1, #44]
	ldr	w3, [x1, #52]
	mov	w17, wzr
	mov	x1, sp
	str	wzr, [sp, #8]
	str	d0, [sp]
	stur	d1, [sp, #12]
	stp	w2, wzr, [sp, #20]
	str	w3, [sp, #28]
.LBB25_21:                              // =>This Inner Loop Header: Depth=1
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
	b.ne	.LBB25_21
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
	b.mi	.LBB25_31
// %bb.23:
	cbz	w8, .LBB25_27
.LBB25_24:                              // =>This Loop Header: Depth=1
                                        //     Child Loop BB25_25 Depth 2
	mov	x10, xzr
	mov	w11, wzr
.LBB25_25:                              //   Parent Loop BB25_24 Depth=1
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
	b.ne	.LBB25_25
// %bb.26:                              //   in Loop: Header=BB25_24 Depth=1
	sub	w8, w8, w11
	cbnz	w8, .LBB25_24
.LBB25_27:
	mov	w10, #7                         // =0x7
.LBB25_28:                              // =>This Inner Loop Header: Depth=1
	tbnz	w10, #7, .LBB25_24
// %bb.29:                              //   in Loop: Header=BB25_28 Depth=1
	mov	w11, w10
	ubfiz	x12, x11, #2, #7
	add	x11, x9, x12
	ldr	w12, [x0, x12]
	ldr	w11, [x11, #4]
	cmp	w11, w12
	b.hi	.LBB25_34
// %bb.30:                              //   in Loop: Header=BB25_28 Depth=1
	cmp	w11, w12
	sub	x10, x10, #1
	b.hs	.LBB25_28
	b	.LBB25_24
.LBB25_31:                              // =>This Loop Header: Depth=1
                                        //     Child Loop BB25_32 Depth 2
	mov	x10, xzr
	mov	w11, wzr
.LBB25_32:                              //   Parent Loop BB25_31 Depth=1
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
	b.ne	.LBB25_32
// %bb.33:                              //   in Loop: Header=BB25_31 Depth=1
	adds	w8, w11, w8
	b.mi	.LBB25_31
.LBB25_34:
	ret
.Lfunc_end25:
	.size	vli_mmod_fast_secp256r1, .Lfunc_end25-vli_mmod_fast_secp256r1
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
	b.lt	.LBB26_4
// %bb.1:
	mov	w8, wzr
	and	x9, x9, #0xff
.LBB26_2:                               // =>This Inner Loop Header: Depth=1
	ldr	w10, [x0], #4
	subs	x9, x9, #1
	orr	w8, w10, w8
	b.ne	.LBB26_2
// %bb.3:
	cmp	w8, #0
	cset	w0, eq
	ret
.LBB26_4:
	mov	w0, #1                          // =0x1
	ret
.Lfunc_end26:
	.size	EccPoint_isZero, .Lfunc_end26-EccPoint_isZero
	.cfi_endproc
                                        // -- End function
	.globl	apply_z                         // -- Begin function apply_z
	.p2align	2
	.type	apply_z,@function
apply_z:                                // @apply_z
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #144
	.cfi_def_cfa_offset 144
	stp	x29, x30, [sp, #96]             // 16-byte Folded Spill
	stp	x22, x21, [sp, #112]            // 16-byte Folded Spill
	stp	x20, x19, [sp, #128]            // 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 48
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w30, -40
	.cfi_offset w29, -48
	mov	x20, x3
	ldrb	w3, [x3]
	mov	x19, x1
	mov	x22, x0
	add	x0, sp, #32
	mov	x1, x2
	mov	x21, x2
	bl	uECC_vli_mult
	ldr	x8, [x20, #184]
	mov	x0, sp
	add	x1, sp, #32
	blr	x8
	ldrb	w3, [x20]
	add	x0, sp, #32
	mov	x2, sp
	mov	x1, x22
	bl	uECC_vli_mult
	ldr	x8, [x20, #184]
	add	x1, sp, #32
	mov	x0, x22
	blr	x8
	ldrb	w3, [x20]
	add	x0, sp, #32
	mov	x1, sp
	mov	x2, x21
	bl	uECC_vli_mult
	ldr	x8, [x20, #184]
	mov	x0, sp
	add	x1, sp, #32
	blr	x8
	ldrb	w3, [x20]
	add	x0, sp, #32
	mov	x2, sp
	mov	x1, x19
	bl	uECC_vli_mult
	ldr	x8, [x20, #184]
	add	x1, sp, #32
	mov	x0, x19
	blr	x8
	.cfi_def_cfa wsp, 144
	ldp	x20, x19, [sp, #128]            // 16-byte Folded Reload
	ldp	x22, x21, [sp, #112]            // 16-byte Folded Reload
	ldp	x29, x30, [sp, #96]             // 16-byte Folded Reload
	add	sp, sp, #144
	.cfi_def_cfa_offset 0
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end27:
	.size	apply_z, .Lfunc_end27-apply_z
	.cfi_endproc
                                        // -- End function
	.globl	XYcZ_add                        // -- Begin function XYcZ_add
	.p2align	2
	.type	XYcZ_add,@function
XYcZ_add:                               // @XYcZ_add
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
	ldrsb	w20, [x4]
	mov	x24, x0
	mov	x23, x4
	mov	x21, x3
	mov	x19, x2
	mov	x22, x1
	mov	x0, sp
	add	x3, x4, #4
	mov	x1, x2
	mov	x2, x24
	mov	w4, w20
	bl	uECC_vli_modSub
	add	x0, sp, #32
	mov	x1, sp
	mov	x2, sp
	mov	w3, w20
	bl	uECC_vli_mult
	ldr	x8, [x23, #184]
	mov	x0, sp
	add	x1, sp, #32
	blr	x8
	ldrb	w3, [x23]
	add	x0, sp, #32
	mov	x2, sp
	mov	x1, x24
	bl	uECC_vli_mult
	ldr	x8, [x23, #184]
	add	x1, sp, #32
	mov	x0, x24
	blr	x8
	ldrb	w3, [x23]
	add	x0, sp, #32
	mov	x2, sp
	mov	x1, x19
	bl	uECC_vli_mult
	ldr	x8, [x23, #184]
	add	x1, sp, #32
	mov	x0, x19
	blr	x8
	add	x3, x23, #4
	mov	x0, x21
	mov	x1, x21
	mov	x2, x22
	mov	w4, w20
	bl	uECC_vli_modSub
	ldrb	w3, [x23]
	add	x0, sp, #32
	mov	x1, x21
	mov	x2, x21
	bl	uECC_vli_mult
	ldr	x8, [x23, #184]
	mov	x0, sp
	add	x1, sp, #32
	blr	x8
	mov	x0, sp
	mov	x1, sp
	add	x3, x23, #4
	mov	x2, x24
	mov	w4, w20
	bl	uECC_vli_modSub
	mov	x0, sp
	mov	x1, sp
	add	x3, x23, #4
	mov	x2, x19
	mov	w4, w20
	bl	uECC_vli_modSub
	add	x3, x23, #4
	mov	x0, x19
	mov	x1, x19
	mov	x2, x24
	mov	w4, w20
	bl	uECC_vli_modSub
	ldrb	w3, [x23]
	add	x0, sp, #32
	mov	x1, x22
	mov	x2, x19
	bl	uECC_vli_mult
	ldr	x8, [x23, #184]
	add	x1, sp, #32
	mov	x0, x22
	blr	x8
	mov	x2, sp
	add	x3, x23, #4
	mov	x0, x19
	mov	x1, x24
	mov	w4, w20
	bl	uECC_vli_modSub
	ldrb	w3, [x23]
	add	x0, sp, #32
	mov	x1, x21
	mov	x2, x19
	bl	uECC_vli_mult
	ldr	x8, [x23, #184]
	add	x1, sp, #32
	mov	x0, x21
	blr	x8
	add	x3, x23, #4
	mov	x0, x21
	mov	x1, x21
	mov	x2, x22
	mov	w4, w20
	bl	uECC_vli_modSub
	cmp	w20, #1
	b.lt	.LBB28_2
// %bb.1:
	and	x8, x20, #0xff
	mov	x1, sp
	mov	x0, x19
	lsl	x2, x8, #2
	bl	memcpy
.LBB28_2:
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
.Lfunc_end28:
	.size	XYcZ_add, .Lfunc_end28-XYcZ_add
	.cfi_endproc
                                        // -- End function
	.globl	EccPoint_mult                   // -- Begin function EccPoint_mult
	.p2align	2
	.type	EccPoint_mult,@function
EccPoint_mult:                          // @EccPoint_mult
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #368
	.cfi_def_cfa_offset 368
	stp	x29, x30, [sp, #272]            // 16-byte Folded Spill
	stp	x28, x27, [sp, #288]            // 16-byte Folded Spill
	stp	x26, x25, [sp, #304]            // 16-byte Folded Spill
	stp	x24, x23, [sp, #320]            // 16-byte Folded Spill
	stp	x22, x21, [sp, #336]            // 16-byte Folded Spill
	stp	x20, x19, [sp, #352]            // 16-byte Folded Spill
	add	x29, sp, #272
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
	mov	x20, x5
	mov	w25, w4
	mov	x28, x3
	mov	x24, x2
	mov	x21, x1
	cmp	w8, #1
	and	x19, x8, #0xff
	add	x22, sp, #136
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	str	x19, [sp, #32]                  // 8-byte Folded Spill
	b.lt	.LBB29_3
// %bb.1:
	lsl	x27, x19, #2
	add	x0, x22, #32
	mov	x1, x21
	mov	x2, x27
	bl	memcpy
	add	x8, sp, #72
	add	x1, x21, x19, lsl #2
	mov	x2, x27
	add	x26, x8, #32
	mov	x0, x26
	str	x1, [sp, #16]                   // 8-byte Folded Spill
	bl	memcpy
	sub	x0, x29, #72
	cbz	x28, .LBB29_5
// %bb.2:
	mov	x1, x28
	mov	x2, x27
	bl	memcpy
	b	.LBB29_6
.LBB29_3:
	sxtb	x9, w19
	add	x8, sp, #72
	add	x26, x8, #32
	str	x9, [sp]                        // 8-byte Folded Spill
	add	x9, x21, w19, sxtb #2
	str	x9, [sp, #16]                   // 8-byte Folded Spill
	cbnz	x28, .LBB29_7
// %bb.4:
	mov	w8, #1                          // =0x1
	stur	w8, [x29, #-72]
	b	.LBB29_7
.LBB29_5:
	mov	w1, wzr
	mov	x2, x27
	bl	memset
	mov	w8, #1                          // =0x1
	stur	w8, [x29, #-72]
.LBB29_6:
	add	x0, sp, #136
	add	x1, x22, #32
	mov	x2, x27
	bl	memmove
	add	x8, sp, #72
	add	x0, sp, #72
	mov	x2, x27
	add	x1, x8, #32
	bl	memmove
	str	x19, [sp]                       // 8-byte Folded Spill
.LBB29_7:
	add	x0, x22, #32
	sub	x2, x29, #72
	mov	x1, x26
	mov	x3, x20
	str	x21, [sp, #24]                  // 8-byte Folded Spill
	bl	apply_z
	ldr	x8, [x20, #168]
	add	x0, x22, #32
	sub	x2, x29, #72
	mov	x1, x26
	mov	x3, x20
	blr	x8
	add	x0, sp, #136
	add	x1, sp, #72
	sub	x2, x29, #72
	mov	x3, x20
	add	x23, sp, #136
	add	x19, sp, #72
	bl	apply_z
	sub	w8, w25, #2
	sxth	w8, w8
	cmp	w8, #1
	b.lt	.LBB29_10
// %bb.8:
	and	w22, w8, #0xffff
	mov	w21, #1                         // =0x1
.LBB29_9:                               // =>This Inner Loop Header: Depth=1
	lsr	w8, w22, #5
	lsl	w9, w21, w22
	mov	x4, x20
	ldr	w8, [x24, w8, uxtw #2]
	tst	w8, w9
	cset	w8, ne
	cset	w9, eq
	add	x25, x23, x8, lsl #5
	add	x26, x19, x8, lsl #5
	add	x27, x23, x9, lsl #5
	add	x28, x19, x9, lsl #5
	mov	x0, x25
	mov	x1, x26
	mov	x2, x27
	mov	x3, x28
	bl	XYcZ_addC
	mov	x0, x27
	mov	x1, x28
	mov	x2, x25
	mov	x3, x26
	mov	x4, x20
	bl	XYcZ_add
	subs	w22, w22, #1
	b.hi	.LBB29_9
.LBB29_10:
	ldr	w8, [x24]
	ldr	x21, [sp, #32]                  // 8-byte Folded Reload
	mov	x4, x20
	and	x8, x8, #0x1
	sxtb	w28, w21
	eor	w9, w8, #0x1
	add	x24, x23, x8, lsl #5
	add	x25, x19, x8, lsl #5
	add	x26, x23, x9, lsl #5
	add	x27, x19, x9, lsl #5
	mov	x0, x24
	mov	x1, x25
	mov	x2, x26
	mov	x3, x27
	bl	XYcZ_addC
	add	x8, sp, #136
	add	x0, sp, #40
	add	x2, sp, #136
	add	x1, x8, #32
	add	x3, x20, #4
	mov	w4, w21
	bl	uECC_vli_modSub
	ldrb	w3, [x20]
	sub	x0, x29, #72
	add	x1, sp, #40
	mov	x2, x25
	bl	uECC_vli_mult
	ldr	x8, [x20, #184]
	add	x0, sp, #40
	sub	x1, x29, #72
	blr	x8
	ldrb	w3, [x20]
	ldr	x2, [sp, #24]                   // 8-byte Folded Reload
	sub	x0, x29, #72
	add	x1, sp, #40
	bl	uECC_vli_mult
	ldr	x8, [x20, #184]
	add	x0, sp, #40
	sub	x1, x29, #72
	blr	x8
	add	x0, sp, #40
	add	x1, sp, #40
	add	x2, x20, #4
	mov	w3, w21
	bl	uECC_vli_modInv
	ldrb	w3, [x20]
	ldr	x2, [sp, #16]                   // 8-byte Folded Reload
	sub	x0, x29, #72
	add	x1, sp, #40
	bl	uECC_vli_mult
	ldr	x8, [x20, #184]
	add	x0, sp, #40
	sub	x1, x29, #72
	blr	x8
	ldrb	w3, [x20]
	sub	x0, x29, #72
	add	x1, sp, #40
	mov	x2, x24
	bl	uECC_vli_mult
	ldr	x8, [x20, #184]
	add	x0, sp, #40
	sub	x1, x29, #72
	blr	x8
	mov	x0, x26
	mov	x1, x27
	mov	x2, x24
	mov	x3, x25
	mov	x4, x20
	bl	XYcZ_add
	add	x0, sp, #136
	add	x1, sp, #72
	add	x2, sp, #40
	mov	x3, x20
	bl	apply_z
	cmp	w28, #1
	b.lt	.LBB29_12
// %bb.11:
	lsl	x20, x21, #2
	ldr	x19, [sp, #8]                   // 8-byte Folded Reload
	add	x1, sp, #136
	mov	x0, x19
	mov	x2, x20
	bl	memcpy
	ldr	x8, [sp]                        // 8-byte Folded Reload
	add	x1, sp, #72
	mov	x2, x20
	add	x0, x19, x8, lsl #2
	bl	memcpy
.LBB29_12:
	.cfi_def_cfa wsp, 368
	ldp	x20, x19, [sp, #352]            // 16-byte Folded Reload
	ldp	x22, x21, [sp, #336]            // 16-byte Folded Reload
	ldp	x24, x23, [sp, #320]            // 16-byte Folded Reload
	ldp	x26, x25, [sp, #304]            // 16-byte Folded Reload
	ldp	x28, x27, [sp, #288]            // 16-byte Folded Reload
	ldp	x29, x30, [sp, #272]            // 16-byte Folded Reload
	add	sp, sp, #368
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
.Lfunc_end29:
	.size	EccPoint_mult, .Lfunc_end29-EccPoint_mult
	.cfi_endproc
                                        // -- End function
	.p2align	2                               // -- Begin function XYcZ_addC
	.type	XYcZ_addC,@function
XYcZ_addC:                              // @XYcZ_addC
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #224
	.cfi_def_cfa_offset 224
	stp	x29, x30, [sp, #160]            // 16-byte Folded Spill
	stp	x24, x23, [sp, #176]            // 16-byte Folded Spill
	stp	x22, x21, [sp, #192]            // 16-byte Folded Spill
	stp	x20, x19, [sp, #208]            // 16-byte Folded Spill
	add	x29, sp, #160
	.cfi_def_cfa w29, 64
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w23, -40
	.cfi_offset w24, -48
	.cfi_offset w30, -56
	.cfi_offset w29, -64
	ldrsb	w20, [x4]
	mov	x19, x0
	mov	x21, x4
	mov	x23, x3
	mov	x24, x2
	mov	x22, x1
	add	x0, sp, #64
	add	x3, x4, #4
	mov	x1, x2
	mov	x2, x19
	mov	w4, w20
	bl	uECC_vli_modSub
	sub	x0, x29, #64
	add	x1, sp, #64
	add	x2, sp, #64
	mov	w3, w20
	bl	uECC_vli_mult
	ldr	x8, [x21, #184]
	add	x0, sp, #64
	sub	x1, x29, #64
	blr	x8
	ldrb	w3, [x21]
	sub	x0, x29, #64
	add	x2, sp, #64
	mov	x1, x19
	bl	uECC_vli_mult
	ldr	x8, [x21, #184]
	sub	x1, x29, #64
	mov	x0, x19
	blr	x8
	ldrb	w3, [x21]
	sub	x0, x29, #64
	add	x2, sp, #64
	mov	x1, x24
	bl	uECC_vli_mult
	ldr	x8, [x21, #184]
	sub	x1, x29, #64
	mov	x0, x24
	blr	x8
	add	x0, sp, #64
	add	x3, x21, #4
	mov	x1, x23
	mov	x2, x22
	mov	w4, w20
	bl	uECC_vli_modAdd
	add	x3, x21, #4
	mov	x0, x23
	mov	x1, x23
	mov	x2, x22
	mov	w4, w20
	bl	uECC_vli_modSub
	add	x0, sp, #32
	add	x3, x21, #4
	mov	x1, x24
	mov	x2, x19
	mov	w4, w20
	bl	uECC_vli_modSub
	ldrb	w3, [x21]
	sub	x0, x29, #64
	add	x2, sp, #32
	mov	x1, x22
	bl	uECC_vli_mult
	ldr	x8, [x21, #184]
	sub	x1, x29, #64
	mov	x0, x22
	blr	x8
	add	x0, sp, #32
	add	x3, x21, #4
	mov	x1, x19
	mov	x2, x24
	mov	w4, w20
	bl	uECC_vli_modAdd
	ldrb	w3, [x21]
	sub	x0, x29, #64
	mov	x1, x23
	mov	x2, x23
	bl	uECC_vli_mult
	ldr	x8, [x21, #184]
	sub	x1, x29, #64
	mov	x0, x24
	blr	x8
	add	x2, sp, #32
	add	x3, x21, #4
	mov	x0, x24
	mov	x1, x24
	mov	w4, w20
	bl	uECC_vli_modSub
	mov	x0, sp
	add	x3, x21, #4
	mov	x1, x19
	mov	x2, x24
	mov	w4, w20
	bl	uECC_vli_modSub
	ldrb	w3, [x21]
	sub	x0, x29, #64
	mov	x2, sp
	mov	x1, x23
	bl	uECC_vli_mult
	ldr	x8, [x21, #184]
	sub	x1, x29, #64
	mov	x0, x23
	blr	x8
	add	x3, x21, #4
	mov	x0, x23
	mov	x1, x23
	mov	x2, x22
	mov	w4, w20
	bl	uECC_vli_modSub
	ldrb	w3, [x21]
	sub	x0, x29, #64
	add	x1, sp, #64
	add	x2, sp, #64
	bl	uECC_vli_mult
	ldr	x8, [x21, #184]
	mov	x0, sp
	sub	x1, x29, #64
	blr	x8
	mov	x0, sp
	mov	x1, sp
	add	x2, sp, #32
	add	x3, x21, #4
	mov	w4, w20
	bl	uECC_vli_modSub
	add	x0, sp, #32
	mov	x1, sp
	add	x3, x21, #4
	mov	x2, x19
	mov	w4, w20
	bl	uECC_vli_modSub
	ldrb	w3, [x21]
	sub	x0, x29, #64
	add	x1, sp, #32
	add	x2, sp, #64
	bl	uECC_vli_mult
	ldr	x8, [x21, #184]
	add	x0, sp, #32
	sub	x1, x29, #64
	blr	x8
	add	x1, sp, #32
	add	x3, x21, #4
	mov	x0, x22
	mov	x2, x22
	mov	w4, w20
	bl	uECC_vli_modSub
	cmp	w20, #1
	b.lt	.LBB30_2
// %bb.1:
	and	x8, x20, #0xff
	mov	x1, sp
	mov	x0, x19
	lsl	x2, x8, #2
	bl	memcpy
.LBB30_2:
	.cfi_def_cfa wsp, 224
	ldp	x20, x19, [sp, #208]            // 16-byte Folded Reload
	ldp	x22, x21, [sp, #192]            // 16-byte Folded Reload
	ldp	x24, x23, [sp, #176]            // 16-byte Folded Reload
	ldp	x29, x30, [sp, #160]            // 16-byte Folded Reload
	add	sp, sp, #224
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
.Lfunc_end30:
	.size	XYcZ_addC, .Lfunc_end30-XYcZ_addC
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
	b.lt	.LBB31_5
// %bb.1:
	mov	w12, wzr
	and	w11, w9, #0xff
	mov	x13, x8
	mov	x14, x1
.LBB31_2:                               // =>This Inner Loop Header: Depth=1
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
	b.ne	.LBB31_2
// %bb.3:
	cbz	w12, .LBB31_5
// %bb.4:
	mov	w0, #1                          // =0x1
	b	.LBB31_8
.LBB31_5:
	lsl	w11, w9, #24
	cmp	w10, w11, asr #19
	b.ge	.LBB31_7
// %bb.6:
	asr	w11, w10, #5
	ldr	w11, [x1, w11, sxtw #2]
	lsr	w10, w11, w10
	and	w0, w10, #0x1
	b	.LBB31_8
.LBB31_7:
	mov	w0, wzr
.LBB31_8:
	sxtb	w10, w9
	cmp	w10, #1
	b.lt	.LBB31_11
// %bb.9:
	mov	w10, wzr
	and	w9, w9, #0xff
.LBB31_10:                              // =>This Inner Loop Header: Depth=1
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
	b.ne	.LBB31_10
.LBB31_11:
	ret
.Lfunc_end31:
	.size	regularize_k, .Lfunc_end31-regularize_k
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
	mov	x20, x2
	mov	x8, x1
	mov	x19, x0
	sub	x9, x29, #32
	add	x10, sp, #16
	sub	x1, x29, #32
	add	x2, sp, #16
	mov	x0, x8
	mov	x3, x20
	stp	x9, x10, [sp]
	bl	regularize_k
	mov	x8, sp
	eor	w9, w0, #0x1
	add	x1, x20, #68
	ldr	x2, [x8, w9, uxtw #3]
	ldrh	w8, [x20, #2]
	mov	x0, x19
	mov	x3, xzr
	mov	x5, x20
	add	w4, w8, #1
	bl	EccPoint_mult
	ldrb	w8, [x20]
	lsl	w8, w8, #1
	sxtb	w9, w8
	cmp	w9, #1
	b.lt	.LBB32_4
// %bb.1:
	mov	w8, wzr
	and	x9, x9, #0xff
.LBB32_2:                               // =>This Inner Loop Header: Depth=1
	ldr	w10, [x19], #4
	subs	x9, x9, #1
	orr	w8, w10, w8
	b.ne	.LBB32_2
// %bb.3:
	cmp	w8, #0
	cset	w0, ne
	b	.LBB32_5
.LBB32_4:
	mov	w0, wzr
.LBB32_5:
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
.Lfunc_end32:
	.size	EccPoint_compute_public_key, .Lfunc_end32-EccPoint_compute_public_key
	.cfi_endproc
                                        // -- End function
	.globl	uECC_vli_nativeToBytes          // -- Begin function uECC_vli_nativeToBytes
	.p2align	2
	.type	uECC_vli_nativeToBytes,@function
uECC_vli_nativeToBytes:                 // @uECC_vli_nativeToBytes
	.cfi_startproc
// %bb.0:
	cmp	w1, #1
	b.lt	.LBB33_3
// %bb.1:
	mov	w9, wzr
	mov	w8, wzr
.LBB33_2:                               // =>This Inner Loop Header: Depth=1
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
	b.lt	.LBB33_2
.LBB33_3:
	ret
.Lfunc_end33:
	.size	uECC_vli_nativeToBytes, .Lfunc_end33-uECC_vli_nativeToBytes
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
	b.lt	.LBB34_2
// %bb.1:
	asr	w8, w8, #2
	mov	x0, x21
	mov	w1, wzr
	ubfiz	w2, w8, #2, #8
	bl	memset
.LBB34_2:
	cmp	w19, #1
	b.lt	.LBB34_5
// %bb.3:
	mov	w9, wzr
	mov	w8, wzr
.LBB34_4:                               // =>This Inner Loop Header: Depth=1
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
	b.lt	.LBB34_4
.LBB34_5:
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
.Lfunc_end34:
	.size	uECC_vli_bytesToNative, .Lfunc_end34-uECC_vli_bytesToNative
	.cfi_endproc
                                        // -- End function
	.globl	uECC_generate_random_int        // -- Begin function uECC_generate_random_int
	.p2align	2
	.type	uECC_generate_random_int,@function
uECC_generate_random_int:               // @uECC_generate_random_int
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
	add	x29, sp, #16
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
	mov	x21, x0
	str	x1, [sp, #8]                    // 8-byte Folded Spill
	mov	x0, x1
	mov	w1, w2
	mov	w19, w2
	bl	uECC_vli_numBits
	adrp	x23, g_rng_function
	ldr	x8, [x23, :lo12:g_rng_function]
	cbz	x8, .LBB35_9
// %bb.1:
	sbfiz	w8, w19, #5, #8
	mov	w9, #-1                         // =0xffffffff
	and	x10, x19, #0xff
	sbfiz	w22, w19, #2, #8
	sxtb	x26, w19
	lsl	x27, x10, #2
	sub	w8, w8, w0
	sxtb	w28, w19
	mov	w24, wzr
	lsr	w25, w9, w8
	sub	x20, x21, #4
.LBB35_2:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB35_5 Depth 2
	ldr	x8, [x23, :lo12:g_rng_function]
	mov	x0, x21
	mov	w1, w22
	blr	x8
	cbz	w0, .LBB35_10
// %bb.3:                               //   in Loop: Header=BB35_2 Depth=1
	ldr	w8, [x20, x26, lsl #2]
	cmp	w28, #1
	and	w8, w8, w25
	str	w8, [x20, x26, lsl #2]
	b.lt	.LBB35_8
// %bb.4:                               //   in Loop: Header=BB35_2 Depth=1
	mov	x9, xzr
	mov	w8, wzr
.LBB35_5:                               //   Parent Loop BB35_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w10, [x21, x9]
	add	x9, x9, #4
	cmp	x27, x9
	orr	w8, w10, w8
	b.ne	.LBB35_5
// %bb.6:                               //   in Loop: Header=BB35_2 Depth=1
	cbz	w8, .LBB35_8
// %bb.7:                               //   in Loop: Header=BB35_2 Depth=1
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	mov	x1, x21
	mov	w2, w19
	bl	uECC_vli_cmp
	and	w8, w0, #0xff
	cmp	w8, #1
	b.eq	.LBB35_11
.LBB35_8:                               //   in Loop: Header=BB35_2 Depth=1
	add	w24, w24, #1
	cmp	w24, #64
	b.ne	.LBB35_2
.LBB35_9:
	mov	w0, wzr
.LBB35_10:
	.cfi_def_cfa wsp, 112
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
.LBB35_11:
	.cfi_restore_state
	mov	w0, #1                          // =0x1
	b	.LBB35_10
.Lfunc_end35:
	.size	uECC_generate_random_int, .Lfunc_end35-uECC_generate_random_int
	.cfi_endproc
                                        // -- End function
	.globl	uECC_valid_point                // -- Begin function uECC_valid_point
	.p2align	2
	.type	uECC_valid_point,@function
uECC_valid_point:                       // @uECC_valid_point
	.cfi_startproc
// %bb.0:
	ldrb	w3, [x1]
	lsl	w8, w3, #1
	sxtb	w9, w8
	cmp	w9, #1
	b.lt	.LBB36_8
// %bb.1:
	sub	sp, sp, #144
	.cfi_def_cfa_offset 144
	stp	x29, x30, [sp, #96]             // 16-byte Folded Spill
	stp	x22, x21, [sp, #112]            // 16-byte Folded Spill
	stp	x20, x19, [sp, #128]            // 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 48
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w30, -40
	.cfi_offset w29, -48
	.cfi_remember_state
	and	x9, x9, #0xff
	sxtb	x21, w3
	mov	x19, x1
	lsl	x9, x9, #2
	mov	x20, x0
	mov	x8, xzr
	mov	w10, wzr
.LBB36_2:                               // =>This Inner Loop Header: Depth=1
	ldr	w11, [x20, x8]
	add	x8, x8, #4
	cmp	x9, x8
	orr	w10, w11, w10
	b.ne	.LBB36_2
// %bb.3:
	cbz	w10, .LBB36_9
// %bb.4:
	sub	x8, x3, #1
	add	x9, x19, #4
	mov	x10, x8
.LBB36_5:                               // =>This Inner Loop Header: Depth=1
	tbnz	w10, #7, .LBB36_14
// %bb.6:                               //   in Loop: Header=BB36_5 Depth=1
	mov	w11, w10
	ubfiz	x12, x11, #2, #7
	ldr	w11, [x9, x12]
	ldr	w12, [x20, x12]
	cmp	w11, w12
	b.hi	.LBB36_10
// %bb.7:                               //   in Loop: Header=BB36_5 Depth=1
	cmp	w11, w12
	sub	x10, x10, #1
	b.hs	.LBB36_5
	b	.LBB36_14
.LBB36_8:
	.cfi_def_cfa wsp, 0
	.cfi_same_value w19
	.cfi_same_value w20
	.cfi_same_value w21
	.cfi_same_value w22
	.cfi_same_value w30
	.cfi_same_value w29
	mov	w0, #-1                         // =0xffffffff
	ret
.LBB36_9:
	.cfi_restore_state
	.cfi_remember_state
	mov	w0, #-1                         // =0xffffffff
	b	.LBB36_15
.LBB36_10:
	add	x1, x20, x21, lsl #2
.LBB36_11:                              // =>This Inner Loop Header: Depth=1
	tbnz	w8, #7, .LBB36_14
// %bb.12:                              //   in Loop: Header=BB36_11 Depth=1
	mov	w10, w8
	ubfiz	x11, x10, #2, #7
	ldr	w10, [x9, x11]
	ldr	w11, [x1, x11]
	cmp	w10, w11
	b.hi	.LBB36_16
// %bb.13:                              //   in Loop: Header=BB36_11 Depth=1
	cmp	w10, w11
	sub	x8, x8, #1
	b.hs	.LBB36_11
.LBB36_14:
	mov	w0, #-2                         // =0xfffffffe
.LBB36_15:
	.cfi_def_cfa wsp, 144
	ldp	x20, x19, [sp, #128]            // 16-byte Folded Reload
	ldp	x22, x21, [sp, #112]            // 16-byte Folded Reload
	ldp	x29, x30, [sp, #96]             // 16-byte Folded Reload
	add	sp, sp, #144
	.cfi_def_cfa_offset 0
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w30
	.cfi_restore w29
	ret
.LBB36_16:
	.cfi_restore_state
	add	x0, sp, #32
	mov	x2, x1
                                        // kill: def $w3 killed $w3 killed $x3
	bl	uECC_vli_mult
	ldr	x8, [x19, #184]
	mov	x0, sp
	add	x1, sp, #32
	mov	x22, sp
	blr	x8
	ldr	x8, [x19, #176]
	add	x0, sp, #32
	mov	x1, x20
	mov	x2, x19
	add	x19, sp, #32
	blr	x8
	sub	w8, w21, #1
	tbnz	w8, #7, .LBB36_21
// %bb.17:
	sxtb	w8, w8
	mov	w9, wzr
	and	x8, x8, #0xff
	lsl	x8, x8, #2
.LBB36_18:                              // =>This Inner Loop Header: Depth=1
	ldr	w10, [x22, x8]
	ldr	w11, [x19, x8]
	sub	x8, x8, #4
	cmn	x8, #4
	eor	w10, w11, w10
	orr	w9, w10, w9
	b.ne	.LBB36_18
// %bb.19:
	cbz	w9, .LBB36_21
// %bb.20:
	mov	w0, #-3                         // =0xfffffffd
	b	.LBB36_15
.LBB36_21:
	mov	w0, wzr
	b	.LBB36_15
.Lfunc_end36:
	.size	uECC_valid_point, .Lfunc_end36-uECC_valid_point
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
	ldrsb	x20, [x1, #1]
	mov	x21, x0
	mov	x19, x1
	mov	x0, sp
	mov	x1, x21
	mov	x22, sp
	mov	w2, w20
	bl	uECC_vli_bytesToNative
	ldrsb	x8, [x19]
	add	x1, x21, x20
	mov	w2, w20
	add	x0, x22, x8, lsl #2
	bl	uECC_vli_bytesToNative
	add	x8, x19, #68
	mov	w9, #15                         // =0xf
.LBB37_1:                               // =>This Inner Loop Header: Depth=1
	tbnz	w9, #7, .LBB37_4
// %bb.2:                               //   in Loop: Header=BB37_1 Depth=1
	mov	w10, w9
	sub	x9, x9, #1
	ubfiz	x10, x10, #2, #7
	ldr	w11, [x22, x10]
	ldr	w10, [x8, x10]
	cmp	w11, w10
	b.eq	.LBB37_1
// %bb.3:
	mov	x0, sp
	mov	x1, x19
	bl	uECC_valid_point
	b	.LBB37_5
.LBB37_4:
	mov	w0, #-4                         // =0xfffffffc
.LBB37_5:
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
.Lfunc_end37:
	.size	uECC_valid_public_key, .Lfunc_end37-uECC_valid_public_key
	.cfi_endproc
                                        // -- End function
	.globl	uECC_compute_public_key         // -- Begin function uECC_compute_public_key
	.p2align	2
	.type	uECC_compute_public_key,@function
uECC_compute_public_key:                // @uECC_compute_public_key
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #144
	.cfi_def_cfa_offset 144
	stp	x29, x30, [sp, #96]             // 16-byte Folded Spill
	stp	x22, x21, [sp, #112]            // 16-byte Folded Spill
	stp	x20, x19, [sp, #128]            // 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 48
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w30, -40
	.cfi_offset w29, -48
	ldrsh	w22, [x2, #2]
	mov	x20, x2
	mov	x19, x1
	mov	x1, x0
	sub	x0, x29, #32
	sub	x21, x29, #32
	adds	w8, w22, #7
	add	w9, w22, #14
	csel	w8, w9, w8, lt
	asr	w2, w8, #3
	bl	uECC_vli_bytesToNative
	adds	w8, w22, #31
	add	w9, w22, #62
	csel	w9, w9, w8, lt
	sbfx	w8, w9, #5, #8
	cmp	w8, #1
	b.lt	.LBB38_13
// %bb.1:
	asr	w2, w9, #5
	mov	x8, xzr
	mov	w10, wzr
	and	w9, w2, #0xff
	ubfiz	x9, x9, #2, #32
.LBB38_2:                               // =>This Inner Loop Header: Depth=1
	ldr	w11, [x21, x8]
	add	x8, x8, #4
	cmp	x9, x8
	orr	w10, w11, w10
	b.ne	.LBB38_2
// %bb.3:
	cbz	w10, .LBB38_13
// %bb.4:
	add	x0, x20, #36
	sub	x1, x29, #32
	bl	uECC_vli_cmp
	and	w8, w0, #0xff
	cmp	w8, #1
	b.ne	.LBB38_13
// %bb.5:
	mov	x0, sp
	sub	x1, x29, #32
	mov	x2, x20
	bl	EccPoint_compute_public_key
	cbz	w0, .LBB38_14
// %bb.6:
	ldrsb	w9, [x20, #1]
	subs	w8, w9, #1
	b.lt	.LBB38_12
// %bb.7:
	lsl	w10, w9, #3
	and	x9, x9, #0xff
	mov	x11, sp
	mov	x12, x19
	sub	w10, w10, #8
.LBB38_8:                               // =>This Inner Loop Header: Depth=1
	and	w13, w8, #0xfffffffc
	and	w14, w10, #0x18
	sub	x9, x9, #1
	ldr	w13, [x11, w13, uxtw]
	sub	w10, w10, #8
	sub	w8, w8, #1
	lsr	w13, w13, w14
	strb	w13, [x12], #1
	cbnz	x9, .LBB38_8
// %bb.9:
	ldrsb	x12, [x20, #1]
	cmp	x12, #1
	b.lt	.LBB38_12
// %bb.10:
	ldrsb	x9, [x20]
	mov	x10, sp
	lsl	w11, w12, #3
	add	x8, x19, x12
	add	x9, x10, x9, lsl #2
	mov	w10, w12
	sub	w11, w11, #8
	and	x10, x10, #0xff
	sub	w12, w12, #1
.LBB38_11:                              // =>This Inner Loop Header: Depth=1
	and	w13, w12, #0xfffffffc
	and	w14, w11, #0x18
	sub	x10, x10, #1
	ldr	w13, [x9, w13, uxtw]
	sub	w11, w11, #8
	sub	w12, w12, #1
	lsr	w13, w13, w14
	strb	w13, [x8], #1
	cbnz	x10, .LBB38_11
.LBB38_12:
	mov	w0, #1                          // =0x1
	b	.LBB38_14
.LBB38_13:
	mov	w0, wzr
.LBB38_14:
	.cfi_def_cfa wsp, 144
	ldp	x20, x19, [sp, #128]            // 16-byte Folded Reload
	ldp	x22, x21, [sp, #112]            // 16-byte Folded Reload
	ldp	x29, x30, [sp, #96]             // 16-byte Folded Reload
	add	sp, sp, #144
	.cfi_def_cfa_offset 0
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end38:
	.size	uECC_compute_public_key, .Lfunc_end38-uECC_compute_public_key
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
