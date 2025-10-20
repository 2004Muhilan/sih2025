	.arch armv8-a
	.file	"tinycrypt_ecc.c"
	.text
	.align	2
	.p2align 4,,11
	.type	uECC_vli_mult, %function
uECC_vli_mult:
.LFB32:
	.cfi_startproc
	sxtb	w3, w3
	cmp	w3, 0
	ble	.L13
	sxtw	x14, w3
	mov	x13, 0
	mov	w7, 0
	mov	w6, 0
	.p2align 3,,7
.L3:
	mov	w12, w13
	sxtb	w11, w13
	uxtw	x5, w6
	mov	w8, 0
	mov	w6, w7
	mov	w7, 0
	.p2align 3,,7
.L6:
	sub	w4, w12, w8
	ldr	w10, [x1, w8, sxtw 2]
	orr	x5, x5, x6, lsl 32
	add	w9, w8, 1
	ldr	w4, [x2, w4, sxtw 2]
	sxtb	w8, w9
	umull	x4, w4, w10
	adds	x4, x4, x5
	cinc	w7, w7, cs
	uxtw	x5, w4
	lsr	x6, x4, 32
	cmp	w11, w9, sxtb
	bge	.L6
	str	w4, [x0, x13, lsl 2]
	add	x13, x13, 1
	cmp	x13, x14
	bne	.L3
.L2:
	lsl	w15, w3, 1
	mov	w4, w3
	sub	w14, w15, #1
	cmp	w3, w14
	bge	.L7
	mov	w13, w3
	mov	w12, 1
	.p2align 3,,7
.L12:
	sxtb	x8, w12
	cmp	w3, w12, sxtb
	ble	.L14
	sxtw	x9, w4
	uxtw	x5, w6
	sub	x9, x9, x8
	mov	w6, w7
	mov	w7, 0
	add	x9, x2, x9, lsl 2
	.p2align 3,,7
.L11:
	ldr	w4, [x1, x8, lsl 2]
	orr	x5, x5, x6, lsl 32
	ldr	w11, [x9], -4
	add	x8, x8, 1
	sxtb	w10, w8
	umull	x4, w4, w11
	adds	x4, x4, x5
	cinc	w7, w7, cs
	uxtw	x5, w4
	lsr	x6, x4, 32
	cmp	w3, w10
	bgt	.L11
	add	w4, w13, 1
	add	w12, w12, 1
	str	w5, [x0, w13, sxtw 2]
	and	w12, w12, 255
	sxtb	w13, w4
	mov	w4, w13
	cmp	w13, w14
	blt	.L12
.L7:
	add	x15, x0, w15, sxtw 2
	str	w6, [x15, -4]
	ret
	.p2align 2,,3
.L14:
	add	w4, w13, 1
	mov	w5, w6
	add	w12, w12, 1
	str	w5, [x0, w13, sxtw 2]
	sxtb	w13, w4
	mov	w6, w7
	and	w12, w12, 255
	mov	w4, w13
	mov	w7, 0
	cmp	w13, w14
	blt	.L12
	b	.L7
.L13:
	mov	w7, 0
	mov	w6, 0
	b	.L2
	.cfi_endproc
.LFE32:
	.size	uECC_vli_mult, .-uECC_vli_mult
	.align	2
	.p2align 4,,11
	.global	vli_mmod_fast_secp256r1
	.type	vli_mmod_fast_secp256r1, %function
vli_mmod_fast_secp256r1:
.LFB44:
	.cfi_startproc
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	adrp	x2, :got:__stack_chk_guard
	ldr	x2, [x2, :got_lo12:__stack_chk_guard]
	stp	x29, x30, [sp, 48]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 48
	ldr	x3, [x2]
	str	x3, [sp, 40]
	mov	x3, 0
	mov	x2, 0
	.p2align 3,,7
.L20:
	ldr	w3, [x1, x2]
	str	w3, [x0, x2]
	add	x2, x2, 4
	cmp	x2, 32
	bne	.L20
	ldr	q0, [x1, 44]
	mov	x4, sp
	ldr	w3, [x1, 60]
	mov	x8, x4
	mov	x2, x4
	add	x10, sp, 32
	mov	w7, 0
	str	xzr, [sp]
	str	wzr, [sp, 8]
	str	w3, [sp, 28]
	str	q0, [sp, 12]
	.p2align 3,,7
.L21:
	ldr	w5, [x2]
	add	w3, w7, w5, lsl 1
	str	w3, [x2], 4
	cmp	w5, w3
	csel	w7, w7, wzr, eq
	cset	w3, hi
	orr	w7, w7, w3
	cmp	x10, x2
	bne	.L21
	sub	x2, x0, #4
	mov	x6, 1
	mov	w3, 0
	.p2align 3,,7
.L22:
	add	x5, x4, x6, lsl 2
	ldr	w9, [x2, x6, lsl 2]
	ldr	w5, [x5, -4]
	add	w5, w9, w5
	add	w5, w5, w3
	str	w5, [x2, x6, lsl 2]
	cmp	w9, w5
	add	x6, x6, 1
	csel	w3, w3, wzr, eq
	cset	w5, hi
	orr	w3, w3, w5
	cmp	x6, 9
	bne	.L22
	ldr	q0, [x1, 48]
	mov	w11, 0
	str	wzr, [sp, 28]
	str	q0, [sp, 12]
	.p2align 3,,7
.L23:
	ldr	w6, [x8]
	add	w5, w11, w6, lsl 1
	str	w5, [x8], 4
	cmp	w6, w5
	csel	w11, w11, wzr, eq
	cset	w5, hi
	orr	w11, w11, w5
	cmp	x10, x8
	bne	.L23
	mov	x6, 1
	mov	w9, 0
	.p2align 3,,7
.L24:
	add	x5, x4, x6, lsl 2
	ldr	w8, [x2, x6, lsl 2]
	ldr	w5, [x5, -4]
	add	w5, w8, w5
	add	w5, w5, w9
	str	w5, [x2, x6, lsl 2]
	cmp	w8, w5
	add	x6, x6, 1
	csel	w9, w9, wzr, eq
	cset	w5, hi
	orr	w9, w9, w5
	cmp	x6, 9
	bne	.L24
	ldr	d1, [x1, 32]
	mov	x6, 1
	ldr	d0, [x1, 56]
	mov	w13, 0
	ldr	w5, [x1, 40]
	str	w5, [sp, 8]
	str	xzr, [sp, 12]
	str	wzr, [sp, 20]
	str	d1, [sp]
	str	d0, [sp, 24]
	.p2align 3,,7
.L25:
	add	x5, x4, x6, lsl 2
	ldr	w8, [x2, x6, lsl 2]
	ldr	w5, [x5, -4]
	add	w5, w8, w5
	add	w5, w5, w13
	str	w5, [x2, x6, lsl 2]
	cmp	w8, w5
	add	x6, x6, 1
	csel	w13, w13, wzr, eq
	cset	w5, hi
	orr	w13, w13, w5
	cmp	x6, 9
	bne	.L25
	ldp	q1, q0, [x1, 32]
	adrp	x5, .LC0
	mov	x6, 1
	mov	w8, 0
	ldr	q5, [x5, #:lo12:.LC0]
	adrp	x5, .LC1
	mov	v3.16b, v0.16b
	ldr	q4, [x5, #:lo12:.LC1]
	mov	v2.16b, v1.16b
	tbl	v0.16b, {v0.16b - v1.16b}, v4.16b
	tbl	v2.16b, {v2.16b - v3.16b}, v5.16b
	stp	q2, q0, [sp]
	.p2align 3,,7
.L26:
	add	x5, x4, x6, lsl 2
	ldr	w10, [x2, x6, lsl 2]
	ldr	w5, [x5, -4]
	add	w5, w10, w5
	add	w5, w5, w8
	str	w5, [x2, x6, lsl 2]
	cmp	w10, w5
	add	x6, x6, 1
	csel	w8, w8, wzr, eq
	cset	w5, hi
	orr	w8, w8, w5
	cmp	x6, 9
	bne	.L26
	ldr	d0, [x1, 44]
	mov	x5, 1
	ldr	w12, [x1, 32]
	mov	w10, 0
	ldr	w6, [x1, 40]
	ldr	w14, [x1, 52]
	str	w14, [sp, 8]
	str	xzr, [sp, 12]
	stp	wzr, w12, [sp, 20]
	str	w6, [sp, 28]
	str	d0, [sp]
	.p2align 3,,7
.L27:
	add	x14, x4, x5, lsl 2
	ldr	w12, [x2, x5, lsl 2]
	sub	w6, w12, w10
	ldr	w14, [x14, -4]
	sub	w6, w6, w14
	str	w6, [x2, x5, lsl 2]
	cmp	w12, w6
	add	x5, x5, 1
	csel	w10, w10, wzr, eq
	cset	w6, cc
	orr	w10, w10, w6
	cmp	x5, 9
	bne	.L27
	ldr	q0, [x1, 48]
	mov	x5, 1
	ldr	w14, [x1, 36]
	mov	w6, 0
	ldr	w12, [x1, 44]
	stp	w14, w12, [sp, 24]
	str	q0, [sp]
	.p2align 3,,7
.L28:
	add	x12, x4, x5, lsl 2
	ldr	w14, [x2, x5, lsl 2]
	ldr	w15, [x12, -4]
	sub	w12, w14, w6
	sub	w12, w12, w15
	str	w12, [x2, x5, lsl 2]
	cmp	w14, w12
	add	x5, x5, 1
	csel	w6, w6, wzr, eq
	cset	w12, cc
	orr	w6, w6, w12
	cmp	x5, 9
	bne	.L28
	ldp	q1, q0, [x1, 32]
	add	w7, w3, w7
	add	w9, w9, w11
	add	w8, w8, w13
	add	w7, w7, w9
	add	w6, w6, w10
	ext	v0.16b, v0.16b, v1.16b, #4
	ldr	d1, [x1, 36]
	ldr	w5, [x1, 48]
	add	w7, w7, w8
	sub	w7, w7, w6
	mov	x3, 1
	mov	w6, 0
	stp	wzr, w5, [sp, 24]
	str	q0, [sp]
	str	d1, [sp, 16]
	.p2align 3,,7
.L29:
	add	x9, x4, x3, lsl 2
	ldr	w8, [x2, x3, lsl 2]
	sub	w5, w8, w6
	ldr	w9, [x9, -4]
	sub	w5, w5, w9
	str	w5, [x2, x3, lsl 2]
	cmp	w8, w5
	add	x3, x3, 1
	csel	w6, w6, wzr, eq
	cset	w5, cc
	orr	w6, w6, w5
	cmp	x3, 9
	bne	.L29
	ldr	x9, [x1, 40]
	mov	x3, 1
	ldr	d0, [x1, 56]
	mov	w5, 0
	ldr	w10, [x1, 36]
	ldr	w8, [x1, 52]
	stp	wzr, w10, [sp, 8]
	str	x9, [sp, 16]
	str	w8, [sp, 28]
	str	d0, [sp]
	.p2align 3,,7
.L30:
	add	x9, x4, x3, lsl 2
	ldr	w8, [x2, x3, lsl 2]
	sub	w1, w8, w5
	ldr	w9, [x9, -4]
	sub	w1, w1, w9
	str	w1, [x2, x3, lsl 2]
	cmp	w8, w1
	add	x3, x3, 1
	csel	w5, w5, wzr, eq
	cset	w1, cc
	orr	w5, w5, w1
	cmp	x3, 9
	bne	.L30
	add	w5, w5, w6
	adrp	x1, .LANCHOR0
	subs	w7, w7, w5
	add	x6, x1, :lo12:.LANCHOR0
	bmi	.L59
	.p2align 3,,7
.L31:
	cbnz	w7, .L40
	mov	x1, 7
	b	.L37
	.p2align 2,,3
.L60:
	bcc	.L40
	sub	x1, x1, #1
	cmn	x1, #1
	beq	.L40
.L37:
	add	x2, x6, x1, lsl 2
	ldr	w3, [x0, x1, lsl 2]
	ldr	w2, [x2, 4]
	cmp	w2, w3
	bls	.L60
.L19:
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 40]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	bne	.L61
	ldp	x29, x30, [sp, 48]
	add	sp, sp, 64
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L40:
	.cfi_restore_state
	mov	x1, 0
	mov	w2, 0
	.p2align 3,,7
.L34:
	add	x5, x6, x1
	ldr	w4, [x0, x1]
	sub	w3, w4, w2
	ldr	w5, [x5, 4]
	sub	w3, w3, w5
	str	w3, [x0, x1]
	cmp	w4, w3
	add	x1, x1, 4
	csel	w2, w2, wzr, eq
	cset	w3, cc
	orr	w2, w2, w3
	cmp	x1, 32
	bne	.L34
	sub	w7, w7, w2
	b	.L31
.L59:
	mov	x5, x6
	.p2align 3,,7
.L33:
	mov	x2, 0
	mov	w3, 0
	.p2align 3,,7
.L32:
	add	x1, x5, x2
	ldr	w4, [x0, x2]
	ldr	w1, [x1, 4]
	add	w1, w4, w1
	add	w1, w1, w3
	str	w1, [x0, x2]
	cmp	w4, w1
	add	x2, x2, 4
	csel	w3, w3, wzr, eq
	cset	w1, hi
	orr	w3, w3, w1
	cmp	x2, 32
	bne	.L32
	adds	w7, w7, w3
	bmi	.L33
	b	.L19
.L61:
	bl	__stack_chk_fail
	.cfi_endproc
.LFE44:
	.size	vli_mmod_fast_secp256r1, .-vli_mmod_fast_secp256r1
	.align	2
	.p2align 4,,11
	.type	vli_modInv_update, %function
vli_modInv_update:
.LFB39:
	.cfi_startproc
	ldr	w3, [x0]
	sbfiz	x6, x2, 2, 8
	mov	x7, x1
	sxtb	w2, w2
	add	x1, x0, x6
	and	w4, w3, 1
	tbnz	x3, 0, .L80
.L79:
	cmp	x0, x1
	bcs	.L62
.L67:
	mov	w2, 0
	.p2align 3,,7
.L71:
	ldr	w3, [x1, -4]
	orr	w2, w2, w3, lsr 1
	str	w2, [x1, -4]!
	lsl	w2, w3, 31
	cmp	x0, x1
	bcc	.L71
.L70:
	cbz	w4, .L62
	sub	x6, x6, #4
	ldr	w1, [x0, x6]
	orr	w1, w1, -2147483648
	str	w1, [x0, x6]
.L62:
	ret
	.p2align 2,,3
.L80:
	cmp	w2, 0
	ble	.L64
	mov	x3, 0
	mov	w4, 0
	.p2align 3,,7
.L65:
	ldr	w5, [x0, x3]
	ldr	w2, [x7, x3]
	add	w2, w5, w2
	add	w2, w2, w4
	str	w2, [x0, x3]
	cmp	w5, w2
	add	x3, x3, 4
	csel	w4, w4, wzr, eq
	cset	w2, hi
	orr	w4, w4, w2
	cmp	x3, x6
	bne	.L65
	cmp	x0, x1
	bcc	.L67
	b	.L70
.L64:
	mov	w4, 0
	b	.L79
	.cfi_endproc
.LFE39:
	.size	vli_modInv_update, .-vli_modInv_update
	.align	2
	.p2align 4,,11
	.global	uECC_set_rng
	.type	uECC_set_rng, %function
uECC_set_rng:
.LFB14:
	.cfi_startproc
	adrp	x1, .LANCHOR1
	str	x0, [x1, #:lo12:.LANCHOR1]
	ret
	.cfi_endproc
.LFE14:
	.size	uECC_set_rng, .-uECC_set_rng
	.align	2
	.p2align 4,,11
	.global	uECC_get_rng
	.type	uECC_get_rng, %function
uECC_get_rng:
.LFB15:
	.cfi_startproc
	adrp	x0, .LANCHOR1
	ldr	x0, [x0, #:lo12:.LANCHOR1]
	ret
	.cfi_endproc
.LFE15:
	.size	uECC_get_rng, .-uECC_get_rng
	.align	2
	.p2align 4,,11
	.global	uECC_curve_private_key_size
	.type	uECC_curve_private_key_size, %function
uECC_curve_private_key_size:
.LFB16:
	.cfi_startproc
	ldrsh	w1, [x0, 2]
	add	w0, w1, 14
	adds	w1, w1, 7
	csel	w0, w0, w1, mi
	asr	w0, w0, 3
	ret
	.cfi_endproc
.LFE16:
	.size	uECC_curve_private_key_size, .-uECC_curve_private_key_size
	.align	2
	.p2align 4,,11
	.global	uECC_curve_public_key_size
	.type	uECC_curve_public_key_size, %function
uECC_curve_public_key_size:
.LFB17:
	.cfi_startproc
	ldrsb	w0, [x0, 1]
	lsl	w0, w0, 1
	ret
	.cfi_endproc
.LFE17:
	.size	uECC_curve_public_key_size, .-uECC_curve_public_key_size
	.align	2
	.p2align 4,,11
	.global	uECC_vli_clear
	.type	uECC_vli_clear, %function
uECC_vli_clear:
.LFB18:
	.cfi_startproc
	sxtb	w1, w1
	cmp	w1, 0
	ble	.L85
	ubfiz	x2, x1, 2, 8
	mov	w1, 0
	b	memset
	.p2align 2,,3
.L85:
	ret
	.cfi_endproc
.LFE18:
	.size	uECC_vli_clear, .-uECC_vli_clear
	.align	2
	.p2align 4,,11
	.global	uECC_vli_isZero
	.type	uECC_vli_isZero, %function
uECC_vli_isZero:
.LFB19:
	.cfi_startproc
	sxtb	w1, w1
	cmp	w1, 0
	ble	.L90
	add	x1, x0, w1, sxtw 2
	mov	w2, 0
	.p2align 3,,7
.L89:
	ldr	w3, [x0], 4
	orr	w2, w2, w3
	cmp	x0, x1
	bne	.L89
	cmp	w2, 0
	cset	w0, eq
	ret
	.p2align 2,,3
.L90:
	mov	w0, 1
	ret
	.cfi_endproc
.LFE19:
	.size	uECC_vli_isZero, .-uECC_vli_isZero
	.align	2
	.p2align 4,,11
	.global	uECC_vli_testBit
	.type	uECC_vli_testBit, %function
uECC_vli_testBit:
.LFB20:
	.cfi_startproc
	sbfx	w3, w1, 5, 11
	mov	w2, 1
	lsl	w1, w2, w1
	ldr	w0, [x0, w3, sxtw 2]
	and	w0, w1, w0
	ret
	.cfi_endproc
.LFE20:
	.size	uECC_vli_testBit, .-uECC_vli_testBit
	.align	2
	.p2align 4,,11
	.global	uECC_vli_numBits
	.type	uECC_vli_numBits, %function
uECC_vli_numBits:
.LFB22:
	.cfi_startproc
	sxtb	w1, w1
	mov	x4, x0
	sub	w3, w1, #1
	and	w2, w3, 255
	tbnz	x3, 7, .L94
	uxtw	x1, w2
	b	.L95
	.p2align 2,,3
.L96:
	tbnz	x2, 7, .L103
	mov	x1, x2
.L95:
	ldr	w3, [x4, x1, lsl 2]
	sub	x2, x1, #1
	cbz	w3, .L96
	add	w1, w1, 1
.L103:
	sxtb	w1, w1
.L94:
	mov	w0, 0
	cbz	w1, .L97
	add	x4, x4, w1, sxtw 2
	mov	w0, 32
	sub	w1, w1, #1
	ldr	w2, [x4, -4]
	clz	w3, w2
	cmp	w2, 0
	sub	w0, w0, w3
	and	w0, w0, 65535
	csel	w0, w0, wzr, ne
	add	w1, w0, w1, lsl 5
	sxth	w0, w1
.L97:
	ret
	.cfi_endproc
.LFE22:
	.size	uECC_vli_numBits, .-uECC_vli_numBits
	.align	2
	.p2align 4,,11
	.global	uECC_vli_set
	.type	uECC_vli_set, %function
uECC_vli_set:
.LFB23:
	.cfi_startproc
	sxtb	w2, w2
	cmp	w2, 0
	ble	.L104
	sbfiz	x2, x2, 2, 32
	mov	x3, 0
	.p2align 3,,7
.L106:
	ldr	w4, [x1, x3]
	str	w4, [x0, x3]
	add	x3, x3, 4
	cmp	x3, x2
	bne	.L106
.L104:
	ret
	.cfi_endproc
.LFE23:
	.size	uECC_vli_set, .-uECC_vli_set
	.align	2
	.p2align 4,,11
	.global	uECC_vli_cmp_unsafe
	.type	uECC_vli_cmp_unsafe, %function
uECC_vli_cmp_unsafe:
.LFB24:
	.cfi_startproc
	sxtb	w2, w2
	sub	w3, w2, #1
	and	x2, x3, 255
	tbz	x3, 7, .L110
	b	.L111
	.p2align 2,,3
.L115:
	bcc	.L113
	tbnz	x2, 7, .L111
.L110:
	ldr	w4, [x0, x2, lsl 2]
	ldr	w3, [x1, x2, lsl 2]
	sub	x2, x2, #1
	cmp	w4, w3
	bls	.L115
	mov	w0, 1
	ret
	.p2align 2,,3
.L111:
	mov	w0, 0
	ret
	.p2align 2,,3
.L113:
	mov	w0, -1
	ret
	.cfi_endproc
.LFE24:
	.size	uECC_vli_cmp_unsafe, .-uECC_vli_cmp_unsafe
	.align	2
	.p2align 4,,11
	.global	uECC_vli_equal
	.type	uECC_vli_equal, %function
uECC_vli_equal:
.LFB25:
	.cfi_startproc
	sxtb	w2, w2
	sub	w3, w2, #1
	and	x2, x3, 255
	tbnz	x3, 7, .L119
	mov	w4, 0
	.p2align 3,,7
.L118:
	ldr	w3, [x0, x2, lsl 2]
	ldr	w5, [x1, x2, lsl 2]
	sub	x2, x2, #1
	eor	w3, w3, w5
	orr	w4, w4, w3
	tbz	x2, 7, .L118
	cmp	w4, 0
	cset	w0, ne
	ret
	.p2align 2,,3
.L119:
	mov	w0, 0
	ret
	.cfi_endproc
.LFE25:
	.size	uECC_vli_equal, .-uECC_vli_equal
	.align	2
	.p2align 4,,11
	.global	cond_set
	.type	cond_set, %function
cond_set:
.LFB26:
	.cfi_startproc
	mul	w0, w0, w2
	cmp	w2, 0
	csel	w1, w1, wzr, eq
	orr	w0, w1, w0
	ret
	.cfi_endproc
.LFE26:
	.size	cond_set, .-cond_set
	.align	2
	.p2align 4,,11
	.global	uECC_vli_sub
	.type	uECC_vli_sub, %function
uECC_vli_sub:
.LFB27:
	.cfi_startproc
	sxtb	w3, w3
	mov	x8, x0
	cmp	w3, 0
	ble	.L125
	sbfiz	x3, x3, 2, 32
	mov	x4, 0
	mov	w0, 0
	.p2align 3,,7
.L124:
	ldr	w6, [x1, x4]
	ldr	w7, [x2, x4]
	sub	w5, w6, w0
	sub	w5, w5, w7
	str	w5, [x8, x4]
	cmp	w6, w5
	add	x4, x4, 4
	csel	w0, w0, wzr, eq
	cset	w5, cc
	orr	w0, w0, w5
	cmp	x4, x3
	bne	.L124
	ret
	.p2align 2,,3
.L125:
	mov	w0, 0
	ret
	.cfi_endproc
.LFE27:
	.size	uECC_vli_sub, .-uECC_vli_sub
	.align	2
	.p2align 4,,11
	.global	uECC_vli_cmp
	.type	uECC_vli_cmp, %function
uECC_vli_cmp:
.LFB29:
	.cfi_startproc
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	sxtb	x2, w2
	adrp	x3, :got:__stack_chk_guard
	ldr	x3, [x3, :got_lo12:__stack_chk_guard]
	stp	x29, x30, [sp, 48]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 48
	ldr	x4, [x3]
	str	x4, [sp, 40]
	mov	x4, 0
	cmp	w2, 0
	ble	.L132
	add	x6, sp, 8
	sub	x10, x0, #4
	sub	x9, x1, #4
	mov	x0, 1
	mov	w1, 0
	.p2align 3,,7
.L129:
	ldr	w5, [x10, x0, lsl 2]
	add	x7, x6, x0, lsl 2
	ldr	w8, [x9, x0, lsl 2]
	mov	x4, x0
	sub	w3, w5, w1
	add	x0, x0, 1
	sub	w3, w3, w8
	str	w3, [x7, -4]
	cmp	w5, w3
	csel	w1, w1, wzr, eq
	cset	w3, cc
	orr	w1, w1, w3
	cmp	x4, x2
	bne	.L129
	cmp	w1, 0
	mov	x0, 1
	cset	w5, ne
	mov	w3, 0
	.p2align 3,,7
.L130:
	add	x4, x6, x0, lsl 2
	cmp	x0, x2
	add	x0, x0, 1
	ldr	w4, [x4, -4]
	orr	w3, w3, w4
	bne	.L130
	cmp	w3, 0
	cset	w0, ne
	sub	w0, w0, w5, lsl 1
	sxtb	w0, w0
.L128:
	adrp	x1, :got:__stack_chk_guard
	ldr	x1, [x1, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 40]
	ldr	x2, [x1]
	subs	x3, x3, x2
	mov	x2, 0
	bne	.L136
	ldp	x29, x30, [sp, 48]
	add	sp, sp, 64
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L132:
	.cfi_restore_state
	mov	w0, 0
	b	.L128
.L136:
	bl	__stack_chk_fail
	.cfi_endproc
.LFE29:
	.size	uECC_vli_cmp, .-uECC_vli_cmp
	.align	2
	.p2align 4,,11
	.global	uECC_vli_modAdd
	.type	uECC_vli_modAdd, %function
uECC_vli_modAdd:
.LFB33:
	.cfi_startproc
	sxtb	w4, w4
	cmp	w4, 0
	ble	.L138
	sxtw	x10, w4
	sbfiz	x9, x4, 2, 32
	mov	x6, 0
	mov	w7, 0
	.p2align 3,,7
.L139:
	ldr	w8, [x1, x6]
	ldr	w5, [x2, x6]
	add	w5, w8, w5
	add	w5, w5, w7
	str	w5, [x0, x6]
	cmp	w8, w5
	add	x6, x6, 4
	csel	w7, w7, wzr, eq
	cset	w5, hi
	orr	w7, w7, w5
	cmp	x6, x9
	bne	.L139
	sub	w1, w4, #1
	sxtb	x1, w1
	cbz	w7, .L144
	b	.L140
	.p2align 2,,3
.L152:
	bcc	.L143
	tbnz	x1, 7, .L143
.L144:
	ldr	w5, [x3, x1, lsl 2]
	ldr	w2, [x0, x1, lsl 2]
	sub	x1, x1, #1
	cmp	w5, w2
	bls	.L152
.L137:
	ret
	.p2align 2,,3
.L143:
	sxtw	x10, w4
	cmp	w4, 0
	ble	.L137
.L140:
	lsl	x7, x10, 2
	mov	x1, 0
	mov	w2, 0
	.p2align 3,,7
.L145:
	ldr	w5, [x0, x1]
	ldr	w6, [x3, x1]
	sub	w4, w5, w2
	sub	w4, w4, w6
	str	w4, [x0, x1]
	cmp	w5, w4
	add	x1, x1, 4
	csel	w2, w2, wzr, eq
	cset	w4, cc
	orr	w2, w2, w4
	cmp	x1, x7
	bne	.L145
	ret
	.p2align 2,,3
.L138:
	sub	w1, w4, #1
	tbnz	x1, 7, .L137
	mov	x1, 127
	b	.L144
	.cfi_endproc
.LFE33:
	.size	uECC_vli_modAdd, .-uECC_vli_modAdd
	.align	2
	.p2align 4,,11
	.global	x_side_default
	.type	x_side_default, %function
x_side_default:
.LFB42:
	.cfi_startproc
	sub	sp, sp, #176
	.cfi_def_cfa_offset 176
	mov	w4, 3
	stp	x29, x30, [sp, 112]
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	add	x29, sp, 112
	stp	x21, x22, [sp, 144]
	.cfi_offset 21, -32
	.cfi_offset 22, -24
	mov	x21, x2
	add	x22, x21, 4
	adrp	x2, :got:__stack_chk_guard
	ldr	x2, [x2, :got_lo12:__stack_chk_guard]
	stp	x19, x20, [sp, 128]
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	mov	x20, x0
	stp	x23, x24, [sp, 160]
	.cfi_offset 23, -16
	.cfi_offset 24, -8
	add	x19, sp, 40
	mov	x24, x1
	ldr	x0, [x2]
	str	x0, [sp, 104]
	mov	x0, 0
	str	w4, [sp, 8]
	add	x4, sp, 4
	ldrsb	w23, [x21]
	mov	x2, x1
	mov	x0, x19
	mov	w3, w23
	stp	xzr, xzr, [x4, 8]
	str	xzr, [sp, 28]
	str	wzr, [sp, 36]
	bl	uECC_vli_mult
	ldr	x2, [x21, 184]
	mov	x1, x19
	mov	x0, x20
	blr	x2
	cmp	w23, 0
	ble	.L154
	sxtw	x0, w23
	sub	x9, x20, #4
	add	x1, sp, 8
	mov	x3, 1
	mov	w5, 0
	.p2align 3,,7
.L155:
	add	x10, x1, x3, lsl 2
	ldr	w8, [x9, x3, lsl 2]
	sub	w6, w8, w5
	ldr	w10, [x10, -4]
	sub	w6, w6, w10
	str	w6, [x9, x3, lsl 2]
	cmp	w8, w6
	csel	w5, w5, wzr, eq
	cset	w6, cc
	orr	w5, w5, w6
	cmp	x3, x0
	add	x3, x3, 1
	bne	.L155
	cbnz	w5, .L165
.L154:
	ldrb	w3, [x21]
	mov	x2, x24
	mov	x1, x20
	mov	x0, x19
	bl	uECC_vli_mult
	mov	x1, x19
	ldr	x2, [x21, 184]
	mov	x0, x20
	blr	x2
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 104]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	bne	.L166
	ldp	x29, x30, [sp, 112]
	mov	w4, w23
	ldp	x23, x24, [sp, 160]
	mov	x3, x22
	add	x2, x21, 132
	mov	x1, x20
	ldp	x21, x22, [sp, 144]
	mov	x0, x20
	ldp	x19, x20, [sp, 128]
	add	sp, sp, 176
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	b	uECC_vli_modAdd
	.p2align 2,,3
.L165:
	.cfi_restore_state
	lsl	x0, x0, 2
	mov	x5, 0
	mov	w6, 0
	.p2align 3,,7
.L156:
	ldr	w1, [x20, x5]
	ldr	w3, [x22, x5]
	add	w3, w1, w3
	add	w3, w3, w6
	str	w3, [x20, x5]
	cmp	w1, w3
	add	x5, x5, 4
	csel	w6, w6, wzr, eq
	cset	w1, hi
	orr	w6, w6, w1
	cmp	x5, x0
	bne	.L156
	b	.L154
.L166:
	bl	__stack_chk_fail
	.cfi_endproc
.LFE42:
	.size	x_side_default, .-x_side_default
	.align	2
	.p2align 4,,11
	.global	uECC_vli_modSub
	.type	uECC_vli_modSub, %function
uECC_vli_modSub:
.LFB34:
	.cfi_startproc
	sxtb	w4, w4
	cmp	w4, 0
	ble	.L167
	sbfiz	x4, x4, 2, 32
	mov	x5, 0
	mov	w6, 0
	.p2align 3,,7
.L169:
	ldr	w8, [x1, x5]
	ldr	w9, [x2, x5]
	sub	w7, w8, w6
	sub	w7, w7, w9
	str	w7, [x0, x5]
	cmp	w8, w7
	add	x5, x5, 4
	csel	w6, w6, wzr, eq
	cset	w7, cc
	orr	w6, w6, w7
	cmp	x5, x4
	bne	.L169
	cbnz	w6, .L176
.L167:
	ret
	.p2align 2,,3
.L176:
	mov	x2, 0
	mov	w5, 0
	.p2align 3,,7
.L170:
	ldr	w6, [x0, x2]
	ldr	w1, [x3, x2]
	add	w1, w6, w1
	add	w1, w1, w5
	str	w1, [x0, x2]
	cmp	w6, w1
	add	x2, x2, 4
	csel	w5, w5, wzr, eq
	cset	w1, hi
	orr	w5, w5, w1
	cmp	x2, x4
	bne	.L170
	ret
	.cfi_endproc
.LFE34:
	.size	uECC_vli_modSub, .-uECC_vli_modSub
	.align	2
	.p2align 4,,11
	.global	double_jacobian_default
	.type	double_jacobian_default, %function
double_jacobian_default:
.LFB41:
	.cfi_startproc
	sub	sp, sp, #240
	.cfi_def_cfa_offset 240
	stp	x29, x30, [sp, 144]
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	add	x29, sp, 144
	stp	x21, x22, [sp, 176]
	.cfi_offset 21, -64
	.cfi_offset 22, -56
	mov	x22, x3
	adrp	x3, :got:__stack_chk_guard
	ldr	x3, [x3, :got_lo12:__stack_chk_guard]
	stp	x19, x20, [sp, 160]
	.cfi_offset 19, -80
	.cfi_offset 20, -72
	mov	x19, x0
	ldrsb	w21, [x22]
	ldr	x0, [x3]
	str	x0, [sp, 136]
	mov	x0, 0
	cmp	w21, 0
	ble	.L177
	stp	x25, x26, [sp, 208]
	.cfi_offset 26, -24
	.cfi_offset 25, -32
	sbfiz	x26, x21, 2, 32
	mov	x20, x2
	stp	x27, x28, [sp, 224]
	.cfi_offset 28, -8
	.cfi_offset 27, -16
	mov	x27, x1
	mov	x4, x2
	add	x0, x2, x26
	mov	w2, 0
	.p2align 3,,7
.L179:
	ldr	w5, [x4], 4
	orr	w2, w2, w5
	cmp	x0, x4
	bne	.L179
	cbz	w2, .L202
	mov	x2, x27
	stp	x23, x24, [sp, 192]
	.cfi_offset 24, -40
	.cfi_offset 23, -48
	add	x24, sp, 72
	mov	w3, w21
	mov	x0, x24
	mov	x1, x27
	bl	uECC_vli_mult
	ldr	x2, [x22, 184]
	add	x23, sp, 8
	mov	x0, x23
	mov	x1, x24
	add	x25, sp, 40
	add	x28, x22, 4
	blr	x2
	ldrb	w3, [x22]
	mov	x2, x23
	mov	x1, x19
	mov	x0, x24
	bl	uECC_vli_mult
	mov	x0, x25
	ldr	x2, [x22, 184]
	mov	x1, x24
	blr	x2
	ldrb	w3, [x22]
	mov	x2, x23
	mov	x1, x23
	mov	x0, x24
	bl	uECC_vli_mult
	mov	x1, x24
	ldr	x2, [x22, 184]
	mov	x0, x23
	blr	x2
	ldrb	w3, [x22]
	mov	x2, x20
	mov	x1, x27
	mov	x0, x24
	bl	uECC_vli_mult
	mov	x1, x24
	ldr	x2, [x22, 184]
	mov	x0, x27
	blr	x2
	ldrb	w3, [x22]
	mov	x2, x20
	mov	x1, x20
	mov	x0, x24
	bl	uECC_vli_mult
	mov	x1, x24
	ldr	x2, [x22, 184]
	mov	x0, x20
	blr	x2
	mov	x3, x28
	mov	w4, w21
	mov	x2, x20
	mov	x1, x19
	mov	x0, x19
	bl	uECC_vli_modAdd
	mov	w4, w21
	mov	x0, x20
	mov	x2, x20
	mov	x1, x20
	bl	uECC_vli_modAdd
	mov	w4, w21
	mov	x2, x20
	mov	x1, x19
	bl	uECC_vli_modSub
	ldrb	w3, [x22]
	mov	x2, x20
	mov	x1, x19
	mov	x0, x24
	bl	uECC_vli_mult
	mov	x1, x24
	ldr	x2, [x22, 184]
	mov	x0, x19
	blr	x2
	mov	w4, w21
	mov	x3, x28
	mov	x2, x19
	mov	x1, x19
	mov	x0, x20
	bl	uECC_vli_modAdd
	mov	x2, x20
	mov	x1, x19
	mov	x0, x19
	mov	w4, w21
	bl	uECC_vli_modAdd
	ldr	w1, [x19]
	add	x2, x19, x26
	and	w0, w1, 1
	tbz	x1, 0, .L203
	mov	x4, 0
	mov	w5, 0
	.p2align 3,,7
.L182:
	ldr	w0, [x19, x4]
	ldr	w3, [x28, x4]
	add	w3, w0, w3
	add	w3, w3, w5
	str	w3, [x19, x4]
	cmp	w0, w3
	add	x4, x4, 4
	csel	w5, w5, wzr, eq
	cset	w0, hi
	orr	w5, w5, w0
	cmp	x26, x4
	bne	.L182
	mov	w0, 0
	cmp	x19, x2
	bcs	.L186
	.p2align 3,,7
.L185:
	ldr	w1, [x2, -4]
	orr	w0, w0, w1, lsr 1
	str	w0, [x2, -4]!
	lsl	w0, w1, 31
	cmp	x19, x2
	bcc	.L185
.L186:
	sub	x0, x26, #4
	ldr	w1, [x19, x0]
	orr	w5, w1, w5, lsl 31
	str	w5, [x19, x0]
.L184:
	ldrb	w3, [x22]
	mov	x2, x19
	mov	x1, x19
	mov	x0, x24
	bl	uECC_vli_mult
	mov	x1, x24
	ldr	x2, [x22, 184]
	mov	x0, x20
	blr	x2
	mov	x3, x28
	mov	x0, x20
	mov	w4, w21
	mov	x2, x25
	mov	x1, x20
	bl	uECC_vli_modSub
	mov	w4, w21
	mov	x2, x25
	mov	x1, x20
	bl	uECC_vli_modSub
	mov	w4, w21
	mov	x2, x20
	mov	x1, x25
	mov	x0, x25
	bl	uECC_vli_modSub
	ldrb	w3, [x22]
	mov	x2, x25
	mov	x1, x19
	mov	x0, x24
	bl	uECC_vli_mult
	mov	x1, x24
	ldr	x2, [x22, 184]
	mov	x0, x19
	blr	x2
	mov	x2, x23
	mov	w4, w21
	mov	x3, x28
	mov	x1, x19
	mov	x0, x23
	bl	uECC_vli_modSub
	mov	x2, 0
	.p2align 3,,7
.L190:
	ldr	w0, [x20, x2]
	str	w0, [x19, x2]
	add	x2, x2, 4
	cmp	x26, x2
	bne	.L190
	mov	x2, 0
	.p2align 3,,7
.L191:
	ldr	w0, [x27, x2]
	str	w0, [x20, x2]
	add	x2, x2, 4
	cmp	x26, x2
	bne	.L191
	mov	x1, x23
	mov	x0, x27
	ubfiz	x2, x21, 2, 8
	bl	memcpy
	ldp	x23, x24, [sp, 192]
	.cfi_restore 24
	.cfi_restore 23
	ldp	x25, x26, [sp, 208]
	.cfi_restore 26
	.cfi_restore 25
	ldp	x27, x28, [sp, 224]
	.cfi_restore 28
	.cfi_restore 27
.L177:
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 136]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	bne	.L204
	ldp	x29, x30, [sp, 144]
	ldp	x19, x20, [sp, 160]
	ldp	x21, x22, [sp, 176]
	add	sp, sp, 240
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L188:
	.cfi_def_cfa_offset 240
	.cfi_offset 19, -80
	.cfi_offset 20, -72
	.cfi_offset 21, -64
	.cfi_offset 22, -56
	.cfi_offset 23, -48
	.cfi_offset 24, -40
	.cfi_offset 25, -32
	.cfi_offset 26, -24
	.cfi_offset 27, -16
	.cfi_offset 28, -8
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	ldr	w1, [x2, -4]
	orr	w0, w0, w1, lsr 1
	str	w0, [x2, -4]!
	lsl	w0, w1, 31
.L203:
	cmp	x19, x2
	bcc	.L188
	b	.L184
	.p2align 2,,3
.L202:
	.cfi_restore 23
	.cfi_restore 24
	ldp	x25, x26, [sp, 208]
	.cfi_restore 26
	.cfi_restore 25
	ldp	x27, x28, [sp, 224]
	.cfi_restore 28
	.cfi_restore 27
	b	.L177
.L204:
	stp	x23, x24, [sp, 192]
	.cfi_offset 24, -40
	.cfi_offset 23, -48
	stp	x25, x26, [sp, 208]
	.cfi_offset 26, -24
	.cfi_offset 25, -32
	stp	x27, x28, [sp, 224]
	.cfi_offset 28, -8
	.cfi_offset 27, -16
	bl	__stack_chk_fail
	.cfi_endproc
.LFE41:
	.size	double_jacobian_default, .-double_jacobian_default
	.align	2
	.p2align 4,,11
	.type	XYcZ_addC, %function
XYcZ_addC:
.LFB49:
	.cfi_startproc
	sub	sp, sp, #272
	.cfi_def_cfa_offset 272
	stp	x29, x30, [sp, 176]
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	add	x29, sp, 176
	stp	x25, x26, [sp, 240]
	.cfi_offset 25, -32
	.cfi_offset 26, -24
	mov	x26, x0
	mov	x25, x2
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	stp	x27, x28, [sp, 256]
	.cfi_offset 27, -16
	.cfi_offset 28, -8
	mov	x27, x4
	stp	x19, x20, [sp, 192]
	.cfi_offset 19, -80
	.cfi_offset 20, -72
	mov	x19, x4
	mov	x28, x1
	stp	x21, x22, [sp, 208]
	.cfi_offset 21, -64
	.cfi_offset 22, -56
	add	x22, sp, 8
	mov	x1, x25
	stp	x23, x24, [sp, 224]
	.cfi_offset 23, -48
	.cfi_offset 24, -40
	mov	x2, x26
	mov	x24, x3
	ldr	x5, [x0]
	str	x5, [sp, 168]
	mov	x5, 0
	ldrsb	w21, [x27], 4
	mov	x0, x22
	add	x20, sp, 104
	mov	w4, w21
	mov	x3, x27
	bl	uECC_vli_modSub
	mov	w3, w21
	mov	x2, x22
	mov	x0, x20
	mov	x1, x22
	bl	uECC_vli_mult
	ldr	x2, [x19, 184]
	mov	x1, x20
	mov	x0, x22
	add	x23, sp, 40
	blr	x2
	ldrb	w3, [x19]
	mov	x2, x22
	mov	x1, x26
	mov	x0, x20
	bl	uECC_vli_mult
	mov	x1, x20
	ldr	x2, [x19, 184]
	mov	x0, x26
	blr	x2
	ldrb	w3, [x19]
	mov	x2, x22
	mov	x1, x25
	mov	x0, x20
	bl	uECC_vli_mult
	mov	x0, x25
	ldr	x2, [x19, 184]
	mov	x1, x20
	blr	x2
	mov	x3, x27
	mov	w4, w21
	mov	x2, x28
	mov	x1, x24
	mov	x0, x22
	bl	uECC_vli_modAdd
	mov	w4, w21
	mov	x2, x28
	mov	x1, x24
	mov	x0, x24
	bl	uECC_vli_modSub
	mov	x0, x23
	mov	w4, w21
	mov	x1, x25
	mov	x2, x26
	bl	uECC_vli_modSub
	ldrb	w3, [x19]
	mov	x2, x23
	mov	x1, x28
	mov	x0, x20
	bl	uECC_vli_mult
	mov	x1, x20
	ldr	x2, [x19, 184]
	mov	x0, x28
	blr	x2
	mov	x3, x27
	mov	w4, w21
	mov	x2, x25
	mov	x1, x26
	mov	x0, x23
	bl	uECC_vli_modAdd
	ldrb	w3, [x19]
	mov	x2, x24
	mov	x1, x24
	mov	x0, x20
	bl	uECC_vli_mult
	mov	x0, x25
	ldr	x2, [x19, 184]
	mov	x1, x20
	blr	x2
	mov	x0, x25
	mov	x3, x27
	mov	x1, x25
	mov	w4, w21
	add	x25, sp, 72
	mov	x2, x23
	bl	uECC_vli_modSub
	mov	w4, w21
	mov	x2, x0
	mov	x1, x26
	mov	x0, x25
	bl	uECC_vli_modSub
	ldrb	w3, [x19]
	mov	x2, x25
	mov	x1, x24
	mov	x0, x20
	bl	uECC_vli_mult
	mov	x1, x20
	ldr	x2, [x19, 184]
	mov	x0, x24
	blr	x2
	mov	x3, x27
	mov	w4, w21
	mov	x2, x28
	mov	x1, x24
	mov	x0, x24
	bl	uECC_vli_modSub
	ldrb	w3, [x19]
	mov	x2, x22
	mov	x1, x22
	mov	x0, x20
	bl	uECC_vli_mult
	mov	x1, x20
	ldr	x2, [x19, 184]
	mov	x0, x25
	blr	x2
	mov	x3, x27
	mov	w4, w21
	mov	x2, x23
	mov	x1, x25
	mov	x0, x25
	bl	uECC_vli_modSub
	mov	w4, w21
	mov	x2, x26
	mov	x1, x25
	mov	x0, x23
	bl	uECC_vli_modSub
	ldrb	w3, [x19]
	mov	x2, x22
	mov	x1, x23
	mov	x0, x20
	bl	uECC_vli_mult
	mov	x1, x20
	ldr	x2, [x19, 184]
	mov	x0, x23
	blr	x2
	mov	w4, w21
	mov	x3, x27
	mov	x2, x28
	mov	x1, x23
	mov	x0, x28
	bl	uECC_vli_modSub
	cmp	w21, 0
	ble	.L205
	ubfiz	x2, x21, 2, 8
	mov	x1, x25
	mov	x0, x26
	bl	memcpy
.L205:
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 168]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	bne	.L209
	ldp	x29, x30, [sp, 176]
	ldp	x19, x20, [sp, 192]
	ldp	x21, x22, [sp, 208]
	ldp	x23, x24, [sp, 224]
	ldp	x25, x26, [sp, 240]
	ldp	x27, x28, [sp, 256]
	add	sp, sp, 272
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
.L209:
	.cfi_restore_state
	bl	__stack_chk_fail
	.cfi_endproc
.LFE49:
	.size	XYcZ_addC, .-XYcZ_addC
	.align	2
	.p2align 4,,11
	.global	uECC_vli_mmod
	.type	uECC_vli_mmod, %function
uECC_vli_mmod:
.LFB35:
	.cfi_startproc
	sub	sp, sp, #240
	.cfi_def_cfa_offset 240
	adrp	x4, :got:__stack_chk_guard
	ldr	x4, [x4, :got_lo12:__stack_chk_guard]
	stp	x29, x30, [sp, 160]
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	add	x29, sp, 160
	stp	x19, x20, [sp, 176]
	stp	x21, x22, [sp, 192]
	.cfi_offset 19, -64
	.cfi_offset 20, -56
	.cfi_offset 21, -48
	.cfi_offset 22, -40
	mov	x22, x0
	sxtb	w21, w3
	stp	x23, x24, [sp, 208]
	.cfi_offset 23, -32
	.cfi_offset 24, -24
	mov	x23, x2
	mov	x24, x1
	str	x25, [sp, 224]
	.cfi_offset 25, -16
	mov	w1, w21
	ldr	x0, [x4]
	str	x0, [sp, 152]
	mov	x0, 0
	mov	x0, x2
	add	x2, sp, 88
	stp	x2, x24, [sp, 8]
	bl	uECC_vli_numBits
	ubfiz	w1, w21, 6, 10
	sub	w1, w1, w0
	sxth	w20, w1
	cmp	w20, 0
	add	w0, w20, 31
	csel	w0, w0, w20, lt
	negs	w25, w20
	and	w25, w25, 31
	and	w1, w20, 31
	sbfx	x19, x0, 5, 8
	csneg	w25, w1, w25, mi
	cmp	w19, 0
	ble	.L214
	asr	w0, w0, 5
	mov	w1, 0
	sub	w2, w0, #1
	add	x0, sp, 24
	ubfiz	x2, x2, 2, 8
	add	x2, x2, 4
	bl	memset
.L214:
	cmp	w25, 0
	ble	.L249
	cbz	w21, .L250
	mov	w0, w19
	add	w5, w21, w19
	mov	w4, 32
	add	x19, sp, 24
	sub	w4, w4, w25
	mov	w3, 0
	.p2align 3,,7
.L217:
	ldr	w2, [x23], 4
	lsl	w1, w2, w25
	orr	w1, w1, w3
	str	w1, [x19, w0, uxtw 2]
	add	w0, w0, 1
	lsr	w3, w2, w4
	cmp	w0, w5
	bne	.L217
.L218:
	sbfiz	x12, x21, 2, 32
	sub	w0, w21, #1
	add	x7, x19, x12
	lsl	w9, w21, 1
	sub	x8, x7, x12
	sub	x14, x7, #4
	sub	x8, x8, #4
	add	x3, x7, x12
	sbfiz	x0, x0, 2, 32
	sxtw	x13, w21
	add	x11, sp, 8
	mov	w10, 1
	.p2align 3,,7
.L216:
	mov	w5, 0
	cmp	w21, 0
	ble	.L233
	eor	w4, w10, 1
	uxtw	x6, w10
	mov	w2, 0
	mov	w5, 0
	mov	w1, 0
	ldr	x16, [x11, x6, lsl 3]
	ldr	x15, [x11, x4, lsl 3]
	.p2align 3,,7
.L224:
	sxtw	x6, w2
	ldr	w1, [x19, w1, sxtw 2]
	add	w2, w2, 1
	ldr	w4, [x16, x6, lsl 2]
	add	w1, w5, w1
	sxtb	w2, w2
	subs	w1, w4, w1
	str	w1, [x15, x6, lsl 2]
	cset	w6, cc
	cmp	w4, w1
	csel	w5, w5, w6, eq
	mov	w1, w2
	cmp	w2, w9
	blt	.L224
.L233:
	cmp	w10, w5
	mov	x2, x14
	cset	w10, eq
	mov	w1, 0
	cmp	x7, x19
	bls	.L228
	.p2align 3,,7
.L225:
	ldr	w4, [x2]
	orr	w1, w1, w4, lsr 1
	str	w1, [x2], -4
	lsl	w1, w4, 31
	cmp	x8, x2
	bne	.L225
.L228:
	ldr	w4, [x19, x12]
	mov	x2, x3
	ldr	w5, [x19, x0]
	mov	w1, 0
	orr	w4, w5, w4, lsl 31
	str	w4, [x19, x0]
	cmp	x3, x7
	bls	.L227
	.p2align 3,,7
.L230:
	ldr	w4, [x2, -4]
	orr	w1, w1, w4, lsr 1
	str	w1, [x2, -4]!
	lsl	w1, w4, 31
	cmp	x7, x2
	bcc	.L230
.L227:
	sub	w20, w20, #1
	sxth	w20, w20
	cmn	w20, #1
	bne	.L216
	ldr	x24, [x11, x10, lsl 3]
	cmp	w21, 0
	ble	.L210
.L220:
	lsl	x13, x13, 2
	mov	x0, 0
	.p2align 3,,7
.L234:
	ldr	w2, [x24, x0]
	str	w2, [x22, x0]
	add	x0, x0, 4
	cmp	x13, x0
	bne	.L234
.L210:
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 152]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	bne	.L251
	ldp	x29, x30, [sp, 160]
	ldp	x19, x20, [sp, 176]
	ldp	x21, x22, [sp, 192]
	ldp	x23, x24, [sp, 208]
	ldr	x25, [sp, 224]
	add	sp, sp, 240
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 25
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
.L249:
	.cfi_restore_state
	sbfiz	x0, x19, 2, 32
	add	x19, sp, 24
	cmp	w21, 0
	ble	.L219
	mov	x1, x23
	add	x0, x19, x0
	ubfiz	x2, x21, 2, 8
	bl	memcpy
	sxtw	x13, w21
	tbz	w20, #31, .L218
	b	.L220
.L250:
	add	x19, sp, 24
	b	.L218
.L219:
	tbz	w20, #31, .L218
	b	.L210
.L251:
	bl	__stack_chk_fail
	.cfi_endproc
.LFE35:
	.size	uECC_vli_mmod, .-uECC_vli_mmod
	.align	2
	.p2align 4,,11
	.global	uECC_vli_modMult
	.type	uECC_vli_modMult, %function
uECC_vli_modMult:
.LFB36:
	.cfi_startproc
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	mov	x18, x0
	adrp	x6, :got:__stack_chk_guard
	ldr	x6, [x6, :got_lo12:__stack_chk_guard]
	add	x5, sp, 8
	stp	x29, x30, [sp, 80]
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	add	x29, sp, 80
	stp	x19, x20, [sp, 96]
	.cfi_offset 19, -16
	.cfi_offset 20, -8
	sxtb	w20, w4
	mov	x19, x3
	ldr	x0, [x6]
	str	x0, [sp, 72]
	mov	x0, 0
	mov	w3, w20
	mov	x0, x5
	bl	uECC_vli_mult
	mov	w3, w20
	mov	x1, x0
	mov	x2, x19
	mov	x0, x18
	bl	uECC_vli_mmod
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 72]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	bne	.L255
	ldp	x29, x30, [sp, 80]
	ldp	x19, x20, [sp, 96]
	add	sp, sp, 112
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
.L255:
	.cfi_restore_state
	bl	__stack_chk_fail
	.cfi_endproc
.LFE36:
	.size	uECC_vli_modMult, .-uECC_vli_modMult
	.align	2
	.p2align 4,,11
	.global	uECC_vli_modMult_fast
	.type	uECC_vli_modMult_fast, %function
uECC_vli_modMult_fast:
.LFB37:
	.cfi_startproc
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	mov	x18, x3
	adrp	x4, :got:__stack_chk_guard
	ldr	x4, [x4, :got_lo12:__stack_chk_guard]
	add	x5, sp, 8
	stp	x29, x30, [sp, 80]
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	add	x29, sp, 80
	str	x19, [sp, 96]
	.cfi_offset 19, -16
	mov	x19, x0
	mov	x0, x5
	ldrb	w3, [x3]
	ldr	x5, [x4]
	str	x5, [sp, 72]
	mov	x5, 0
	bl	uECC_vli_mult
	mov	x1, x0
	ldr	x2, [x18, 184]
	mov	x0, x19
	blr	x2
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 72]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	bne	.L259
	ldp	x29, x30, [sp, 80]
	ldr	x19, [sp, 96]
	add	sp, sp, 112
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
.L259:
	.cfi_restore_state
	bl	__stack_chk_fail
	.cfi_endproc
.LFE37:
	.size	uECC_vli_modMult_fast, .-uECC_vli_modMult_fast
	.align	2
	.p2align 4,,11
	.global	uECC_vli_modInv
	.type	uECC_vli_modInv, %function
uECC_vli_modInv:
.LFB40:
	.cfi_startproc
	sub	sp, sp, #256
	.cfi_def_cfa_offset 256
	adrp	x4, :got:__stack_chk_guard
	ldr	x4, [x4, :got_lo12:__stack_chk_guard]
	stp	x29, x30, [sp, 160]
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	add	x29, sp, 160
	stp	x19, x20, [sp, 176]
	.cfi_offset 19, -80
	.cfi_offset 20, -72
	sxtb	w19, w3
	ldr	x3, [x4]
	str	x3, [sp, 152]
	mov	x3, 0
	str	x0, [sp]
	cmp	w19, 0
	ble	.L260
	stp	x27, x28, [sp, 240]
	.cfi_offset 28, -8
	.cfi_offset 27, -16
	sbfiz	x28, x19, 2, 32
	mov	x0, x1
	add	x4, x28, x1
	stp	x23, x24, [sp, 208]
	.cfi_offset 24, -40
	.cfi_offset 23, -48
	sxtw	x23, w19
	mov	x20, x2
	mov	w2, 0
	.p2align 3,,7
.L263:
	ldr	w3, [x0], 4
	orr	w2, w2, w3
	cmp	x4, x0
	bne	.L263
	cbz	w2, .L325
	stp	x21, x22, [sp, 192]
	.cfi_offset 22, -56
	.cfi_offset 21, -64
	and	w21, w19, 255
	sub	w12, w21, #1
	and	w12, w12, 255
	ubfiz	x21, x21, 2, 8
	stp	x25, x26, [sp, 224]
	.cfi_offset 26, -24
	.cfi_offset 25, -32
	add	x26, sp, 24
	add	x27, sp, 56
	mov	x2, x21
	mov	x0, x26
	str	w12, [sp, 12]
	bl	memcpy
	add	x24, sp, 88
	mov	x2, x21
	mov	x1, x20
	mov	x0, x27
	bl	memcpy
	add	x25, sp, 120
	mov	x2, x21
	mov	w1, 0
	mov	x0, x24
	bl	memset
	mov	w3, 1
	mov	x0, x25
	mov	x2, x21
	mov	w1, 0
	str	w3, [sp, 88]
	bl	memset
	ldr	w12, [sp, 12]
	add	x14, x27, x28
	add	x13, x26, x28
	mov	x10, -4
	sub	x10, x10, x28
	sub	x18, x14, #4
	ubfiz	x11, x12, 2, 8
	add	x22, x14, x10
	add	x9, x26, x11
	add	x8, x27, x11
	add	x28, x25, x11
	add	x10, x13, x10
	sub	x15, x13, #4
	sxtb	w12, w12
	add	x11, x24, x11
	.p2align 3,,7
.L266:
	mov	w1, w12
	mov	x3, 0
	b	.L290
	.p2align 2,,3
.L327:
	bcc	.L303
	sub	w1, w1, #1
	sub	x3, x3, #4
	sxtb	w1, w1
	cmn	w1, #1
	beq	.L326
.L290:
	ldr	w0, [x9, x3]
	ldr	w4, [x8, x3]
	cmp	w0, w4
	bls	.L327
	ldr	w1, [sp, 24]
	mov	w2, 1
	and	w0, w1, 1
	tbz	x1, 0, .L328
.L323:
	ldr	w1, [sp, 56]
	and	w0, w1, 1
	tbz	x1, 0, .L329
	cmp	w2, 1
	mov	w0, 0
	mov	x2, 1
	bne	.L275
	.p2align 3,,7
.L276:
	lsl	x1, x2, 2
	mov	x3, x2
	add	x6, x26, x1
	add	x1, x27, x1
	add	x2, x2, 1
	ldr	w4, [x6, -4]
	ldr	w7, [x1, -4]
	sub	w1, w4, w0
	sub	w1, w1, w7
	str	w1, [x6, -4]
	cmp	w4, w1
	csel	w0, w0, wzr, eq
	cset	w1, cc
	orr	w0, w0, w1
	cmp	x3, x23
	bne	.L276
	mov	x1, x15
	mov	w0, 0
	cmp	x13, x26
	bls	.L279
	.p2align 3,,7
.L277:
	ldr	w2, [x1]
	orr	w0, w0, w2, lsr 1
	str	w0, [x1], -4
	lsl	w0, w2, 31
	cmp	x1, x10
	bne	.L277
.L279:
	mov	w0, w12
	mov	x1, 0
	b	.L278
	.p2align 2,,3
.L330:
	bcc	.L299
	sub	w0, w0, #1
	sub	x1, x1, #4
	sxtb	w0, w0
	cmn	w0, #1
	beq	.L280
.L278:
	ldr	w3, [x11, x1]
	ldr	w2, [x28, x1]
	cmp	w3, w2
	bls	.L330
.L280:
	mov	x2, 1
	mov	w0, 0
	.p2align 3,,7
.L282:
	lsl	x1, x2, 2
	mov	x3, x2
	add	x6, x24, x1
	add	x1, x25, x1
	add	x2, x2, 1
	ldr	w4, [x6, -4]
	ldr	w7, [x1, -4]
	sub	w1, w4, w0
	sub	w1, w1, w7
	str	w1, [x6, -4]
	cmp	w4, w1
	csel	w0, w0, wzr, eq
	cset	w1, cc
	orr	w0, w0, w1
	cmp	x3, x23
	bne	.L282
.L268:
	mov	w2, w19
	mov	x1, x20
	mov	x0, x24
	bl	vli_modInv_update
	b	.L266
	.p2align 2,,3
.L275:
	lsl	x1, x2, 2
	mov	x3, x2
	add	x6, x27, x1
	add	x1, x26, x1
	add	x2, x2, 1
	ldr	w4, [x6, -4]
	ldr	w7, [x1, -4]
	sub	w1, w4, w0
	sub	w1, w1, w7
	str	w1, [x6, -4]
	cmp	w4, w1
	csel	w0, w0, wzr, eq
	cset	w1, cc
	orr	w0, w0, w1
	cmp	x3, x23
	bne	.L275
	mov	x1, x18
	mov	w0, 0
	cmp	x14, x27
	bls	.L285
	.p2align 3,,7
.L283:
	ldr	w2, [x1]
	orr	w0, w0, w2, lsr 1
	str	w0, [x1], -4
	lsl	w0, w2, 31
	cmp	x22, x1
	bne	.L283
.L285:
	mov	w0, w12
	mov	x1, 0
	b	.L284
	.p2align 2,,3
.L331:
	bcc	.L301
	sub	w0, w0, #1
	sub	x1, x1, #4
	sxtb	w0, w0
	cmn	w0, #1
	beq	.L286
.L284:
	ldr	w3, [x28, x1]
	ldr	w2, [x11, x1]
	cmp	w3, w2
	bls	.L331
.L286:
	mov	x2, 1
	mov	w0, 0
	.p2align 3,,7
.L288:
	lsl	x1, x2, 2
	mov	x3, x2
	add	x6, x25, x1
	add	x1, x24, x1
	add	x2, x2, 1
	ldr	w4, [x6, -4]
	ldr	w7, [x1, -4]
	sub	w1, w4, w0
	sub	w1, w1, w7
	str	w1, [x6, -4]
	cmp	w4, w1
	csel	w0, w0, wzr, eq
	cset	w1, cc
	orr	w0, w0, w1
	cmp	x3, x23
	bne	.L288
.L273:
	mov	w2, w19
	mov	x1, x20
	mov	x0, x25
	bl	vli_modInv_update
	b	.L266
	.p2align 2,,3
.L303:
	ldr	w1, [sp, 24]
	mov	w2, -1
	and	w0, w1, 1
	tbnz	x1, 0, .L323
.L328:
	mov	x1, x15
	cmp	x13, x26
	bls	.L268
	.p2align 3,,7
.L267:
	ldr	w2, [x1]
	orr	w0, w0, w2, lsr 1
	str	w0, [x1], -4
	lsl	w0, w2, 31
	cmp	x1, x10
	bne	.L267
	mov	w2, w19
	mov	x1, x20
	mov	x0, x24
	bl	vli_modInv_update
	b	.L266
	.p2align 2,,3
.L326:
	ldr	x0, [sp]
	mov	x2, x21
	mov	x1, x24
	bl	memcpy
	ldp	x21, x22, [sp, 192]
	.cfi_restore 22
	.cfi_restore 21
	ldp	x23, x24, [sp, 208]
	.cfi_restore 24
	.cfi_restore 23
	ldp	x25, x26, [sp, 224]
	.cfi_restore 26
	.cfi_restore 25
	ldp	x27, x28, [sp, 240]
	.cfi_restore 28
	.cfi_restore 27
.L260:
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 152]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	bne	.L332
	ldp	x29, x30, [sp, 160]
	ldp	x19, x20, [sp, 176]
	add	sp, sp, 256
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L329:
	.cfi_def_cfa_offset 256
	.cfi_offset 19, -80
	.cfi_offset 20, -72
	.cfi_offset 21, -64
	.cfi_offset 22, -56
	.cfi_offset 23, -48
	.cfi_offset 24, -40
	.cfi_offset 25, -32
	.cfi_offset 26, -24
	.cfi_offset 27, -16
	.cfi_offset 28, -8
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x1, x18
	cmp	x14, x27
	bls	.L273
	.p2align 3,,7
.L272:
	ldr	w2, [x1]
	orr	w0, w0, w2, lsr 1
	str	w0, [x1], -4
	lsl	w0, w2, 31
	cmp	x22, x1
	bne	.L272
	mov	w2, w19
	mov	x1, x20
	mov	x0, x25
	bl	vli_modInv_update
	b	.L266
.L299:
	sub	x3, x20, #4
	mov	x2, 1
	mov	w1, 0
	.p2align 3,,7
.L281:
	add	x7, x24, x2, lsl 2
	ldr	w0, [x3, x2, lsl 2]
	mov	x4, x2
	add	x2, x2, 1
	ldr	w6, [x7, -4]
	add	w0, w6, w0
	add	w0, w0, w1
	str	w0, [x7, -4]
	cmp	w6, w0
	csel	w1, w1, wzr, eq
	cset	w0, hi
	orr	w1, w1, w0
	cmp	x4, x23
	bne	.L281
	b	.L280
.L301:
	sub	x3, x20, #4
	mov	x2, 1
	mov	w1, 0
	.p2align 3,,7
.L287:
	add	x7, x25, x2, lsl 2
	ldr	w0, [x3, x2, lsl 2]
	mov	x4, x2
	add	x2, x2, 1
	ldr	w6, [x7, -4]
	add	w0, w6, w0
	add	w0, w0, w1
	str	w0, [x7, -4]
	cmp	w6, w0
	csel	w1, w1, wzr, eq
	cset	w0, hi
	orr	w1, w1, w0
	cmp	x4, x23
	bne	.L287
	b	.L286
.L325:
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 25
	.cfi_restore 26
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ubfiz	x2, x19, 2, 8
	ldr	x3, [sp, 152]
	ldr	x1, [x0]
	subs	x3, x3, x1
	mov	x1, 0
	bne	.L333
	ldp	x29, x30, [sp, 160]
	mov	w1, 0
	ldp	x19, x20, [sp, 176]
	ldp	x23, x24, [sp, 208]
	.cfi_remember_state
	.cfi_restore 24
	.cfi_restore 23
	ldp	x27, x28, [sp, 240]
	.cfi_restore 28
	.cfi_restore 27
	ldr	x0, [sp]
	add	sp, sp, 256
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	b	memset
.L333:
	.cfi_restore_state
	stp	x21, x22, [sp, 192]
	.cfi_offset 22, -56
	.cfi_offset 21, -64
	stp	x25, x26, [sp, 224]
	.cfi_offset 26, -24
	.cfi_offset 25, -32
	bl	__stack_chk_fail
.L332:
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	stp	x21, x22, [sp, 192]
	.cfi_offset 22, -56
	.cfi_offset 21, -64
	stp	x23, x24, [sp, 208]
	.cfi_offset 24, -40
	.cfi_offset 23, -48
	stp	x25, x26, [sp, 224]
	.cfi_offset 26, -24
	.cfi_offset 25, -32
	stp	x27, x28, [sp, 240]
	.cfi_offset 28, -8
	.cfi_offset 27, -16
	bl	__stack_chk_fail
	.cfi_endproc
.LFE40:
	.size	uECC_vli_modInv, .-uECC_vli_modInv
	.align	2
	.p2align 4,,11
	.global	uECC_secp256r1
	.type	uECC_secp256r1, %function
uECC_secp256r1:
.LFB43:
	.cfi_startproc
	adrp	x0, .LANCHOR0
	add	x0, x0, :lo12:.LANCHOR0
	ret
	.cfi_endproc
.LFE43:
	.size	uECC_secp256r1, .-uECC_secp256r1
	.align	2
	.p2align 4,,11
	.global	EccPoint_isZero
	.type	EccPoint_isZero, %function
EccPoint_isZero:
.LFB45:
	.cfi_startproc
	ldrb	w5, [x1]
	sbfiz	w5, w5, 1, 7
	cmp	w5, 0
	ble	.L338
	mov	x1, 0
	mov	w2, 0
	.p2align 3,,7
.L337:
	ldr	w4, [x0, x1, lsl 2]
	add	x1, x1, 1
	sxtb	w3, w1
	orr	w2, w2, w4
	cmp	w5, w3
	bgt	.L337
	cmp	w2, 0
	cset	w0, eq
	ret
	.p2align 2,,3
.L338:
	mov	w0, 1
	ret
	.cfi_endproc
.LFE45:
	.size	EccPoint_isZero, .-EccPoint_isZero
	.align	2
	.p2align 4,,11
	.global	apply_z
	.type	apply_z, %function
apply_z:
.LFB46:
	.cfi_startproc
	sub	sp, sp, #176
	.cfi_def_cfa_offset 176
	adrp	x4, :got:__stack_chk_guard
	ldr	x4, [x4, :got_lo12:__stack_chk_guard]
	stp	x29, x30, [sp, 112]
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	add	x29, sp, 112
	stp	x19, x20, [sp, 128]
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	mov	x19, x3
	add	x20, sp, 40
	stp	x21, x22, [sp, 144]
	.cfi_offset 21, -32
	.cfi_offset 22, -24
	mov	x22, x1
	mov	x1, x2
	stp	x23, x24, [sp, 160]
	.cfi_offset 23, -16
	.cfi_offset 24, -8
	mov	x24, x0
	mov	x23, x2
	ldrb	w3, [x3]
	ldr	x0, [x4]
	str	x0, [sp, 104]
	mov	x0, 0
	mov	x0, x20
	add	x21, sp, 8
	bl	uECC_vli_mult
	mov	x0, x21
	ldr	x2, [x19, 184]
	mov	x1, x20
	blr	x2
	ldrb	w3, [x19]
	mov	x2, x21
	mov	x1, x24
	mov	x0, x20
	bl	uECC_vli_mult
	mov	x0, x24
	ldr	x2, [x19, 184]
	mov	x1, x20
	blr	x2
	ldrb	w3, [x19]
	mov	x2, x23
	mov	x1, x21
	mov	x0, x20
	bl	uECC_vli_mult
	mov	x1, x20
	ldr	x2, [x19, 184]
	mov	x0, x21
	blr	x2
	ldrb	w3, [x19]
	mov	x2, x21
	mov	x1, x22
	mov	x0, x20
	bl	uECC_vli_mult
	mov	x1, x20
	ldr	x2, [x19, 184]
	mov	x0, x22
	blr	x2
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 104]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	bne	.L343
	ldp	x29, x30, [sp, 112]
	ldp	x19, x20, [sp, 128]
	ldp	x21, x22, [sp, 144]
	ldp	x23, x24, [sp, 160]
	add	sp, sp, 176
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
.L343:
	.cfi_restore_state
	bl	__stack_chk_fail
	.cfi_endproc
.LFE46:
	.size	apply_z, .-apply_z
	.align	2
	.p2align 4,,11
	.global	XYcZ_add
	.type	XYcZ_add, %function
XYcZ_add:
.LFB48:
	.cfi_startproc
	sub	sp, sp, #208
	.cfi_def_cfa_offset 208
	stp	x29, x30, [sp, 112]
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	add	x29, sp, 112
	stp	x25, x26, [sp, 176]
	.cfi_offset 25, -32
	.cfi_offset 26, -24
	mov	x26, x4
	mov	x25, x0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	stp	x19, x20, [sp, 128]
	.cfi_offset 19, -80
	.cfi_offset 20, -72
	mov	x19, x4
	stp	x21, x22, [sp, 144]
	mov	x20, x2
	.cfi_offset 21, -64
	.cfi_offset 22, -56
	add	x21, sp, 8
	stp	x23, x24, [sp, 160]
	mov	x2, x25
	.cfi_offset 23, -48
	.cfi_offset 24, -40
	mov	x24, x3
	str	x27, [sp, 192]
	.cfi_offset 27, -16
	mov	x27, x1
	mov	x1, x20
	add	x22, sp, 40
	ldr	x5, [x0]
	str	x5, [sp, 104]
	mov	x5, 0
	ldrsb	w23, [x26], 4
	mov	x0, x21
	mov	w4, w23
	mov	x3, x26
	bl	uECC_vli_modSub
	mov	w3, w23
	mov	x2, x21
	mov	x0, x22
	mov	x1, x21
	bl	uECC_vli_mult
	ldr	x2, [x19, 184]
	mov	x1, x22
	mov	x0, x21
	blr	x2
	ldrb	w3, [x19]
	mov	x2, x21
	mov	x1, x25
	mov	x0, x22
	bl	uECC_vli_mult
	mov	x1, x22
	ldr	x2, [x19, 184]
	mov	x0, x25
	blr	x2
	ldrb	w3, [x19]
	mov	x2, x21
	mov	x1, x20
	mov	x0, x22
	bl	uECC_vli_mult
	mov	x1, x22
	ldr	x2, [x19, 184]
	mov	x0, x20
	blr	x2
	mov	x3, x26
	mov	w4, w23
	mov	x2, x27
	mov	x1, x24
	mov	x0, x24
	bl	uECC_vli_modSub
	ldrb	w3, [x19]
	mov	x2, x24
	mov	x1, x24
	mov	x0, x22
	bl	uECC_vli_mult
	mov	x1, x22
	ldr	x2, [x19, 184]
	mov	x0, x21
	blr	x2
	mov	x3, x26
	mov	x0, x21
	mov	w4, w23
	mov	x2, x25
	mov	x1, x21
	bl	uECC_vli_modSub
	mov	w4, w23
	mov	x2, x20
	mov	x1, x21
	bl	uECC_vli_modSub
	mov	w4, w23
	mov	x2, x25
	mov	x1, x20
	mov	x0, x20
	bl	uECC_vli_modSub
	ldrb	w3, [x19]
	mov	x2, x20
	mov	x1, x27
	mov	x0, x22
	bl	uECC_vli_mult
	mov	x1, x22
	ldr	x2, [x19, 184]
	mov	x0, x27
	blr	x2
	mov	x3, x26
	mov	w4, w23
	mov	x2, x21
	mov	x1, x25
	mov	x0, x20
	bl	uECC_vli_modSub
	ldrb	w3, [x19]
	mov	x2, x20
	mov	x1, x24
	mov	x0, x22
	bl	uECC_vli_mult
	mov	x1, x22
	ldr	x2, [x19, 184]
	mov	x0, x24
	blr	x2
	mov	w4, w23
	mov	x3, x26
	mov	x2, x27
	mov	x1, x24
	mov	x0, x24
	bl	uECC_vli_modSub
	cmp	w23, 0
	ble	.L344
	ubfiz	x2, x23, 2, 8
	mov	x1, x21
	mov	x0, x20
	bl	memcpy
.L344:
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 104]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	bne	.L348
	ldp	x29, x30, [sp, 112]
	ldp	x19, x20, [sp, 128]
	ldp	x21, x22, [sp, 144]
	ldp	x23, x24, [sp, 160]
	ldp	x25, x26, [sp, 176]
	ldr	x27, [sp, 192]
	add	sp, sp, 208
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 27
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
.L348:
	.cfi_restore_state
	bl	__stack_chk_fail
	.cfi_endproc
.LFE48:
	.size	XYcZ_add, .-XYcZ_add
	.align	2
	.p2align 4,,11
	.global	EccPoint_mult
	.type	EccPoint_mult, %function
EccPoint_mult:
.LFB50:
	.cfi_startproc
	sub	sp, sp, #400
	.cfi_def_cfa_offset 400
	stp	x29, x30, [sp, 304]
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	add	x29, sp, 304
	stp	x19, x20, [sp, 320]
	.cfi_offset 19, -80
	.cfi_offset 20, -72
	mov	x19, x5
	mov	x20, x3
	stp	x21, x22, [sp, 336]
	.cfi_offset 21, -64
	.cfi_offset 22, -56
	mov	x22, x2
	stp	x23, x24, [sp, 352]
	stp	x25, x26, [sp, 368]
	stp	x27, x28, [sp, 384]
	.cfi_offset 23, -48
	.cfi_offset 24, -40
	.cfi_offset 25, -32
	.cfi_offset 26, -24
	.cfi_offset 27, -16
	.cfi_offset 28, -8
	sxth	w27, w4
	ldrsb	w6, [x19]
	adrp	x5, :got:__stack_chk_guard
	ldr	x5, [x5, :got_lo12:__stack_chk_guard]
	str	w6, [sp, 16]
	sbfiz	x21, x6, 2, 32
	ldr	x7, [x5]
	str	x7, [sp, 296]
	mov	x7, 0
	str	x1, [sp, 24]
	str	x21, [sp, 40]
	str	x0, [sp, 56]
	cmp	w6, 0
	ble	.L350
	mov	x0, x6
	mov	x23, x1
	add	x28, sp, 200
	ubfiz	x26, x0, 2, 8
	add	x0, sp, 136
	mov	x2, x26
	str	x0, [sp, 8]
	bl	memcpy
	add	x0, x23, x21
	mov	x2, x26
	mov	x1, x0
	mov	x0, x28
	str	x1, [sp, 48]
	bl	memcpy
	cbz	x20, .L367
	add	x23, sp, 232
	mov	x1, x20
	mov	x0, x23
	mov	x2, x26
	bl	memcpy
.L355:
	ldr	x1, [sp, 8]
	add	x20, sp, 104
	mov	x2, x26
	mov	x0, x20
	add	x21, sp, 168
	bl	memmove
	mov	x2, x26
	mov	x0, x21
	mov	x1, x28
	bl	memmove
.L353:
	ldr	x24, [sp, 8]
	mov	x3, x19
	mov	x2, x23
	mov	x1, x28
	mov	x0, x24
	bl	apply_z
	ldr	x4, [x19, 168]
	mov	x1, x28
	mov	x3, x19
	mov	x2, x23
	mov	x0, x24
	blr	x4
	mov	x3, x19
	mov	x2, x23
	mov	x1, x21
	mov	x0, x20
	bl	apply_z
	sub	w5, w27, #2
	sxth	w27, w5
	cmp	w27, 0
	ble	.L359
	.p2align 3,,7
.L356:
	asr	w1, w27, 5
	mov	w0, 1
	lsl	w0, w0, w27
	mov	x4, x19
	ldr	w1, [x22, w1, sxtw 2]
	ands	w0, w0, w1
	cset	x1, ne
	cset	x28, eq
	lsl	x1, x1, 5
	lsl	x28, x28, 5
	add	x24, x20, x1
	add	x25, x20, x28
	add	x26, x21, x1
	add	x28, x21, x28
	mov	x1, x26
	mov	x0, x24
	mov	x3, x28
	mov	x2, x25
	bl	XYcZ_addC
	mov	x0, x25
	mov	x4, x19
	mov	x3, x26
	mov	x2, x24
	mov	x1, x28
	bl	XYcZ_add
	sub	w0, w27, #1
	sxth	w27, w0
	tst	w0, 65535
	bne	.L356
.L359:
	ldr	w22, [x22]
	mov	x4, x19
	mvn	x28, x22
	ubfiz	x22, x22, 5, 1
	ubfiz	x28, x28, 5, 1
	add	x26, x20, x22
	add	x5, x20, x28
	add	x22, x21, x22
	add	x28, x21, x28
	mov	x2, x5
	mov	x3, x28
	mov	x1, x22
	mov	x0, x26
	str	x5, [sp, 32]
	bl	XYcZ_addC
	ldr	w24, [sp, 16]
	ldr	x1, [sp, 8]
	add	x6, x19, 4
	mov	x3, x6
	mov	w4, w24
	add	x0, sp, 72
	mov	x2, x20
	str	x6, [sp, 8]
	bl	uECC_vli_modSub
	ldrb	w3, [x19]
	mov	x2, x22
	mov	x25, x0
	mov	x1, x0
	mov	x0, x23
	bl	uECC_vli_mult
	mov	x1, x23
	ldr	x2, [x19, 184]
	mov	x0, x25
	blr	x2
	ldr	x2, [sp, 24]
	mov	x1, x25
	ldrb	w3, [x19]
	mov	x0, x23
	bl	uECC_vli_mult
	mov	x1, x23
	ldr	x2, [x19, 184]
	mov	x0, x25
	blr	x2
	ldr	x6, [sp, 8]
	mov	w3, w24
	mov	x1, x25
	mov	x0, x25
	mov	x2, x6
	bl	uECC_vli_modInv
	ldr	x2, [sp, 48]
	mov	x1, x25
	ldrb	w3, [x19]
	mov	x0, x23
	bl	uECC_vli_mult
	mov	x1, x23
	ldr	x2, [x19, 184]
	mov	x0, x25
	blr	x2
	ldrb	w3, [x19]
	mov	x2, x26
	mov	x1, x25
	mov	x0, x23
	bl	uECC_vli_mult
	mov	x1, x23
	ldr	x2, [x19, 184]
	mov	x0, x25
	blr	x2
	ldr	x5, [sp, 32]
	mov	x4, x19
	mov	x3, x22
	mov	x2, x26
	mov	x1, x28
	mov	x0, x5
	bl	XYcZ_add
	mov	x3, x19
	mov	x2, x25
	mov	x1, x21
	mov	x0, x20
	bl	apply_z
	cmp	w24, 0
	ble	.L349
	ldr	x0, [sp, 16]
	mov	x1, x20
	ldr	x19, [sp, 56]
	ubfiz	x24, x0, 2, 8
	mov	x2, x24
	mov	x0, x19
	bl	memcpy
	ldr	x3, [sp, 40]
	mov	x2, x24
	mov	x1, x21
	add	x0, x19, x3
	bl	memcpy
.L349:
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 296]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	bne	.L368
	ldp	x29, x30, [sp, 304]
	ldp	x19, x20, [sp, 320]
	ldp	x21, x22, [sp, 336]
	ldp	x23, x24, [sp, 352]
	ldp	x25, x26, [sp, 368]
	ldp	x27, x28, [sp, 384]
	add	sp, sp, 400
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L367:
	.cfi_restore_state
	add	x23, sp, 232
	mov	x2, x26
	mov	x0, x23
	mov	w1, 0
	bl	memset
	mov	w0, 1
	str	w0, [sp, 232]
	b	.L355
	.p2align 2,,3
.L350:
	cbnz	x3, .L369
	add	x1, sp, 136
	str	x1, [sp, 8]
	ldr	x1, [sp, 24]
	mov	w0, 1
	ldr	x2, [sp, 40]
	add	x28, sp, 200
	add	x23, sp, 232
	add	x20, sp, 104
	add	x1, x1, x2
	add	x21, sp, 168
	str	x1, [sp, 48]
	str	w0, [sp, 232]
	b	.L353
.L369:
	add	x0, sp, 136
	str	x0, [sp, 8]
	ldr	x0, [sp, 24]
	add	x28, sp, 200
	ldr	x1, [sp, 40]
	add	x23, sp, 232
	add	x20, sp, 104
	add	x21, sp, 168
	add	x0, x0, x1
	str	x0, [sp, 48]
	b	.L353
.L368:
	bl	__stack_chk_fail
	.cfi_endproc
.LFE50:
	.size	EccPoint_mult, .-EccPoint_mult
	.align	2
	.p2align 4,,11
	.global	regularize_k
	.type	regularize_k, %function
regularize_k:
.LFB51:
	.cfi_startproc
	ldrsh	w10, [x3, 2]
	mov	x9, x0
	add	x8, x3, 36
	mov	x5, 0
	add	w7, w10, 62
	adds	w4, w10, 31
	csel	w7, w7, w4, mi
	mov	w0, 0
	sbfx	x7, x7, 5, 8
	cmp	w7, 0
	ble	.L386
	.p2align 3,,7
.L371:
	ldr	w6, [x9, x5, lsl 2]
	ldr	w4, [x8, x5, lsl 2]
	add	w4, w6, w4
	add	w4, w4, w0
	str	w4, [x1, x5, lsl 2]
	add	x5, x5, 1
	cmp	w6, w4
	csel	w0, w0, wzr, eq
	cset	w6, hi
	sxtb	w4, w5
	orr	w0, w0, w6
	cmp	w7, w4
	bgt	.L371
	cbz	w0, .L387
	mov	w0, 1
.L376:
	mov	x4, 0
	mov	w5, 0
	.p2align 3,,7
.L377:
	ldr	w6, [x1, x4, lsl 2]
	ldr	w3, [x8, x4, lsl 2]
	add	w3, w6, w3
	add	w3, w3, w5
	str	w3, [x2, x4, lsl 2]
	add	x4, x4, 1
	cmp	w6, w3
	csel	w5, w5, wzr, eq
	cset	w6, hi
	sxtb	w3, w4
	orr	w5, w5, w6
	cmp	w7, w3
	bgt	.L377
.L370:
	ret
	.p2align 2,,3
.L387:
	cmp	w10, w7, lsl 5
	bge	.L376
.L372:
	asr	w4, w10, 5
	add	x8, x3, 36
	mov	w0, 1
	lsl	w0, w0, w10
	ldr	w3, [x1, w4, sxtw 2]
	tst	w0, w3
	cset	w0, ne
	cmp	w7, 0
	bgt	.L376
	ret
	.p2align 2,,3
.L386:
	cmp	w10, w7, lsl 5
	blt	.L372
	b	.L370
	.cfi_endproc
.LFE51:
	.size	regularize_k, .-regularize_k
	.align	2
	.p2align 4,,11
	.global	EccPoint_compute_public_key
	.type	EccPoint_compute_public_key, %function
EccPoint_compute_public_key:
.LFB52:
	.cfi_startproc
	sub	sp, sp, #128
	.cfi_def_cfa_offset 128
	adrp	x5, :got:__stack_chk_guard
	ldr	x5, [x5, :got_lo12:__stack_chk_guard]
	add	x4, sp, 24
	stp	x29, x30, [sp, 96]
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	add	x29, sp, 96
	stp	x19, x20, [sp, 112]
	.cfi_offset 19, -16
	.cfi_offset 20, -8
	mov	x20, x2
	mov	x19, x0
	mov	x0, x1
	ldr	x1, [x5]
	str	x1, [sp, 88]
	mov	x1, 0
	add	x2, sp, 56
	mov	x1, x4
	mov	x3, x20
	stp	x4, x2, [sp, 8]
	bl	regularize_k
	cmp	w0, 0
	add	x2, sp, 8
	cset	x3, eq
	ldrh	w4, [x20, 2]
	mov	x5, x20
	add	x1, x20, 68
	add	w4, w4, 1
	mov	x0, x19
	ldr	x2, [x2, x3, lsl 3]
	mov	x3, 0
	bl	EccPoint_mult
	ldrb	w5, [x20]
	sbfiz	w5, w5, 1, 7
	cmp	w5, 0
	ble	.L392
	mov	x1, 0
	mov	w2, 0
	.p2align 3,,7
.L390:
	ldr	w4, [x19, x1, lsl 2]
	add	x1, x1, 1
	sxtb	w3, w1
	orr	w2, w2, w4
	cmp	w3, w5
	blt	.L390
	cmp	w2, 0
	cset	w0, ne
.L388:
	adrp	x1, :got:__stack_chk_guard
	ldr	x1, [x1, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 88]
	ldr	x2, [x1]
	subs	x3, x3, x2
	mov	x2, 0
	bne	.L395
	ldp	x29, x30, [sp, 96]
	ldp	x19, x20, [sp, 112]
	add	sp, sp, 128
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L392:
	.cfi_restore_state
	mov	w0, 0
	b	.L388
.L395:
	bl	__stack_chk_fail
	.cfi_endproc
.LFE52:
	.size	EccPoint_compute_public_key, .-EccPoint_compute_public_key
	.align	2
	.p2align 4,,11
	.global	uECC_vli_nativeToBytes
	.type	uECC_vli_nativeToBytes, %function
uECC_vli_nativeToBytes:
.LFB53:
	.cfi_startproc
	sub	w7, w1, #1
	mov	w4, 0
	mov	w3, 0
	cmp	w1, 0
	ble	.L396
	.p2align 3,,7
.L398:
	sub	w3, w7, w3
	add	w6, w4, 1
	lsr	w5, w3, 2
	ubfiz	w3, w3, 3, 2
	ldr	w5, [x2, x5, lsl 2]
	lsr	w3, w5, w3
	strb	w3, [x0, w4, sxtw]
	sxtb	w4, w6
	mov	w3, w4
	cmp	w4, w1
	blt	.L398
.L396:
	ret
	.cfi_endproc
.LFE53:
	.size	uECC_vli_nativeToBytes, .-uECC_vli_nativeToBytes
	.align	2
	.p2align 4,,11
	.global	uECC_vli_bytesToNative
	.type	uECC_vli_bytesToNative, %function
uECC_vli_bytesToNative:
.LFB54:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	mov	w20, w2
	adds	w3, w20, 3
	add	w2, w2, 6
	str	x21, [sp, 32]
	.cfi_offset 21, -16
	csel	w2, w2, w3, mi
	mov	x21, x1
	mov	x19, x0
	sbfx	x1, x2, 2, 8
	cmp	w1, 0
	ble	.L406
	asr	w2, w2, 2
	mov	w1, 0
	sub	w2, w2, #1
	ubfiz	x2, x2, 2, 8
	add	x2, x2, 4
	bl	memset
.L406:
	sub	w0, w20, #1
	mov	w3, 0
	mov	w4, 0
	cmp	w20, 0
	ble	.L402
	.p2align 3,,7
.L407:
	sub	w4, w0, w4
	ldrb	w6, [x21, w3, sxtw]
	add	w3, w3, 1
	lsr	w7, w4, 2
	ubfiz	w4, w4, 3, 2
	sxtb	w3, w3
	lsl	w6, w6, w4
	mov	w4, w3
	ldr	w5, [x19, x7, lsl 2]
	orr	w5, w5, w6
	str	w5, [x19, x7, lsl 2]
	cmp	w3, w20
	blt	.L407
.L402:
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE54:
	.size	uECC_vli_bytesToNative, .-uECC_vli_bytesToNative
	.align	2
	.p2align 4,,11
	.global	uECC_generate_random_int
	.type	uECC_generate_random_int, %function
uECC_generate_random_int:
.LFB55:
	.cfi_startproc
	sub	sp, sp, #160
	.cfi_def_cfa_offset 160
	adrp	x3, :got:__stack_chk_guard
	ldr	x3, [x3, :got_lo12:__stack_chk_guard]
	stp	x29, x30, [sp, 64]
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	add	x29, sp, 64
	stp	x19, x20, [sp, 80]
	.cfi_offset 19, -80
	.cfi_offset 20, -72
	mov	x20, x0
	mov	x0, x1
	stp	x21, x22, [sp, 96]
	.cfi_offset 21, -64
	.cfi_offset 22, -56
	sxtb	w21, w2
	stp	x27, x28, [sp, 144]
	.cfi_offset 27, -16
	.cfi_offset 28, -8
	mov	x28, x1
	mov	w1, w21
	ldr	x2, [x3]
	str	x2, [sp, 56]
	mov	x2, 0
	bl	uECC_vli_numBits
	adrp	x1, .LANCHOR1
	ldr	x2, [x1, #:lo12:.LANCHOR1]
	cbz	x2, .L412
	lsl	w1, w21, 2
	str	w1, [sp, 12]
	stp	x25, x26, [sp, 128]
	.cfi_offset 26, -24
	.cfi_offset 25, -32
	sbfiz	x25, x21, 2, 32
	ldr	w1, [sp, 12]
	sub	x5, x25, #4
	ubfiz	w3, w21, 5, 11
	sub	w0, w3, w0
	stp	x23, x24, [sp, 112]
	.cfi_offset 24, -40
	.cfi_offset 23, -48
	mov	w22, -1
	lsr	w22, w22, w0
	sub	x28, x28, #4
	add	x23, x20, x5
	add	x25, x25, x20
	sxtw	x27, w21
	sub	x24, x20, #4
	add	x26, sp, 24
	mov	x0, x20
	mov	w19, 64
	blr	x2
	cbz	w0, .L437
	.p2align 3,,7
.L439:
	ldr	w2, [x23]
	mov	x1, x20
	mov	w0, 0
	and	w2, w2, w22
	str	w2, [x23]
	cmp	w21, 0
	ble	.L415
	.p2align 3,,7
.L413:
	ldr	w2, [x1], 4
	orr	w0, w0, w2
	cmp	x1, x25
	bne	.L413
	cbz	w0, .L415
	mov	x1, 1
	mov	w2, 0
	.p2align 3,,7
.L416:
	ldr	w6, [x28, x1, lsl 2]
	add	x7, x26, x1, lsl 2
	ldr	w8, [x24, x1, lsl 2]
	mov	x3, x1
	sub	w0, w6, w2
	add	x1, x1, 1
	sub	w0, w0, w8
	str	w0, [x7, -4]
	cmp	w6, w0
	csel	w2, w2, wzr, eq
	cset	w0, cc
	orr	w2, w2, w0
	cmp	x27, x3
	bne	.L416
	cmp	w2, 0
	mov	x0, 1
	cset	w6, ne
	mov	w2, 0
	.p2align 3,,7
.L417:
	add	x3, x26, x0, lsl 2
	cmp	x27, x0
	add	x0, x0, 1
	ldr	w3, [x3, -4]
	orr	w2, w2, w3
	bne	.L417
	cmp	w2, 0
	cset	w0, ne
	sub	w0, w0, w6, lsl 1
	and	w0, w0, 255
	cmp	w0, 1
	beq	.L438
.L415:
	subs	w19, w19, #1
	beq	.L437
	adrp	x0, .LANCHOR1
	ldr	w1, [sp, 12]
	ldr	x2, [x0, #:lo12:.LANCHOR1]
	mov	x0, x20
	blr	x2
	cbnz	w0, .L439
.L437:
	ldp	x23, x24, [sp, 112]
	.cfi_restore 24
	.cfi_restore 23
	ldp	x25, x26, [sp, 128]
	.cfi_restore 26
	.cfi_restore 25
.L412:
	mov	w0, 0
.L411:
	adrp	x1, :got:__stack_chk_guard
	ldr	x1, [x1, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 56]
	ldr	x2, [x1]
	subs	x3, x3, x2
	mov	x2, 0
	bne	.L440
	ldp	x29, x30, [sp, 64]
	ldp	x19, x20, [sp, 80]
	ldp	x21, x22, [sp, 96]
	ldp	x27, x28, [sp, 144]
	add	sp, sp, 160
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
.L438:
	.cfi_def_cfa_offset 160
	.cfi_offset 19, -80
	.cfi_offset 20, -72
	.cfi_offset 21, -64
	.cfi_offset 22, -56
	.cfi_offset 23, -48
	.cfi_offset 24, -40
	.cfi_offset 25, -32
	.cfi_offset 26, -24
	.cfi_offset 27, -16
	.cfi_offset 28, -8
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	ldp	x23, x24, [sp, 112]
	.cfi_restore 24
	.cfi_restore 23
	ldp	x25, x26, [sp, 128]
	.cfi_restore 26
	.cfi_restore 25
	b	.L411
.L440:
	stp	x23, x24, [sp, 112]
	.cfi_offset 24, -40
	.cfi_offset 23, -48
	stp	x25, x26, [sp, 128]
	.cfi_offset 26, -24
	.cfi_offset 25, -32
	bl	__stack_chk_fail
	.cfi_endproc
.LFE55:
	.size	uECC_generate_random_int, .-uECC_generate_random_int
	.align	2
	.p2align 4,,11
	.global	uECC_valid_point
	.type	uECC_valid_point, %function
uECC_valid_point:
.LFB56:
	.cfi_startproc
	sub	sp, sp, #176
	.cfi_def_cfa_offset 176
	stp	x29, x30, [sp, 112]
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	add	x29, sp, 112
	stp	x19, x20, [sp, 128]
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	mov	x20, x0
	stp	x23, x24, [sp, 160]
	.cfi_offset 23, -16
	.cfi_offset 24, -8
	mov	x24, x1
	ldrsb	w3, [x1]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	sbfiz	w7, w3, 1, 7
	ldr	x1, [x0]
	str	x1, [sp, 104]
	mov	x1, 0
	cmp	w7, 0
	ble	.L450
	and	w1, w3, 255
	mov	x4, 0
	mov	w0, 0
	stp	x21, x22, [sp, 144]
	.cfi_offset 22, -24
	.cfi_offset 21, -32
	.p2align 3,,7
.L443:
	ldr	w6, [x20, x4, lsl 2]
	add	x4, x4, 1
	orr	w0, w0, w6
	sxtb	w5, w4
	cmp	w7, w5
	bgt	.L443
	cbz	w0, .L451
	sub	w0, w1, #1
	and	x23, x0, 255
	sxtb	w19, w0
	tbnz	x0, 7, .L454
	add	x0, x24, 4
	mov	x5, x23
	mov	x4, x23
	b	.L445
	.p2align 2,,3
.L461:
	bcc	.L454
	sub	x4, x4, #1
	tbnz	x4, 7, .L454
.L445:
	ldr	w7, [x0, x4, lsl 2]
	ldr	w6, [x20, x4, lsl 2]
	cmp	w7, w6
	bls	.L461
	add	x2, x20, w3, sxtw 2
	b	.L447
	.p2align 2,,3
.L462:
	bcc	.L454
	sub	x5, x5, #1
	tbnz	x5, 7, .L454
.L447:
	ldr	w6, [x0, x5, lsl 2]
	ldr	w4, [x2, x5, lsl 2]
	cmp	w6, w4
	bls	.L462
	add	x0, sp, 40
	mov	x1, x2
	bl	uECC_vli_mult
	mov	x21, x0
	ldr	x2, [x24, 184]
	add	x22, sp, 8
	mov	x0, x22
	mov	x1, x21
	lsl	x23, x23, 2
	blr	x2
	ldr	x3, [x24, 176]
	mov	x1, x20
	mov	x0, x21
	mov	x2, x24
	blr	x3
	add	x5, x22, x23
	add	x0, x21, x23
	mov	x1, 0
	mov	w3, 0
	.p2align 3,,7
.L448:
	ldr	w2, [x5, x1]
	sub	w19, w19, #1
	ldr	w4, [x0, x1]
	sub	x1, x1, #4
	sxtb	w19, w19
	eor	w2, w2, w4
	orr	w3, w3, w2
	cmn	w19, #1
	bne	.L448
	ldp	x21, x22, [sp, 144]
	.cfi_restore 22
	.cfi_restore 21
	cmp	w3, 0
	mov	w0, -3
	csel	w0, w0, wzr, ne
.L441:
	adrp	x1, :got:__stack_chk_guard
	ldr	x1, [x1, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 104]
	ldr	x2, [x1]
	subs	x3, x3, x2
	mov	x2, 0
	bne	.L463
	ldp	x29, x30, [sp, 112]
	ldp	x19, x20, [sp, 128]
	ldp	x23, x24, [sp, 160]
	add	sp, sp, 176
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L454:
	.cfi_def_cfa_offset 176
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	.cfi_offset 21, -32
	.cfi_offset 22, -24
	.cfi_offset 23, -16
	.cfi_offset 24, -8
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	ldp	x21, x22, [sp, 144]
	.cfi_restore 22
	.cfi_restore 21
	mov	w0, -2
	b	.L441
	.p2align 2,,3
.L450:
	mov	w0, -1
	b	.L441
.L451:
	.cfi_offset 21, -32
	.cfi_offset 22, -24
	ldp	x21, x22, [sp, 144]
	.cfi_restore 22
	.cfi_restore 21
	mov	w0, -1
	b	.L441
.L463:
	stp	x21, x22, [sp, 144]
	.cfi_offset 22, -24
	.cfi_offset 21, -32
	bl	__stack_chk_fail
	.cfi_endproc
.LFE56:
	.size	uECC_valid_point, .-uECC_valid_point
	.align	2
	.p2align 4,,11
	.global	uECC_valid_public_key
	.type	uECC_valid_public_key, %function
uECC_valid_public_key:
.LFB57:
	.cfi_startproc
	sub	sp, sp, #144
	.cfi_def_cfa_offset 144
	stp	x29, x30, [sp, 80]
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	add	x29, sp, 80
	stp	x21, x22, [sp, 112]
	.cfi_offset 21, -32
	.cfi_offset 22, -24
	mov	x21, x1
	mov	x22, x0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	stp	x19, x20, [sp, 96]
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	mov	x20, x21
	str	x23, [sp, 128]
	.cfi_offset 23, -16
	add	x19, sp, 8
	mov	x1, x22
	ldrsb	w23, [x21, 1]
	ldr	x2, [x0]
	str	x2, [sp, 72]
	mov	x2, 0
	mov	x0, x19
	mov	w2, w23
	bl	uECC_vli_bytesToNative
	ldrsb	x0, [x20], 128
	add	x1, x22, w23, sxtw
	mov	w2, w23
	add	x0, x19, x0, lsl 2
	bl	uECC_vli_bytesToNative
	mov	x0, 0
	b	.L466
	.p2align 2,,3
.L472:
	bcc	.L465
	sub	x0, x0, #4
	cmn	x0, #64
	beq	.L471
.L466:
	add	x2, x19, x0
	ldr	w3, [x20, x0]
	ldr	w2, [x2, 60]
	cmp	w2, w3
	bls	.L472
.L465:
	mov	x1, x21
	mov	x0, x19
	bl	uECC_valid_point
.L464:
	adrp	x1, :got:__stack_chk_guard
	ldr	x1, [x1, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 72]
	ldr	x2, [x1]
	subs	x3, x3, x2
	mov	x2, 0
	bne	.L473
	ldp	x29, x30, [sp, 80]
	ldp	x19, x20, [sp, 96]
	ldp	x21, x22, [sp, 112]
	ldr	x23, [sp, 128]
	add	sp, sp, 144
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 23
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L471:
	.cfi_restore_state
	mov	w0, -4
	b	.L464
.L473:
	bl	__stack_chk_fail
	.cfi_endproc
.LFE57:
	.size	uECC_valid_public_key, .-uECC_valid_public_key
	.align	2
	.p2align 4,,11
	.global	uECC_compute_public_key
	.type	uECC_compute_public_key, %function
uECC_compute_public_key:
.LFB58:
	.cfi_startproc
	sub	sp, sp, #176
	.cfi_def_cfa_offset 176
	stp	x29, x30, [sp, 112]
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	add	x29, sp, 112
	stp	x21, x22, [sp, 144]
	.cfi_offset 21, -32
	.cfi_offset 22, -24
	mov	x22, x2
	adrp	x2, :got:__stack_chk_guard
	ldr	x2, [x2, :got_lo12:__stack_chk_guard]
	stp	x19, x20, [sp, 128]
	ldrsh	w21, [x22, 2]
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	mov	x19, x1
	mov	x1, x0
	ldr	x0, [x2]
	str	x0, [sp, 104]
	mov	x0, 0
	add	w2, w21, 14
	adds	w0, w21, 7
	add	x20, sp, 8
	csel	w2, w2, w0, mi
	mov	x0, x20
	asr	w2, w2, 3
	bl	uECC_vli_bytesToNative
	add	w3, w21, 62
	adds	w21, w21, 31
	csel	w3, w3, w21, mi
	sbfx	x0, x3, 5, 8
	cmp	w0, 0
	ble	.L478
	asr	w3, w3, 5
	mov	w1, 0
	sub	w4, w3, #1
	mov	x3, 1
	and	x4, x4, 255
	add	x4, x4, 2
	.p2align 3,,7
.L477:
	add	x5, x20, x3, lsl 2
	add	x3, x3, 1
	ldr	w5, [x5, -4]
	orr	w1, w1, w5
	cmp	x3, x4
	bne	.L477
	cbz	w1, .L478
	add	x2, x22, 32
	add	x21, sp, 40
	mov	x1, 1
	mov	w3, 0
	str	x23, [sp, 160]
	.cfi_offset 23, -16
	.p2align 3,,7
.L479:
	lsl	x5, x1, 2
	ldr	w7, [x2, x1, lsl 2]
	add	x0, x20, x5
	add	x6, x21, x5
	sub	w5, w7, w3
	add	x1, x1, 1
	ldr	w0, [x0, -4]
	sub	w5, w5, w0
	str	w5, [x6, -4]
	cmp	w7, w5
	csel	w3, w3, wzr, eq
	cset	w0, cc
	orr	w3, w3, w0
	cmp	x1, x4
	bne	.L479
	cmp	w3, 0
	mov	x1, 1
	cset	w23, ne
	mov	w0, 0
	.p2align 3,,7
.L480:
	add	x2, x21, x1, lsl 2
	add	x1, x1, 1
	ldr	w2, [x2, -4]
	orr	w0, w0, w2
	cmp	x1, x4
	bne	.L480
	cmp	w0, 0
	cset	w0, ne
	sub	w23, w0, w23, lsl 1
	and	w23, w23, 255
	cmp	w23, 1
	beq	.L501
.L500:
	ldr	x23, [sp, 160]
	.cfi_restore 23
.L478:
	mov	w0, 0
.L474:
	adrp	x1, :got:__stack_chk_guard
	ldr	x1, [x1, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 104]
	ldr	x2, [x1]
	subs	x3, x3, x2
	mov	x2, 0
	bne	.L502
	ldp	x29, x30, [sp, 112]
	ldp	x19, x20, [sp, 128]
	ldp	x21, x22, [sp, 144]
	add	sp, sp, 176
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L501:
	.cfi_def_cfa_offset 176
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	.cfi_offset 21, -32
	.cfi_offset 22, -24
	.cfi_offset 23, -16
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x1, x20
	mov	x2, x22
	mov	x0, x21
	bl	EccPoint_compute_public_key
	cbz	w0, .L500
	ldrsb	w5, [x22, 1]
	sub	w23, w23, w19
	mov	x1, x19
	mov	w0, 0
	sub	w6, w5, #1
	cmp	w5, 0
	ble	.L483
	.p2align 3,,7
.L482:
	sub	w0, w6, w0
	add	w3, w23, w1
	add	x1, x1, 1
	lsr	w2, w0, 2
	ubfiz	w4, w0, 3, 2
	sxtb	w0, w3
	ldr	w2, [x21, x2, lsl 2]
	lsr	w2, w2, w4
	strb	w2, [x1, -1]
	cmp	w5, w3, sxtb
	bgt	.L482
	ldrsb	x0, [x22, 1]
	ldrsb	x7, [x22]
	mov	x4, x0
	cmp	w0, 0
	ble	.L483
	add	x19, x19, x0
	mov	w5, 1
	sub	w5, w5, w19
	sub	w6, w0, #1
	mov	w0, 0
	.p2align 3,,7
.L484:
	sub	w0, w6, w0
	add	w2, w5, w19
	add	x19, x19, 1
	lsr	w1, w0, 2
	ubfiz	w3, w0, 3, 2
	add	x1, x1, x7
	sxtb	w0, w2
	ldr	w1, [x21, x1, lsl 2]
	lsr	w1, w1, w3
	strb	w1, [x19, -1]
	cmp	w4, w2, sxtb
	bgt	.L484
.L483:
	ldr	x23, [sp, 160]
	.cfi_restore 23
	mov	w0, 1
	b	.L474
.L502:
	str	x23, [sp, 160]
	.cfi_offset 23, -16
	bl	__stack_chk_fail
	.cfi_endproc
.LFE58:
	.size	uECC_compute_public_key, .-uECC_compute_public_key
	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LC0:
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	9
	.byte	10
	.byte	11
	.byte	12
	.byte	13
	.byte	14
	.byte	15
	.byte	20
	.byte	21
	.byte	22
	.byte	23
	.align	4
.LC1:
	.byte	8
	.byte	9
	.byte	10
	.byte	11
	.byte	12
	.byte	13
	.byte	14
	.byte	15
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	16
	.byte	17
	.byte	18
	.byte	19
	.section	.data.rel,"aw"
	.align	3
	.set	.LANCHOR1,. + 0
	.type	g_rng_function, %object
	.size	g_rng_function, 8
g_rng_function:
	.xword	default_CSPRNG
	.section	.data.rel.ro.local,"aw"
	.align	3
	.set	.LANCHOR0,. + 0
	.type	curve_secp256r1, %object
	.size	curve_secp256r1, 192
curve_secp256r1:
	.byte	8
	.byte	32
	.hword	256
	.word	-1
	.word	-1
	.word	-1
	.word	0
	.word	0
	.word	0
	.word	1
	.word	-1
	.word	-60611247
	.word	-205927742
	.word	-1491624316
	.word	-1125713235
	.word	-1
	.word	-1
	.word	0
	.word	-1
	.word	-661077354
	.word	-190760635
	.word	770388896
	.word	1996717441
	.word	1671708914
	.word	-121837851
	.word	-517193145
	.word	1796723186
	.word	935285237
	.word	-877248408
	.word	1798397646
	.word	734933847
	.word	2081398294
	.word	-1897403574
	.word	-31817829
	.word	1340293858
	.word	668098635
	.word	1003371582
	.word	-866930442
	.word	1696401072
	.word	1989707452
	.word	-1276396203
	.word	-1439001625
	.word	1522939352
	.zero	4
	.xword	double_jacobian_default
	.xword	x_side_default
	.xword	vli_mmod_fast_secp256r1
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
