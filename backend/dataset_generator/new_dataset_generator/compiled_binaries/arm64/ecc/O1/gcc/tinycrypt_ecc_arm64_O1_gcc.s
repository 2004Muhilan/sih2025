	.arch armv8-a
	.file	"tinycrypt_ecc.c"
	.text
	.align	2
	.type	uECC_vli_rshift1, %function
uECC_vli_rshift1:
.LFB30:
	.cfi_startproc
	add	x1, x0, w1, sxtb 2
	cmp	x0, x1
	bcs	.L1
	mov	w2, 0
.L3:
	ldr	w3, [x1, -4]
	orr	w2, w2, w3, lsr 1
	str	w2, [x1, -4]!
	lsl	w2, w3, 31
	cmp	x0, x1
	bcc	.L3
.L1:
	ret
	.cfi_endproc
.LFE30:
	.size	uECC_vli_rshift1, .-uECC_vli_rshift1
	.align	2
	.type	uECC_vli_mult, %function
uECC_vli_mult:
.LFB32:
	.cfi_startproc
	sxtb	w3, w3
	cmp	w3, 0
	ble	.L15
	sxtw	x13, w3
	mov	x10, 0
	mov	w6, 0
	mov	w5, 0
	mov	w12, 0
	b	.L7
.L15:
	mov	w7, 0
	mov	w6, 0
	b	.L6
.L17:
	mov	w4, w6
	mov	w6, w7
	mov	w7, 0
	b	.L11
.L24:
	str	w5, [x0, x10, lsl 2]
	add	x10, x10, 1
	mov	w7, 0
.L14:
	mov	w5, w6
	mov	w6, w7
.L7:
	sxtb	w11, w10
	mov	w7, 0
	mov	w8, w12
	tbnz	x10, 7, .L24
.L8:
	sub	w4, w10, w8
	ldr	w4, [x2, w4, sxtw 2]
	ldr	w9, [x1, w8, sxtw 2]
	mul	x4, x4, x9
	uxtw	x5, w5
	orr	x5, x5, x6, lsl 32
	adds	x4, x4, x5
	cinc	w7, w7, cs
	lsr	x6, x4, 32
	mov	w5, w4
	add	w9, w8, 1
	sxtb	w8, w9
	cmp	w11, w9, sxtb
	bge	.L8
	str	w4, [x0, x10, lsl 2]
	add	x10, x10, 1
	cmp	x10, x13
	bne	.L14
.L6:
	mov	w4, w3
	lsl	w14, w3, 1
	sub	w13, w14, #1
	cmp	w13, w3
	ble	.L10
	mov	w11, w3
	mov	w12, 1
.L13:
	sxtb	w8, w12
	cmp	w3, w12, sxtb
	ble	.L17
	sxtw	x8, w8
	sxtw	x9, w4
	sub	x9, x9, x8
	add	x9, x2, x9, lsl 2
	mov	w4, w6
	mov	w6, w7
	mov	w7, 0
.L12:
	ldr	w5, [x1, x8, lsl 2]
	ldr	w10, [x9], -4
	mul	x5, x5, x10
	uxtw	x4, w4
	orr	x4, x4, x6, lsl 32
	adds	x4, x5, x4
	cinc	w7, w7, cs
	lsr	x6, x4, 32
	add	x8, x8, 1
	cmp	w3, w8, sxtb
	bgt	.L12
.L11:
	str	w4, [x0, w11, sxtw 2]
	add	w11, w11, 1
	sxtb	w11, w11
	mov	w4, w11
	add	w12, w12, 1
	and	w12, w12, 255
	cmp	w13, w11
	bgt	.L13
.L10:
	add	x14, x0, w14, sxtw 2
	str	w6, [x14, -4]
	ret
	.cfi_endproc
.LFE32:
	.size	uECC_vli_mult, .-uECC_vli_mult
	.align	2
	.type	uECC_vli_add, %function
uECC_vli_add:
.LFB28:
	.cfi_startproc
	mov	x7, x0
	sxtb	w3, w3
	cmp	w3, 0
	ble	.L28
	sbfiz	x3, x3, 2, 32
	mov	x5, 0
	mov	w0, 0
.L27:
	ldr	w6, [x1, x5]
	ldr	w4, [x2, x5]
	add	w4, w6, w4
	add	w4, w4, w0
	cmp	w6, w4
	csel	w0, w0, wzr, eq
	cset	w6, hi
	orr	w0, w0, w6
	str	w4, [x7, x5]
	add	x5, x5, 4
	cmp	x5, x3
	bne	.L27
.L25:
	ret
.L28:
	mov	w0, 0
	b	.L25
	.cfi_endproc
.LFE28:
	.size	uECC_vli_add, .-uECC_vli_add
	.align	2
	.type	vli_modInv_update, %function
vli_modInv_update:
.LFB39:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	mov	x19, x0
	sxtb	w20, w2
	ldr	w0, [x0]
	tbnz	x0, 0, .L35
	mov	w1, w20
	mov	x0, x19
	bl	uECC_vli_rshift1
	b	.L30
.L35:
	str	x21, [sp, 32]
	.cfi_offset 21, -16
	mov	w3, w20
	mov	x2, x1
	mov	x1, x19
	mov	x0, x19
	bl	uECC_vli_add
	mov	w21, w0
	mov	w1, w20
	mov	x0, x19
	bl	uECC_vli_rshift1
	cbz	w21, .L34
	sbfiz	x20, x20, 2, 32
	sub	x20, x20, #4
	ldr	w0, [x19, x20]
	orr	w0, w0, -2147483648
	str	w0, [x19, x20]
	ldr	x21, [sp, 32]
	.cfi_restore 21
.L30:
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
.L34:
	.cfi_def_cfa_offset 48
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	.cfi_offset 21, -16
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	ldr	x21, [sp, 32]
	.cfi_restore 21
	b	.L30
	.cfi_endproc
.LFE39:
	.size	vli_modInv_update, .-vli_modInv_update
	.align	2
	.global	uECC_set_rng
	.type	uECC_set_rng, %function
uECC_set_rng:
.LFB14:
	.cfi_startproc
	adrp	x1, .LANCHOR0
	str	x0, [x1, #:lo12:.LANCHOR0]
	ret
	.cfi_endproc
.LFE14:
	.size	uECC_set_rng, .-uECC_set_rng
	.align	2
	.global	uECC_get_rng
	.type	uECC_get_rng, %function
uECC_get_rng:
.LFB15:
	.cfi_startproc
	adrp	x0, .LANCHOR0
	ldr	x0, [x0, #:lo12:.LANCHOR0]
	ret
	.cfi_endproc
.LFE15:
	.size	uECC_get_rng, .-uECC_get_rng
	.align	2
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
	.global	uECC_vli_clear
	.type	uECC_vli_clear, %function
uECC_vli_clear:
.LFB18:
	.cfi_startproc
	sxtb	w1, w1
	cmp	w1, 0
	ble	.L40
	mov	x2, x0
	add	x1, x0, w1, sxtw 2
.L42:
	str	wzr, [x2], 4
	cmp	x2, x1
	bne	.L42
.L40:
	ret
	.cfi_endproc
.LFE18:
	.size	uECC_vli_clear, .-uECC_vli_clear
	.align	2
	.global	uECC_vli_isZero
	.type	uECC_vli_isZero, %function
uECC_vli_isZero:
.LFB19:
	.cfi_startproc
	sxtb	w1, w1
	cmp	w1, 0
	ble	.L47
	mov	x2, x0
	add	x1, x0, w1, sxtw 2
	mov	w0, 0
.L46:
	ldr	w3, [x2], 4
	orr	w0, w0, w3
	cmp	x2, x1
	bne	.L46
.L45:
	cmp	w0, 0
	cset	w0, eq
	ret
.L47:
	mov	w0, 0
	b	.L45
	.cfi_endproc
.LFE19:
	.size	uECC_vli_isZero, .-uECC_vli_isZero
	.align	2
	.global	uECC_vli_testBit
	.type	uECC_vli_testBit, %function
uECC_vli_testBit:
.LFB20:
	.cfi_startproc
	sbfx	x3, x1, 5, 11
	mov	w2, 1
	lsl	w1, w2, w1
	ldr	w0, [x0, x3, lsl 2]
	and	w0, w1, w0
	ret
	.cfi_endproc
.LFE20:
	.size	uECC_vli_testBit, .-uECC_vli_testBit
	.align	2
	.global	uECC_vli_numBits
	.type	uECC_vli_numBits, %function
uECC_vli_numBits:
.LFB22:
	.cfi_startproc
	mov	x3, x0
	sxtb	w1, w1
	sub	w0, w1, #1
	sxtb	w1, w0
	tbnz	x0, 7, .L51
	sxtw	x1, w1
.L52:
	and	w0, w1, 255
	ldr	w2, [x3, x1, lsl 2]
	cbnz	w2, .L64
	sub	x1, x1, #1
	tbz	x1, 7, .L52
	sub	w0, w0, #1
	sxtb	w1, w0
.L51:
	add	w1, w1, 1
	sxtb	w1, w1
	mov	w0, 0
	cbz	w1, .L60
	b	.L58
.L64:
	add	w1, w1, 1
	sxtb	w1, w1
.L58:
	add	x3, x3, w1, sxtw 2
	ldr	w2, [x3, -4]
	cbz	w2, .L56
	mov	w0, w2
.L57:
	lsr	w0, w0, 1
	cbnz	w0, .L57
	clz	w2, w2
	mov	w0, 32
	sub	w2, w0, w2
.L56:
	sub	w1, w1, #1
	ubfiz	w1, w1, 5, 11
	add	w0, w2, w1
	sxth	w0, w0
.L60:
	ret
	.cfi_endproc
.LFE22:
	.size	uECC_vli_numBits, .-uECC_vli_numBits
	.align	2
	.global	uECC_vli_set
	.type	uECC_vli_set, %function
uECC_vli_set:
.LFB23:
	.cfi_startproc
	sxtb	w2, w2
	cmp	w2, 0
	ble	.L65
	sbfiz	x2, x2, 2, 32
	mov	x3, 0
.L67:
	ldr	w4, [x1, x3]
	str	w4, [x0, x3]
	add	x3, x3, 4
	cmp	x3, x2
	bne	.L67
.L65:
	ret
	.cfi_endproc
.LFE23:
	.size	uECC_vli_set, .-uECC_vli_set
	.align	2
	.global	uECC_vli_cmp_unsafe
	.type	uECC_vli_cmp_unsafe, %function
uECC_vli_cmp_unsafe:
.LFB24:
	.cfi_startproc
	sxtb	w2, w2
	sub	w3, w2, #1
	sxtb	w2, w3
	tbnz	x3, 7, .L72
	sxtw	x2, w2
.L71:
	ldr	w4, [x0, x2, lsl 2]
	ldr	w3, [x1, x2, lsl 2]
	cmp	w4, w3
	bhi	.L73
	bcc	.L74
	sub	x2, x2, #1
	tbz	x2, 7, .L71
	mov	w0, 0
	b	.L70
.L72:
	mov	w0, 0
	b	.L70
.L73:
	mov	w0, 1
.L70:
	ret
.L74:
	mov	w0, -1
	b	.L70
	.cfi_endproc
.LFE24:
	.size	uECC_vli_cmp_unsafe, .-uECC_vli_cmp_unsafe
	.align	2
	.global	uECC_vli_equal
	.type	uECC_vli_equal, %function
uECC_vli_equal:
.LFB25:
	.cfi_startproc
	sxtb	w2, w2
	sub	w3, w2, #1
	sxtb	w2, w3
	tbnz	x3, 7, .L79
	sxtw	x2, w2
	mov	w4, 0
.L78:
	ldr	w3, [x0, x2, lsl 2]
	ldr	w5, [x1, x2, lsl 2]
	eor	w3, w3, w5
	orr	w4, w4, w3
	sub	x2, x2, #1
	tbz	x2, 7, .L78
.L77:
	cmp	w4, 0
	cset	w0, ne
	ret
.L79:
	mov	w4, 0
	b	.L77
	.cfi_endproc
.LFE25:
	.size	uECC_vli_equal, .-uECC_vli_equal
	.align	2
	.global	cond_set
	.type	cond_set, %function
cond_set:
.LFB26:
	.cfi_startproc
	cmp	w2, 0
	csel	w1, w1, wzr, eq
	mul	w0, w0, w2
	orr	w0, w1, w0
	ret
	.cfi_endproc
.LFE26:
	.size	cond_set, .-cond_set
	.align	2
	.global	uECC_vli_sub
	.type	uECC_vli_sub, %function
uECC_vli_sub:
.LFB27:
	.cfi_startproc
	mov	x8, x0
	sxtb	w3, w3
	cmp	w3, 0
	ble	.L85
	sbfiz	x3, x3, 2, 32
	mov	x4, 0
	mov	w0, 0
.L84:
	ldr	w6, [x1, x4]
	sub	w5, w6, w0
	ldr	w7, [x2, x4]
	sub	w5, w5, w7
	cmp	w6, w5
	csel	w0, w0, wzr, eq
	cset	w6, cc
	orr	w0, w0, w6
	str	w5, [x8, x4]
	add	x4, x4, 4
	cmp	x3, x4
	bne	.L84
.L82:
	ret
.L85:
	mov	w0, 0
	b	.L82
	.cfi_endproc
.LFE27:
	.size	uECC_vli_sub, .-uECC_vli_sub
	.align	2
	.global	vli_mmod_fast_secp256r1
	.type	vli_mmod_fast_secp256r1, %function
vli_mmod_fast_secp256r1:
.LFB44:
	.cfi_startproc
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, 48]
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	add	x29, sp, 48
	stp	x19, x20, [sp, 64]
	stp	x21, x22, [sp, 80]
	str	x23, [sp, 96]
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	.cfi_offset 21, -32
	.cfi_offset 22, -24
	.cfi_offset 23, -16
	mov	x20, x0
	mov	x19, x1
	adrp	x2, :got:__stack_chk_guard
	ldr	x2, [x2, :got_lo12:__stack_chk_guard]
	ldr	x3, [x2]
	str	x3, [sp, 40]
	mov	x3, 0
	mov	w2, 8
	bl	uECC_vli_set
	str	wzr, [sp, 16]
	str	wzr, [sp, 12]
	str	wzr, [sp, 8]
	ldr	w0, [x19, 44]
	str	w0, [sp, 20]
	ldr	w0, [x19, 48]
	str	w0, [sp, 24]
	ldr	w0, [x19, 52]
	str	w0, [sp, 28]
	ldr	w0, [x19, 56]
	str	w0, [sp, 32]
	ldr	w0, [x19, 60]
	str	w0, [sp, 36]
	add	x23, sp, 8
	mov	w3, 8
	mov	x2, x23
	mov	x1, x23
	mov	x0, x23
	bl	uECC_vli_add
	mov	w21, w0
	mov	w3, 8
	mov	x2, x23
	mov	x1, x20
	mov	x0, x20
	bl	uECC_vli_add
	add	w21, w21, w0
	ldr	w0, [x19, 48]
	str	w0, [sp, 20]
	ldr	w0, [x19, 52]
	str	w0, [sp, 24]
	ldr	w0, [x19, 56]
	str	w0, [sp, 28]
	ldr	w0, [x19, 60]
	str	w0, [sp, 32]
	str	wzr, [sp, 36]
	mov	w3, 8
	mov	x2, x23
	mov	x1, x23
	mov	x0, x23
	bl	uECC_vli_add
	mov	w22, w0
	mov	w3, 8
	mov	x2, x23
	mov	x1, x20
	mov	x0, x20
	bl	uECC_vli_add
	add	w22, w22, w0
	add	w22, w22, w21
	ldr	w0, [x19, 32]
	str	w0, [sp, 8]
	ldr	w0, [x19, 36]
	str	w0, [sp, 12]
	ldr	w0, [x19, 40]
	str	w0, [sp, 16]
	str	wzr, [sp, 28]
	str	wzr, [sp, 24]
	str	wzr, [sp, 20]
	ldr	w0, [x19, 56]
	str	w0, [sp, 32]
	ldr	w0, [x19, 60]
	str	w0, [sp, 36]
	mov	w3, 8
	mov	x2, x23
	mov	x1, x20
	mov	x0, x20
	bl	uECC_vli_add
	mov	w21, w0
	ldr	w0, [x19, 36]
	str	w0, [sp, 8]
	ldr	w0, [x19, 40]
	str	w0, [sp, 12]
	ldr	w0, [x19, 44]
	str	w0, [sp, 16]
	ldr	w0, [x19, 52]
	str	w0, [sp, 20]
	ldr	w1, [x19, 56]
	str	w1, [sp, 24]
	ldr	w1, [x19, 60]
	str	w1, [sp, 28]
	str	w0, [sp, 32]
	ldr	w0, [x19, 32]
	str	w0, [sp, 36]
	mov	w3, 8
	mov	x2, x23
	mov	x1, x20
	mov	x0, x20
	bl	uECC_vli_add
	add	w21, w21, w0
	add	w21, w21, w22
	ldr	w0, [x19, 44]
	str	w0, [sp, 8]
	ldr	w0, [x19, 48]
	str	w0, [sp, 12]
	ldr	w0, [x19, 52]
	str	w0, [sp, 16]
	str	wzr, [sp, 28]
	str	wzr, [sp, 24]
	str	wzr, [sp, 20]
	ldr	w0, [x19, 32]
	str	w0, [sp, 32]
	ldr	w0, [x19, 40]
	str	w0, [sp, 36]
	mov	w3, 8
	mov	x2, x23
	mov	x1, x20
	mov	x0, x20
	bl	uECC_vli_sub
	mov	w22, w0
	ldr	w0, [x19, 48]
	str	w0, [sp, 8]
	ldr	w0, [x19, 52]
	str	w0, [sp, 12]
	ldr	w0, [x19, 56]
	str	w0, [sp, 16]
	ldr	w0, [x19, 60]
	str	w0, [sp, 20]
	ldr	w0, [x19, 36]
	str	w0, [sp, 32]
	ldr	w0, [x19, 44]
	str	w0, [sp, 36]
	mov	w3, 8
	mov	x2, x23
	mov	x1, x20
	mov	x0, x20
	bl	uECC_vli_sub
	add	w22, w22, w0
	sub	w21, w21, w22
	ldr	w0, [x19, 52]
	str	w0, [sp, 8]
	ldr	w0, [x19, 56]
	str	w0, [sp, 12]
	ldr	w0, [x19, 60]
	str	w0, [sp, 16]
	ldr	w0, [x19, 32]
	str	w0, [sp, 20]
	ldr	w0, [x19, 36]
	str	w0, [sp, 24]
	ldr	w0, [x19, 40]
	str	w0, [sp, 28]
	str	wzr, [sp, 32]
	ldr	w0, [x19, 48]
	str	w0, [sp, 36]
	mov	w3, 8
	mov	x2, x23
	mov	x1, x20
	mov	x0, x20
	bl	uECC_vli_sub
	mov	w22, w0
	ldr	w0, [x19, 56]
	str	w0, [sp, 8]
	ldr	w0, [x19, 60]
	str	w0, [sp, 12]
	str	wzr, [sp, 16]
	ldr	w0, [x19, 36]
	str	w0, [sp, 20]
	ldr	w0, [x19, 40]
	str	w0, [sp, 24]
	ldr	w0, [x19, 44]
	str	w0, [sp, 28]
	ldr	w0, [x19, 52]
	str	w0, [sp, 36]
	mov	w3, 8
	mov	x2, x23
	mov	x1, x20
	mov	x0, x20
	bl	uECC_vli_sub
	add	w0, w22, w0
	subs	w19, w21, w0
	bmi	.L95
	adrp	x21, .LANCHOR1
	add	x21, x21, :lo12:.LANCHOR1
	add	x21, x21, 4
	mov	w22, 8
	b	.L88
.L95:
	adrp	x21, .LANCHOR1
	add	x21, x21, :lo12:.LANCHOR1
	add	x21, x21, 4
	mov	w22, 8
.L89:
	mov	w3, w22
	mov	x2, x21
	mov	x1, x20
	mov	x0, x20
	bl	uECC_vli_add
	adds	w19, w19, w0
	bmi	.L89
	b	.L87
.L91:
	mov	w3, w22
	mov	x2, x21
	mov	x1, x20
	mov	x0, x20
	bl	uECC_vli_sub
	sub	w19, w19, w0
.L88:
	cbnz	w19, .L91
	mov	w2, w22
	mov	x1, x20
	mov	x0, x21
	bl	uECC_vli_cmp_unsafe
	sxtb	w0, w0
	cmp	w0, 1
	bne	.L91
.L87:
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 40]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	bne	.L97
	ldp	x19, x20, [sp, 64]
	ldp	x21, x22, [sp, 80]
	ldr	x23, [sp, 96]
	ldp	x29, x30, [sp, 48]
	add	sp, sp, 112
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
.L97:
	.cfi_restore_state
	bl	__stack_chk_fail
	.cfi_endproc
.LFE44:
	.size	vli_mmod_fast_secp256r1, .-vli_mmod_fast_secp256r1
	.align	2
	.global	uECC_vli_cmp
	.type	uECC_vli_cmp, %function
uECC_vli_cmp:
.LFB29:
	.cfi_startproc
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, 48]
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	add	x29, sp, 48
	stp	x19, x20, [sp, 64]
	str	x21, [sp, 80]
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	.cfi_offset 21, -16
	sxtb	w21, w2
	adrp	x2, :got:__stack_chk_guard
	ldr	x2, [x2, :got_lo12:__stack_chk_guard]
	ldr	x3, [x2]
	str	x3, [sp, 40]
	mov	x3, 0
	add	x19, sp, 8
	mov	w3, w21
	mov	x2, x1
	mov	x1, x0
	mov	x0, x19
	bl	uECC_vli_sub
	mov	w20, w0
	mov	w1, w21
	mov	x0, x19
	bl	uECC_vli_isZero
	cmp	w0, 0
	cset	w1, eq
	cmp	w20, 0
	cset	w0, ne
	sub	w0, w1, w0, lsl 1
	adrp	x1, :got:__stack_chk_guard
	ldr	x1, [x1, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 40]
	ldr	x2, [x1]
	subs	x3, x3, x2
	mov	x2, 0
	bne	.L101
	ldp	x19, x20, [sp, 64]
	ldr	x21, [sp, 80]
	ldp	x29, x30, [sp, 48]
	add	sp, sp, 96
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 21
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
.L101:
	.cfi_restore_state
	bl	__stack_chk_fail
	.cfi_endproc
.LFE29:
	.size	uECC_vli_cmp, .-uECC_vli_cmp
	.align	2
	.global	uECC_vli_modAdd
	.type	uECC_vli_modAdd, %function
uECC_vli_modAdd:
.LFB33:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x21, [sp, 32]
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	.cfi_offset 21, -16
	mov	x19, x0
	mov	x20, x3
	sxtb	w21, w4
	mov	w3, w21
	bl	uECC_vli_add
	cbnz	w0, .L103
	mov	w2, w21
	mov	x1, x19
	mov	x0, x20
	bl	uECC_vli_cmp_unsafe
	sxtb	w0, w0
	cmp	w0, 1
	beq	.L102
.L103:
	mov	w3, w21
	mov	x2, x20
	mov	x1, x19
	mov	x0, x19
	bl	uECC_vli_sub
.L102:
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
.LFE33:
	.size	uECC_vli_modAdd, .-uECC_vli_modAdd
	.align	2
	.global	uECC_vli_modSub
	.type	uECC_vli_modSub, %function
uECC_vli_modSub:
.LFB34:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x21, [sp, 32]
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	.cfi_offset 21, -16
	mov	x19, x0
	mov	x20, x3
	sxtb	w21, w4
	mov	w3, w21
	bl	uECC_vli_sub
	cbnz	w0, .L109
.L106:
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 48
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
.L109:
	.cfi_restore_state
	mov	w3, w21
	mov	x2, x20
	mov	x1, x19
	mov	x0, x19
	bl	uECC_vli_add
	b	.L106
	.cfi_endproc
.LFE34:
	.size	uECC_vli_modSub, .-uECC_vli_modSub
	.align	2
	.global	uECC_vli_mmod
	.type	uECC_vli_mmod, %function
uECC_vli_mmod:
.LFB35:
	.cfi_startproc
	sub	sp, sp, #272
	.cfi_def_cfa_offset 272
	stp	x29, x30, [sp, 176]
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	add	x29, sp, 176
	stp	x19, x20, [sp, 192]
	stp	x21, x22, [sp, 208]
	stp	x23, x24, [sp, 224]
	.cfi_offset 19, -80
	.cfi_offset 20, -72
	.cfi_offset 21, -64
	.cfi_offset 22, -56
	.cfi_offset 23, -48
	.cfi_offset 24, -40
	str	x0, [sp, 8]
	mov	x20, x2
	sxtb	w23, w3
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [x0]
	str	x2, [sp, 168]
	mov	x2, 0
	add	x0, sp, 104
	str	x0, [sp, 24]
	str	x1, [sp, 32]
	mov	w1, w23
	mov	x0, x20
	bl	uECC_vli_numBits
	ubfiz	w1, w23, 6, 10
	sub	w1, w1, w0
	sxth	w21, w1
	add	w7, w21, 31
	cmp	w21, 0
	csel	w7, w7, w21, lt
	sbfx	x22, x7, 5, 8
	negs	w19, w21
	and	w0, w21, 31
	and	w19, w19, 31
	csneg	w19, w0, w19, mi
	mov	w1, w22
	add	x0, sp, 40
	bl	uECC_vli_clear
	cmp	w19, 0
	ble	.L111
	stp	x25, x26, [sp, 240]
	.cfi_offset 26, -24
	.cfi_offset 25, -32
	stp	x27, x28, [sp, 256]
	.cfi_offset 28, -8
	.cfi_offset 27, -16
	cbz	w23, .L120
	mov	x4, x20
	mov	w0, w22
	add	w7, w22, w23
	mov	w3, 0
	add	x6, sp, 40
	mov	w5, 32
	sub	w5, w5, w19
.L113:
	ldr	w2, [x4], 4
	lsl	w1, w2, w19
	orr	w1, w1, w3
	str	w1, [x6, w0, uxtw 2]
	lsr	w3, w2, w5
	add	w0, w0, 1
	cmp	w0, w7
	bne	.L113
.L120:
	lsl	w20, w23, 1
	add	x27, sp, 40
	add	x27, x27, w23, sxtw 2
	mov	w22, 1
	mov	w24, 0
	add	x26, sp, 24
	add	x19, sp, 40
	sub	w25, w23, #1
	sbfiz	x25, x25, 2, 32
	sbfiz	x28, x23, 2, 32
	b	.L115
.L111:
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	mov	w2, w23
	mov	x1, x20
	add	x0, sp, 40
	add	x0, x0, w22, sxtw 2
	bl	uECC_vli_set
	mov	w22, 1
	tbnz	w21, #31, .L114
	stp	x25, x26, [sp, 240]
	.cfi_offset 26, -24
	.cfi_offset 25, -32
	stp	x27, x28, [sp, 256]
	.cfi_offset 28, -8
	.cfi_offset 27, -16
	b	.L120
.L127:
	cset	w4, cc
.L116:
	str	w0, [x5, x3, lsl 2]
	add	w1, w1, 1
	sxtb	w1, w1
	mov	w0, w1
	cmp	w1, w20
	bge	.L119
.L117:
	sxtw	x3, w1
	ldr	w2, [x6, x3, lsl 2]
	ldr	w0, [x19, w0, sxtw 2]
	add	w0, w4, w0
	sub	w0, w2, w0
	cmp	w2, w0
	bne	.L127
	b	.L116
.L119:
	cmp	w22, w4
	cset	w22, eq
	mov	w1, w23
	mov	x0, x19
	bl	uECC_vli_rshift1
	ldr	w0, [x19, x28]
	ldr	w1, [x19, x25]
	orr	w0, w1, w0, lsl 31
	str	w0, [x19, x25]
	mov	w1, w23
	mov	x0, x27
	bl	uECC_vli_rshift1
	sub	w21, w21, #1
	sxth	w21, w21
	cmn	w21, #1
	beq	.L126
.L115:
	mov	w4, w24
	cmp	w23, 0
	ble	.L119
	uxtw	x0, w22
	ldr	x6, [x26, x0, lsl 3]
	eor	w0, w22, 1
	uxtw	x0, w0
	ldr	x5, [x26, x0, lsl 3]
	mov	w1, w24
	mov	w4, w24
	mov	w0, w24
	b	.L117
.L126:
	ldp	x25, x26, [sp, 240]
	.cfi_restore 26
	.cfi_restore 25
	ldp	x27, x28, [sp, 256]
	.cfi_restore 28
	.cfi_restore 27
.L114:
	uxtw	x22, w22
	mov	w2, w23
	add	x0, sp, 24
	ldr	x1, [x0, x22, lsl 3]
	ldr	x0, [sp, 8]
	bl	uECC_vli_set
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 168]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	bne	.L128
	ldp	x19, x20, [sp, 192]
	ldp	x21, x22, [sp, 208]
	ldp	x23, x24, [sp, 224]
	ldp	x29, x30, [sp, 176]
	add	sp, sp, 272
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
.L128:
	.cfi_restore_state
	stp	x25, x26, [sp, 240]
	.cfi_offset 26, -24
	.cfi_offset 25, -32
	stp	x27, x28, [sp, 256]
	.cfi_offset 28, -8
	.cfi_offset 27, -16
	bl	__stack_chk_fail
	.cfi_endproc
.LFE35:
	.size	uECC_vli_mmod, .-uECC_vli_mmod
	.align	2
	.global	uECC_vli_modMult
	.type	uECC_vli_modMult, %function
uECC_vli_modMult:
.LFB36:
	.cfi_startproc
	sub	sp, sp, #128
	.cfi_def_cfa_offset 128
	stp	x29, x30, [sp, 80]
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	add	x29, sp, 80
	stp	x19, x20, [sp, 96]
	stp	x21, x22, [sp, 112]
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	.cfi_offset 21, -16
	.cfi_offset 22, -8
	mov	x20, x0
	mov	x21, x3
	sxtb	w22, w4
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [x0]
	str	x3, [sp, 72]
	mov	x3, 0
	add	x19, sp, 8
	mov	w3, w22
	mov	x0, x19
	bl	uECC_vli_mult
	mov	w3, w22
	mov	x2, x21
	mov	x1, x19
	mov	x0, x20
	bl	uECC_vli_mmod
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 72]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	bne	.L132
	ldp	x19, x20, [sp, 96]
	ldp	x21, x22, [sp, 112]
	ldp	x29, x30, [sp, 80]
	add	sp, sp, 128
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
.L132:
	.cfi_restore_state
	bl	__stack_chk_fail
	.cfi_endproc
.LFE36:
	.size	uECC_vli_modMult, .-uECC_vli_modMult
	.align	2
	.global	uECC_vli_modMult_fast
	.type	uECC_vli_modMult_fast, %function
uECC_vli_modMult_fast:
.LFB37:
	.cfi_startproc
	sub	sp, sp, #128
	.cfi_def_cfa_offset 128
	stp	x29, x30, [sp, 80]
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	add	x29, sp, 80
	stp	x19, x20, [sp, 96]
	str	x21, [sp, 112]
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	.cfi_offset 21, -16
	mov	x21, x0
	mov	x20, x3
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [x0]
	str	x3, [sp, 72]
	mov	x3, 0
	add	x19, sp, 8
	ldrb	w3, [x20]
	mov	x0, x19
	bl	uECC_vli_mult
	ldr	x2, [x20, 184]
	mov	x1, x19
	mov	x0, x21
	blr	x2
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 72]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	bne	.L136
	ldp	x19, x20, [sp, 96]
	ldr	x21, [sp, 112]
	ldp	x29, x30, [sp, 80]
	add	sp, sp, 128
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 21
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
.L136:
	.cfi_restore_state
	bl	__stack_chk_fail
	.cfi_endproc
.LFE37:
	.size	uECC_vli_modMult_fast, .-uECC_vli_modMult_fast
	.align	2
	.type	uECC_vli_modSquare_fast, %function
uECC_vli_modSquare_fast:
.LFB38:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp
	mov	x3, x2
	mov	x2, x1
	bl	uECC_vli_modMult_fast
	ldp	x29, x30, [sp], 16
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE38:
	.size	uECC_vli_modSquare_fast, .-uECC_vli_modSquare_fast
	.align	2
	.global	double_jacobian_default
	.type	double_jacobian_default, %function
double_jacobian_default:
.LFB41:
	.cfi_startproc
	sub	sp, sp, #160
	.cfi_def_cfa_offset 160
	stp	x29, x30, [sp, 80]
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	add	x29, sp, 80
	stp	x19, x20, [sp, 96]
	stp	x21, x22, [sp, 112]
	stp	x23, x24, [sp, 128]
	.cfi_offset 19, -64
	.cfi_offset 20, -56
	.cfi_offset 21, -48
	.cfi_offset 22, -40
	.cfi_offset 23, -32
	.cfi_offset 24, -24
	mov	x20, x0
	mov	x23, x1
	mov	x19, x2
	mov	x22, x3
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 72]
	mov	x1, 0
	ldrsb	w21, [x3]
	mov	w1, w21
	mov	x0, x2
	bl	uECC_vli_isZero
	cbz	w0, .L145
.L139:
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 72]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	bne	.L146
	ldp	x19, x20, [sp, 96]
	ldp	x21, x22, [sp, 112]
	ldp	x23, x24, [sp, 128]
	ldp	x29, x30, [sp, 80]
	add	sp, sp, 160
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
.L145:
	.cfi_restore_state
	str	x25, [sp, 144]
	.cfi_offset 25, -16
	add	x24, sp, 8
	mov	x2, x22
	mov	x1, x23
	mov	x0, x24
	bl	uECC_vli_modSquare_fast
	mov	x3, x22
	mov	x2, x24
	mov	x1, x20
	add	x0, sp, 40
	bl	uECC_vli_modMult_fast
	mov	x2, x22
	mov	x1, x24
	mov	x0, x24
	bl	uECC_vli_modSquare_fast
	mov	x3, x22
	mov	x2, x19
	mov	x1, x23
	mov	x0, x23
	bl	uECC_vli_modMult_fast
	mov	x2, x22
	mov	x1, x19
	mov	x0, x19
	bl	uECC_vli_modSquare_fast
	add	x24, x22, 4
	mov	w4, w21
	mov	x3, x24
	mov	x2, x19
	mov	x1, x20
	mov	x0, x20
	bl	uECC_vli_modAdd
	mov	w4, w21
	mov	x3, x24
	mov	x2, x19
	mov	x1, x19
	mov	x0, x19
	bl	uECC_vli_modAdd
	mov	w4, w21
	mov	x3, x24
	mov	x2, x19
	mov	x1, x20
	mov	x0, x19
	bl	uECC_vli_modSub
	mov	x3, x22
	mov	x2, x19
	mov	x1, x20
	mov	x0, x20
	bl	uECC_vli_modMult_fast
	mov	w4, w21
	mov	x3, x24
	mov	x2, x20
	mov	x1, x20
	mov	x0, x19
	bl	uECC_vli_modAdd
	mov	w4, w21
	mov	x3, x24
	mov	x2, x19
	mov	x1, x20
	mov	x0, x20
	bl	uECC_vli_modAdd
	mov	w1, 0
	mov	x0, x20
	bl	uECC_vli_testBit
	cbz	w0, .L141
	mov	w3, w21
	mov	x2, x24
	mov	x1, x20
	mov	x0, x20
	bl	uECC_vli_add
	mov	w25, w0
	mov	w1, w21
	mov	x0, x20
	bl	uECC_vli_rshift1
	sbfiz	x0, x21, 2, 32
	sub	x0, x0, #4
	ldr	w1, [x20, x0]
	orr	w25, w1, w25, lsl 31
	str	w25, [x20, x0]
.L142:
	mov	x2, x22
	mov	x1, x20
	mov	x0, x19
	bl	uECC_vli_modSquare_fast
	add	x25, sp, 40
	mov	w4, w21
	mov	x3, x24
	mov	x2, x25
	mov	x1, x19
	mov	x0, x19
	bl	uECC_vli_modSub
	mov	w4, w21
	mov	x3, x24
	mov	x2, x25
	mov	x1, x19
	mov	x0, x19
	bl	uECC_vli_modSub
	mov	w4, w21
	mov	x3, x24
	mov	x2, x19
	mov	x1, x25
	mov	x0, x25
	bl	uECC_vli_modSub
	mov	x3, x22
	mov	x2, x25
	mov	x1, x20
	mov	x0, x20
	bl	uECC_vli_modMult_fast
	add	x22, sp, 8
	mov	w4, w21
	mov	x3, x24
	mov	x2, x22
	mov	x1, x20
	mov	x0, x22
	bl	uECC_vli_modSub
	mov	w2, w21
	mov	x1, x19
	mov	x0, x20
	bl	uECC_vli_set
	mov	w2, w21
	mov	x1, x23
	mov	x0, x19
	bl	uECC_vli_set
	mov	w2, w21
	mov	x1, x22
	mov	x0, x23
	bl	uECC_vli_set
	ldr	x25, [sp, 144]
	.cfi_remember_state
	.cfi_restore 25
	b	.L139
.L141:
	.cfi_restore_state
	mov	w1, w21
	mov	x0, x20
	bl	uECC_vli_rshift1
	b	.L142
.L146:
	.cfi_restore 25
	str	x25, [sp, 144]
	.cfi_offset 25, -16
	bl	__stack_chk_fail
	.cfi_endproc
.LFE41:
	.size	double_jacobian_default, .-double_jacobian_default
	.align	2
	.global	x_side_default
	.type	x_side_default, %function
x_side_default:
.LFB42:
	.cfi_startproc
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, 48]
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	add	x29, sp, 48
	stp	x19, x20, [sp, 64]
	stp	x21, x22, [sp, 80]
	str	x23, [sp, 96]
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	.cfi_offset 21, -32
	.cfi_offset 22, -24
	.cfi_offset 23, -16
	mov	x19, x0
	mov	x22, x1
	mov	x20, x2
	adrp	x3, :got:__stack_chk_guard
	ldr	x3, [x3, :got_lo12:__stack_chk_guard]
	ldr	x4, [x3]
	str	x4, [sp, 40]
	mov	x4, 0
	add	x3, sp, 4
	stp	xzr, xzr, [x3, 8]
	str	xzr, [sp, 28]
	str	wzr, [sp, 36]
	mov	w3, 3
	str	w3, [sp, 8]
	mov	x21, x2
	ldrsb	w23, [x21], 4
	bl	uECC_vli_modSquare_fast
	mov	w4, w23
	mov	x3, x21
	add	x2, sp, 8
	mov	x1, x19
	mov	x0, x19
	bl	uECC_vli_modSub
	mov	x3, x20
	mov	x2, x22
	mov	x1, x19
	mov	x0, x19
	bl	uECC_vli_modMult_fast
	mov	w4, w23
	mov	x3, x21
	add	x2, x20, 132
	mov	x1, x19
	mov	x0, x19
	bl	uECC_vli_modAdd
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 40]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	bne	.L150
	ldp	x19, x20, [sp, 64]
	ldp	x21, x22, [sp, 80]
	ldr	x23, [sp, 96]
	ldp	x29, x30, [sp, 48]
	add	sp, sp, 112
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
.L150:
	.cfi_restore_state
	bl	__stack_chk_fail
	.cfi_endproc
.LFE42:
	.size	x_side_default, .-x_side_default
	.align	2
	.type	XYcZ_addC, %function
XYcZ_addC:
.LFB49:
	.cfi_startproc
	sub	sp, sp, #208
	.cfi_def_cfa_offset 208
	stp	x29, x30, [sp, 112]
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	add	x29, sp, 112
	stp	x19, x20, [sp, 128]
	stp	x21, x22, [sp, 144]
	stp	x23, x24, [sp, 160]
	stp	x25, x26, [sp, 176]
	str	x27, [sp, 192]
	.cfi_offset 19, -80
	.cfi_offset 20, -72
	.cfi_offset 21, -64
	.cfi_offset 22, -56
	.cfi_offset 23, -48
	.cfi_offset 24, -40
	.cfi_offset 25, -32
	.cfi_offset 26, -24
	.cfi_offset 27, -16
	mov	x24, x0
	mov	x27, x1
	mov	x23, x2
	mov	x26, x3
	mov	x22, x4
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 104]
	mov	x1, 0
	mov	x19, x4
	ldrsb	w20, [x19], 4
	add	x25, sp, 8
	mov	w4, w20
	mov	x3, x19
	mov	x2, x24
	mov	x1, x23
	mov	x0, x25
	bl	uECC_vli_modSub
	mov	x2, x22
	mov	x1, x25
	mov	x0, x25
	bl	uECC_vli_modSquare_fast
	mov	x3, x22
	mov	x2, x25
	mov	x1, x24
	mov	x0, x24
	bl	uECC_vli_modMult_fast
	mov	x3, x22
	mov	x2, x25
	mov	x1, x23
	mov	x0, x23
	bl	uECC_vli_modMult_fast
	mov	w4, w20
	mov	x3, x19
	mov	x2, x27
	mov	x1, x26
	mov	x0, x25
	bl	uECC_vli_modAdd
	mov	w4, w20
	mov	x3, x19
	mov	x2, x27
	mov	x1, x26
	mov	x0, x26
	bl	uECC_vli_modSub
	add	x21, sp, 40
	mov	w4, w20
	mov	x3, x19
	mov	x2, x24
	mov	x1, x23
	mov	x0, x21
	bl	uECC_vli_modSub
	mov	x3, x22
	mov	x2, x21
	mov	x1, x27
	mov	x0, x27
	bl	uECC_vli_modMult_fast
	mov	w4, w20
	mov	x3, x19
	mov	x2, x23
	mov	x1, x24
	mov	x0, x21
	bl	uECC_vli_modAdd
	mov	x2, x22
	mov	x1, x26
	mov	x0, x23
	bl	uECC_vli_modSquare_fast
	mov	w4, w20
	mov	x3, x19
	mov	x2, x21
	mov	x1, x23
	mov	x0, x23
	bl	uECC_vli_modSub
	add	x0, sp, 72
	mov	w4, w20
	mov	x3, x19
	mov	x2, x23
	mov	x1, x24
	mov	x23, x0
	bl	uECC_vli_modSub
	mov	x3, x22
	mov	x2, x23
	mov	x1, x26
	mov	x0, x26
	bl	uECC_vli_modMult_fast
	mov	w4, w20
	mov	x3, x19
	mov	x2, x27
	mov	x1, x26
	mov	x0, x26
	bl	uECC_vli_modSub
	mov	x2, x22
	mov	x1, x25
	mov	x0, x23
	bl	uECC_vli_modSquare_fast
	mov	w4, w20
	mov	x3, x19
	mov	x2, x21
	mov	x1, x23
	mov	x0, x23
	bl	uECC_vli_modSub
	mov	w4, w20
	mov	x3, x19
	mov	x2, x24
	mov	x1, x23
	mov	x0, x21
	bl	uECC_vli_modSub
	mov	x3, x22
	mov	x2, x25
	mov	x1, x21
	mov	x0, x21
	bl	uECC_vli_modMult_fast
	mov	w4, w20
	mov	x3, x19
	mov	x2, x27
	mov	x1, x21
	mov	x0, x27
	bl	uECC_vli_modSub
	mov	w2, w20
	mov	x1, x23
	mov	x0, x24
	bl	uECC_vli_set
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 104]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	bne	.L154
	ldp	x19, x20, [sp, 128]
	ldp	x21, x22, [sp, 144]
	ldp	x23, x24, [sp, 160]
	ldp	x25, x26, [sp, 176]
	ldr	x27, [sp, 192]
	ldp	x29, x30, [sp, 112]
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
.L154:
	.cfi_restore_state
	bl	__stack_chk_fail
	.cfi_endproc
.LFE49:
	.size	XYcZ_addC, .-XYcZ_addC
	.align	2
	.global	uECC_vli_modInv
	.type	uECC_vli_modInv, %function
uECC_vli_modInv:
.LFB40:
	.cfi_startproc
	sub	sp, sp, #224
	.cfi_def_cfa_offset 224
	stp	x29, x30, [sp, 144]
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	add	x29, sp, 144
	stp	x19, x20, [sp, 160]
	stp	x23, x24, [sp, 192]
	str	x25, [sp, 208]
	.cfi_offset 19, -64
	.cfi_offset 20, -56
	.cfi_offset 23, -32
	.cfi_offset 24, -24
	.cfi_offset 25, -16
	mov	x25, x0
	mov	x20, x1
	mov	x23, x2
	sxtb	w19, w3
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 136]
	mov	x1, 0
	mov	w1, w19
	mov	x0, x20
	bl	uECC_vli_isZero
	cbnz	w0, .L168
	stp	x21, x22, [sp, 176]
	.cfi_remember_state
	.cfi_offset 22, -40
	.cfi_offset 21, -48
	mov	w2, w19
	mov	x1, x20
	add	x0, sp, 8
	bl	uECC_vli_set
	mov	w2, w19
	mov	x1, x23
	add	x0, sp, 40
	bl	uECC_vli_set
	mov	w1, w19
	add	x0, sp, 72
	bl	uECC_vli_clear
	mov	w0, 1
	str	w0, [sp, 72]
	mov	w1, w19
	add	x0, sp, 104
	bl	uECC_vli_clear
	add	x21, sp, 40
	add	x20, sp, 8
	add	x22, sp, 72
	add	x24, sp, 104
	b	.L158
.L168:
	.cfi_restore_state
	mov	w1, w19
	mov	x0, x25
	bl	uECC_vli_clear
	b	.L155
.L170:
	.cfi_offset 21, -48
	.cfi_offset 22, -40
	mov	w1, w19
	mov	x0, x20
	bl	uECC_vli_rshift1
	mov	w2, w19
	mov	x1, x23
	mov	x0, x22
	bl	vli_modInv_update
.L158:
	mov	w2, w19
	mov	x1, x21
	mov	x0, x20
	bl	uECC_vli_cmp_unsafe
	sxtb	w0, w0
	cbz	w0, .L169
	ldr	w3, [sp, 8]
	tbz	x3, 0, .L170
	ldr	w1, [sp, 40]
	tbz	x1, 0, .L171
	cmp	w0, 0
	ble	.L162
	mov	w3, w19
	mov	x2, x21
	mov	x1, x20
	mov	x0, x20
	bl	uECC_vli_sub
	mov	w1, w19
	mov	x0, x20
	bl	uECC_vli_rshift1
	mov	w2, w19
	mov	x1, x24
	mov	x0, x22
	bl	uECC_vli_cmp_unsafe
	tbnz	x0, 7, .L172
.L163:
	mov	w3, w19
	mov	x2, x24
	mov	x1, x22
	mov	x0, x22
	bl	uECC_vli_sub
	mov	w2, w19
	mov	x1, x23
	mov	x0, x22
	bl	vli_modInv_update
	b	.L158
.L171:
	mov	w1, w19
	mov	x0, x21
	bl	uECC_vli_rshift1
	mov	w2, w19
	mov	x1, x23
	mov	x0, x24
	bl	vli_modInv_update
	b	.L158
.L172:
	add	x0, sp, 72
	mov	w3, w19
	mov	x2, x23
	mov	x1, x0
	bl	uECC_vli_add
	b	.L163
.L162:
	mov	w3, w19
	mov	x2, x20
	mov	x1, x21
	mov	x0, x21
	bl	uECC_vli_sub
	mov	w1, w19
	mov	x0, x21
	bl	uECC_vli_rshift1
	mov	w2, w19
	mov	x1, x22
	mov	x0, x24
	bl	uECC_vli_cmp_unsafe
	tbnz	x0, 7, .L173
.L164:
	mov	w3, w19
	mov	x2, x22
	mov	x1, x24
	mov	x0, x24
	bl	uECC_vli_sub
	mov	w2, w19
	mov	x1, x23
	mov	x0, x24
	bl	vli_modInv_update
	b	.L158
.L173:
	add	x0, sp, 104
	mov	w3, w19
	mov	x2, x23
	mov	x1, x0
	bl	uECC_vli_add
	b	.L164
.L169:
	mov	w2, w19
	add	x1, sp, 72
	mov	x0, x25
	bl	uECC_vli_set
	ldp	x21, x22, [sp, 176]
	.cfi_restore 22
	.cfi_restore 21
.L155:
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 136]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	bne	.L174
	ldp	x19, x20, [sp, 160]
	ldp	x23, x24, [sp, 192]
	ldr	x25, [sp, 208]
	ldp	x29, x30, [sp, 144]
	add	sp, sp, 224
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 25
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
.L174:
	.cfi_restore_state
	stp	x21, x22, [sp, 176]
	.cfi_offset 22, -40
	.cfi_offset 21, -48
	bl	__stack_chk_fail
	.cfi_endproc
.LFE40:
	.size	uECC_vli_modInv, .-uECC_vli_modInv
	.align	2
	.global	uECC_secp256r1
	.type	uECC_secp256r1, %function
uECC_secp256r1:
.LFB43:
	.cfi_startproc
	adrp	x0, .LANCHOR1
	add	x0, x0, :lo12:.LANCHOR1
	ret
	.cfi_endproc
.LFE43:
	.size	uECC_secp256r1, .-uECC_secp256r1
	.align	2
	.global	EccPoint_isZero
	.type	EccPoint_isZero, %function
EccPoint_isZero:
.LFB45:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp
	ldrb	w1, [x1]
	ubfiz	w1, w1, 1, 7
	bl	uECC_vli_isZero
	ldp	x29, x30, [sp], 16
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE45:
	.size	EccPoint_isZero, .-EccPoint_isZero
	.align	2
	.global	apply_z
	.type	apply_z, %function
apply_z:
.LFB46:
	.cfi_startproc
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, 48]
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	add	x29, sp, 48
	stp	x19, x20, [sp, 64]
	stp	x21, x22, [sp, 80]
	str	x23, [sp, 96]
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	.cfi_offset 21, -32
	.cfi_offset 22, -24
	.cfi_offset 23, -16
	mov	x23, x0
	mov	x21, x1
	mov	x22, x2
	mov	x20, x3
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 40]
	mov	x1, 0
	add	x19, sp, 8
	mov	x2, x3
	mov	x1, x22
	mov	x0, x19
	bl	uECC_vli_modSquare_fast
	mov	x3, x20
	mov	x2, x19
	mov	x1, x23
	mov	x0, x23
	bl	uECC_vli_modMult_fast
	mov	x3, x20
	mov	x2, x22
	mov	x1, x19
	mov	x0, x19
	bl	uECC_vli_modMult_fast
	mov	x3, x20
	mov	x2, x19
	mov	x1, x21
	mov	x0, x21
	bl	uECC_vli_modMult_fast
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 40]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	bne	.L181
	ldp	x19, x20, [sp, 64]
	ldp	x21, x22, [sp, 80]
	ldr	x23, [sp, 96]
	ldp	x29, x30, [sp, 48]
	add	sp, sp, 112
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
.L181:
	.cfi_restore_state
	bl	__stack_chk_fail
	.cfi_endproc
.LFE46:
	.size	apply_z, .-apply_z
	.align	2
	.global	XYcZ_add
	.type	XYcZ_add, %function
XYcZ_add:
.LFB48:
	.cfi_startproc
	sub	sp, sp, #128
	.cfi_def_cfa_offset 128
	stp	x29, x30, [sp, 48]
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	add	x29, sp, 48
	stp	x19, x20, [sp, 64]
	stp	x21, x22, [sp, 80]
	stp	x23, x24, [sp, 96]
	stp	x25, x26, [sp, 112]
	.cfi_offset 19, -64
	.cfi_offset 20, -56
	.cfi_offset 21, -48
	.cfi_offset 22, -40
	.cfi_offset 23, -32
	.cfi_offset 24, -24
	.cfi_offset 25, -16
	.cfi_offset 26, -8
	mov	x25, x0
	mov	x26, x1
	mov	x20, x2
	mov	x21, x3
	mov	x23, x4
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 40]
	mov	x1, 0
	mov	x22, x4
	ldrsb	w24, [x22], 4
	add	x19, sp, 8
	mov	w4, w24
	mov	x3, x22
	mov	x2, x25
	mov	x1, x20
	mov	x0, x19
	bl	uECC_vli_modSub
	mov	x2, x23
	mov	x1, x19
	mov	x0, x19
	bl	uECC_vli_modSquare_fast
	mov	x3, x23
	mov	x2, x19
	mov	x1, x25
	mov	x0, x25
	bl	uECC_vli_modMult_fast
	mov	x3, x23
	mov	x2, x19
	mov	x1, x20
	mov	x0, x20
	bl	uECC_vli_modMult_fast
	mov	w4, w24
	mov	x3, x22
	mov	x2, x26
	mov	x1, x21
	mov	x0, x21
	bl	uECC_vli_modSub
	mov	x2, x23
	mov	x1, x21
	mov	x0, x19
	bl	uECC_vli_modSquare_fast
	mov	w4, w24
	mov	x3, x22
	mov	x2, x25
	mov	x1, x19
	mov	x0, x19
	bl	uECC_vli_modSub
	mov	w4, w24
	mov	x3, x22
	mov	x2, x20
	mov	x1, x19
	mov	x0, x19
	bl	uECC_vli_modSub
	mov	w4, w24
	mov	x3, x22
	mov	x2, x25
	mov	x1, x20
	mov	x0, x20
	bl	uECC_vli_modSub
	mov	x3, x23
	mov	x2, x20
	mov	x1, x26
	mov	x0, x26
	bl	uECC_vli_modMult_fast
	mov	w4, w24
	mov	x3, x22
	mov	x2, x19
	mov	x1, x25
	mov	x0, x20
	bl	uECC_vli_modSub
	mov	x3, x23
	mov	x2, x20
	mov	x1, x21
	mov	x0, x21
	bl	uECC_vli_modMult_fast
	mov	w4, w24
	mov	x3, x22
	mov	x2, x26
	mov	x1, x21
	mov	x0, x21
	bl	uECC_vli_modSub
	mov	w2, w24
	mov	x1, x19
	mov	x0, x20
	bl	uECC_vli_set
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 40]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	bne	.L185
	ldp	x19, x20, [sp, 64]
	ldp	x21, x22, [sp, 80]
	ldp	x23, x24, [sp, 96]
	ldp	x25, x26, [sp, 112]
	ldp	x29, x30, [sp, 48]
	add	sp, sp, 128
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
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
.L185:
	.cfi_restore_state
	bl	__stack_chk_fail
	.cfi_endproc
.LFE48:
	.size	XYcZ_add, .-XYcZ_add
	.align	2
	.global	EccPoint_mult
	.type	EccPoint_mult, %function
EccPoint_mult:
.LFB50:
	.cfi_startproc
	sub	sp, sp, #304
	.cfi_def_cfa_offset 304
	stp	x29, x30, [sp, 208]
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	add	x29, sp, 208
	stp	x19, x20, [sp, 224]
	stp	x21, x22, [sp, 240]
	stp	x23, x24, [sp, 256]
	stp	x25, x26, [sp, 272]
	stp	x27, x28, [sp, 288]
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
	str	x0, [sp, 16]
	mov	x20, x1
	str	x1, [sp, 24]
	mov	x27, x2
	mov	x19, x3
	sxth	w25, w4
	mov	x22, x5
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [x0]
	str	x2, [sp, 200]
	mov	x2, 0
	ldrsb	w28, [x5]
	mov	w2, w28
	add	x0, sp, 104
	bl	uECC_vli_set
	sbfiz	x0, x28, 2, 32
	str	x0, [sp]
	add	x0, x20, x0
	str	x0, [sp, 8]
	mov	w2, w28
	mov	x1, x0
	add	x0, sp, 168
	bl	uECC_vli_set
	cbz	x19, .L187
	mov	w2, w28
	mov	x1, x19
	add	x0, sp, 40
	bl	uECC_vli_set
.L188:
	add	x23, sp, 72
	add	x20, sp, 104
	mov	w2, w28
	mov	x1, x20
	mov	x0, x23
	bl	uECC_vli_set
	add	x0, sp, 136
	add	x21, sp, 168
	mov	w2, w28
	mov	x1, x21
	mov	x24, x0
	bl	uECC_vli_set
	add	x19, sp, 40
	mov	x3, x22
	mov	x2, x19
	mov	x1, x21
	mov	x0, x20
	bl	apply_z
	ldr	x4, [x22, 168]
	mov	x3, x22
	mov	x2, x19
	mov	x1, x21
	mov	x0, x20
	blr	x4
	mov	x3, x22
	mov	x2, x19
	mov	x1, x24
	mov	x0, x23
	bl	apply_z
	sub	w21, w25, #2
	sxth	w21, w21
	cmp	w21, 0
	ble	.L189
	mov	x26, x23
	mov	x25, x24
.L190:
	mov	w1, w21
	mov	x0, x27
	bl	uECC_vli_testBit
	cmp	w0, 0
	cset	x20, ne
	lsl	x20, x20, 5
	add	x24, x26, x20
	add	x20, x25, x20
	cset	x19, eq
	lsl	x19, x19, 5
	add	x23, x26, x19
	add	x19, x25, x19
	mov	x4, x22
	mov	x3, x19
	mov	x2, x23
	mov	x1, x20
	mov	x0, x24
	bl	XYcZ_addC
	mov	x4, x22
	mov	x3, x20
	mov	x2, x24
	mov	x1, x19
	mov	x0, x23
	bl	XYcZ_add
	sub	w21, w21, #1
	sxth	w21, w21
	cbnz	w21, .L190
.L189:
	mov	w1, 0
	mov	x0, x27
	bl	uECC_vli_testBit
	cmp	w0, 0
	cset	x20, ne
	lsl	x20, x20, 5
	add	x21, sp, 72
	add	x24, x21, x20
	add	x23, sp, 136
	add	x20, x23, x20
	cset	x0, eq
	lsl	x0, x0, 5
	add	x27, x21, x0
	add	x26, x23, x0
	mov	x4, x22
	mov	x3, x26
	mov	x2, x27
	mov	x1, x20
	mov	x0, x24
	bl	XYcZ_addC
	add	x25, x22, 4
	add	x19, sp, 40
	mov	w4, w28
	mov	x3, x25
	mov	x2, x21
	add	x1, sp, 104
	mov	x0, x19
	bl	uECC_vli_modSub
	mov	x3, x22
	mov	x2, x20
	mov	x1, x19
	mov	x0, x19
	bl	uECC_vli_modMult_fast
	mov	x3, x22
	ldr	x2, [sp, 24]
	mov	x1, x19
	mov	x0, x19
	bl	uECC_vli_modMult_fast
	mov	w3, w28
	mov	x2, x25
	mov	x1, x19
	mov	x0, x19
	bl	uECC_vli_modInv
	mov	x3, x22
	ldr	x2, [sp, 8]
	mov	x1, x19
	mov	x0, x19
	bl	uECC_vli_modMult_fast
	mov	x3, x22
	mov	x2, x24
	mov	x1, x19
	mov	x0, x19
	bl	uECC_vli_modMult_fast
	mov	x4, x22
	mov	x3, x20
	mov	x2, x24
	mov	x1, x26
	mov	x0, x27
	bl	XYcZ_add
	mov	x3, x22
	mov	x2, x19
	mov	x1, x23
	mov	x0, x21
	bl	apply_z
	mov	w2, w28
	mov	x1, x21
	ldr	x19, [sp, 16]
	mov	x0, x19
	bl	uECC_vli_set
	mov	w2, w28
	mov	x1, x23
	ldr	x3, [sp]
	add	x0, x19, x3
	bl	uECC_vli_set
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 200]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	bne	.L194
	ldp	x19, x20, [sp, 224]
	ldp	x21, x22, [sp, 240]
	ldp	x23, x24, [sp, 256]
	ldp	x25, x26, [sp, 272]
	ldp	x27, x28, [sp, 288]
	ldp	x29, x30, [sp, 208]
	add	sp, sp, 304
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
.L187:
	.cfi_restore_state
	mov	w1, w28
	add	x0, sp, 40
	bl	uECC_vli_clear
	mov	w0, 1
	str	w0, [sp, 40]
	b	.L188
.L194:
	bl	__stack_chk_fail
	.cfi_endproc
.LFE50:
	.size	EccPoint_mult, .-EccPoint_mult
	.align	2
	.global	regularize_k
	.type	regularize_k, %function
regularize_k:
.LFB51:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	.cfi_offset 21, -32
	.cfi_offset 22, -24
	.cfi_offset 23, -16
	.cfi_offset 24, -8
	mov	x21, x1
	mov	x23, x2
	ldrsh	w22, [x3, 2]
	add	w20, w22, 62
	adds	w1, w22, 31
	csel	w20, w20, w1, mi
	sbfx	x20, x20, 5, 8
	add	x19, x3, 36
	mov	w3, w20
	mov	x2, x19
	mov	x1, x0
	mov	x0, x21
	bl	uECC_vli_add
	mov	w24, 1
	cbnz	w0, .L196
	mov	w24, 0
	cmp	w22, w20, lsl 5
	bge	.L196
	mov	w1, w22
	mov	x0, x21
	bl	uECC_vli_testBit
	cmp	w0, 0
	cset	w24, ne
.L196:
	mov	w3, w20
	mov	x2, x19
	mov	x1, x21
	mov	x0, x23
	bl	uECC_vli_add
	mov	w0, w24
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE51:
	.size	regularize_k, .-regularize_k
	.align	2
	.global	EccPoint_compute_public_key
	.type	EccPoint_compute_public_key, %function
EccPoint_compute_public_key:
.LFB52:
	.cfi_startproc
	sub	sp, sp, #128
	.cfi_def_cfa_offset 128
	stp	x29, x30, [sp, 96]
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	add	x29, sp, 96
	stp	x19, x20, [sp, 112]
	.cfi_offset 19, -16
	.cfi_offset 20, -8
	mov	x20, x0
	mov	x0, x1
	mov	x19, x2
	adrp	x1, :got:__stack_chk_guard
	ldr	x1, [x1, :got_lo12:__stack_chk_guard]
	ldr	x2, [x1]
	str	x2, [sp, 88]
	mov	x2, 0
	add	x1, sp, 24
	str	x1, [sp, 8]
	add	x2, sp, 56
	str	x2, [sp, 16]
	mov	x3, x19
	bl	regularize_k
	ldrh	w4, [x19, 2]
	add	w4, w4, 1
	cmp	w0, 0
	cset	x1, eq
	mov	x5, x19
	mov	x3, 0
	add	x0, sp, 8
	ldr	x2, [x0, x1, lsl 3]
	add	x1, x19, 68
	mov	x0, x20
	bl	EccPoint_mult
	mov	x1, x19
	mov	x0, x20
	bl	EccPoint_isZero
	cmp	w0, 0
	cset	w0, eq
	adrp	x1, :got:__stack_chk_guard
	ldr	x1, [x1, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 88]
	ldr	x2, [x1]
	subs	x3, x3, x2
	mov	x2, 0
	bne	.L203
	ldp	x19, x20, [sp, 112]
	ldp	x29, x30, [sp, 96]
	add	sp, sp, 128
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
.L203:
	.cfi_restore_state
	bl	__stack_chk_fail
	.cfi_endproc
.LFE52:
	.size	EccPoint_compute_public_key, .-EccPoint_compute_public_key
	.align	2
	.global	uECC_vli_nativeToBytes
	.type	uECC_vli_nativeToBytes, %function
uECC_vli_nativeToBytes:
.LFB53:
	.cfi_startproc
	cmp	w1, 0
	ble	.L204
	mov	w3, 0
	mov	w4, 0
	sub	w6, w1, #1
.L206:
	sub	w4, w6, w4
	lsr	w5, w4, 2
	ubfiz	w4, w4, 3, 2
	ldr	w5, [x2, x5, lsl 2]
	lsr	w4, w5, w4
	strb	w4, [x0, w3, sxtw]
	add	w3, w3, 1
	sxtb	w3, w3
	mov	w4, w3
	cmp	w3, w1
	blt	.L206
.L204:
	ret
	.cfi_endproc
.LFE53:
	.size	uECC_vli_nativeToBytes, .-uECC_vli_nativeToBytes
	.align	2
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
	str	x21, [sp, 32]
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	.cfi_offset 21, -16
	mov	x19, x0
	mov	x21, x1
	mov	w20, w2
	add	w1, w2, 6
	adds	w2, w2, 3
	csel	w1, w1, w2, mi
	ubfx	x1, x1, 2, 8
	bl	uECC_vli_clear
	cmp	w20, 0
	ble	.L208
	mov	w3, 0
	mov	w4, 0
	sub	w2, w20, #1
.L210:
	sub	w4, w2, w4
	lsr	w1, w4, 2
	ldrb	w0, [x21, w3, sxtw]
	ubfiz	w4, w4, 3, 2
	lsl	w0, w0, w4
	ldr	w4, [x19, x1, lsl 2]
	orr	w4, w4, w0
	str	w4, [x19, x1, lsl 2]
	add	w3, w3, 1
	sxtb	w3, w3
	mov	w4, w3
	cmp	w3, w20
	blt	.L210
.L208:
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
	.global	uECC_generate_random_int
	.type	uECC_generate_random_int, %function
uECC_generate_random_int:
.LFB55:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -64
	.cfi_offset 20, -56
	mov	x20, x0
	adrp	x0, .LANCHOR0
	ldr	x0, [x0, #:lo12:.LANCHOR0]
	cbz	x0, .L217
	stp	x21, x22, [sp, 32]
	.cfi_offset 22, -40
	.cfi_offset 21, -48
	stp	x23, x24, [sp, 48]
	.cfi_offset 24, -24
	.cfi_offset 23, -32
	stp	x25, x26, [sp, 64]
	.cfi_offset 26, -8
	.cfi_offset 25, -16
	mov	x26, x1
	sxtb	w22, w2
	mov	w1, w22
	mov	x0, x26
	bl	uECC_vli_numBits
	lsl	w25, w22, 2
	add	x21, x20, w22, sxtw 2
	sub	x21, x21, #4
	ubfiz	w1, w22, 5, 11
	sub	w1, w1, w0
	mov	w23, -1
	lsr	w23, w23, w1
	mov	w19, 64
	adrp	x24, .LANCHOR0
	b	.L216
.L215:
	subs	w19, w19, #1
	beq	.L222
.L216:
	ldr	x2, [x24, #:lo12:.LANCHOR0]
	mov	w1, w25
	mov	x0, x20
	blr	x2
	cbz	w0, .L221
	ldr	w0, [x21]
	and	w0, w0, w23
	str	w0, [x21]
	mov	w1, w22
	mov	x0, x20
	bl	uECC_vli_isZero
	cbnz	w0, .L215
	mov	w2, w22
	mov	x1, x20
	mov	x0, x26
	bl	uECC_vli_cmp
	sxtb	w0, w0
	cmp	w0, 1
	bne	.L215
	mov	w0, 1
	ldp	x21, x22, [sp, 32]
	.cfi_remember_state
	.cfi_restore 22
	.cfi_restore 21
	ldp	x23, x24, [sp, 48]
	.cfi_restore 24
	.cfi_restore 23
	ldp	x25, x26, [sp, 64]
	.cfi_restore 26
	.cfi_restore 25
	b	.L213
.L222:
	.cfi_restore_state
	mov	w0, 0
	ldp	x21, x22, [sp, 32]
	.cfi_restore 22
	.cfi_restore 21
	ldp	x23, x24, [sp, 48]
	.cfi_restore 24
	.cfi_restore 23
	ldp	x25, x26, [sp, 64]
	.cfi_restore 26
	.cfi_restore 25
	b	.L213
.L217:
	mov	w0, 0
	b	.L213
.L221:
	.cfi_offset 21, -48
	.cfi_offset 22, -40
	.cfi_offset 23, -32
	.cfi_offset 24, -24
	.cfi_offset 25, -16
	.cfi_offset 26, -8
	ldp	x21, x22, [sp, 32]
	.cfi_restore 22
	.cfi_restore 21
	ldp	x23, x24, [sp, 48]
	.cfi_restore 24
	.cfi_restore 23
	ldp	x25, x26, [sp, 64]
	.cfi_restore 26
	.cfi_restore 25
.L213:
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE55:
	.size	uECC_generate_random_int, .-uECC_generate_random_int
	.align	2
	.global	uECC_valid_point
	.type	uECC_valid_point, %function
uECC_valid_point:
.LFB56:
	.cfi_startproc
	sub	sp, sp, #144
	.cfi_def_cfa_offset 144
	stp	x29, x30, [sp, 80]
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	add	x29, sp, 80
	stp	x19, x20, [sp, 96]
	stp	x21, x22, [sp, 112]
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	.cfi_offset 21, -32
	.cfi_offset 22, -24
	mov	x20, x0
	mov	x19, x1
	adrp	x2, :got:__stack_chk_guard
	ldr	x2, [x2, :got_lo12:__stack_chk_guard]
	ldr	x3, [x2]
	str	x3, [sp, 72]
	mov	x3, 0
	ldrsb	w21, [x1]
	bl	EccPoint_isZero
	cbnz	w0, .L226
	add	x22, x19, 4
	mov	w2, w21
	mov	x1, x20
	mov	x0, x22
	bl	uECC_vli_cmp_unsafe
	sxtb	w0, w0
	cmp	w0, 1
	bne	.L227
	str	x23, [sp, 128]
	.cfi_offset 23, -16
	add	x23, x20, w21, sxtw 2
	mov	w2, w21
	mov	x1, x23
	mov	x0, x22
	bl	uECC_vli_cmp_unsafe
	sxtb	w0, w0
	cmp	w0, 1
	bne	.L228
	add	x22, sp, 8
	mov	x2, x19
	mov	x1, x23
	mov	x0, x22
	bl	uECC_vli_modSquare_fast
	add	x0, sp, 40
	ldr	x3, [x19, 176]
	mov	x2, x19
	mov	x1, x20
	mov	x19, x0
	blr	x3
	mov	w2, w21
	mov	x1, x19
	mov	x0, x22
	bl	uECC_vli_equal
	cmp	w0, 0
	mov	w0, -3
	csel	w0, w0, wzr, ne
	ldr	x23, [sp, 128]
	.cfi_restore 23
.L223:
	adrp	x1, :got:__stack_chk_guard
	ldr	x1, [x1, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 72]
	ldr	x2, [x1]
	subs	x3, x3, x2
	mov	x2, 0
	bne	.L231
	ldp	x19, x20, [sp, 96]
	ldp	x21, x22, [sp, 112]
	ldp	x29, x30, [sp, 80]
	add	sp, sp, 144
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
.L226:
	.cfi_restore_state
	mov	w0, -1
	b	.L223
.L227:
	mov	w0, -2
	b	.L223
.L228:
	.cfi_offset 23, -16
	mov	w0, -2
	ldr	x23, [sp, 128]
	.cfi_restore 23
	b	.L223
.L231:
	str	x23, [sp, 128]
	.cfi_offset 23, -16
	bl	__stack_chk_fail
	.cfi_endproc
.LFE56:
	.size	uECC_valid_point, .-uECC_valid_point
	.align	2
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
	stp	x19, x20, [sp, 96]
	stp	x21, x22, [sp, 112]
	str	x23, [sp, 128]
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	.cfi_offset 21, -32
	.cfi_offset 22, -24
	.cfi_offset 23, -16
	mov	x21, x0
	mov	x20, x1
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 72]
	mov	x1, 0
	ldrsb	w23, [x20, 1]
	add	x19, sp, 8
	mov	w2, w23
	mov	x1, x21
	mov	x0, x19
	bl	uECC_vli_bytesToNative
	mov	x22, x20
	ldrsb	x0, [x22], 68
	mov	w2, w23
	add	x1, x21, w23, sxtw
	add	x0, x19, x0, lsl 2
	bl	uECC_vli_bytesToNative
	mov	w2, 16
	mov	x1, x22
	mov	x0, x19
	bl	uECC_vli_cmp_unsafe
	sxtb	w0, w0
	cbz	w0, .L235
	mov	x1, x20
	mov	x0, x19
	bl	uECC_valid_point
.L232:
	adrp	x1, :got:__stack_chk_guard
	ldr	x1, [x1, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 72]
	ldr	x2, [x1]
	subs	x3, x3, x2
	mov	x2, 0
	bne	.L237
	ldp	x19, x20, [sp, 96]
	ldp	x21, x22, [sp, 112]
	ldr	x23, [sp, 128]
	ldp	x29, x30, [sp, 80]
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
.L235:
	.cfi_restore_state
	mov	w0, -4
	b	.L232
.L237:
	bl	__stack_chk_fail
	.cfi_endproc
.LFE57:
	.size	uECC_valid_public_key, .-uECC_valid_public_key
	.align	2
	.global	uECC_compute_public_key
	.type	uECC_compute_public_key, %function
uECC_compute_public_key:
.LFB58:
	.cfi_startproc
	sub	sp, sp, #160
	.cfi_def_cfa_offset 160
	stp	x29, x30, [sp, 112]
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	add	x29, sp, 112
	stp	x19, x20, [sp, 128]
	stp	x21, x22, [sp, 144]
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	.cfi_offset 21, -16
	.cfi_offset 22, -8
	mov	x22, x1
	mov	x20, x2
	adrp	x1, :got:__stack_chk_guard
	ldr	x1, [x1, :got_lo12:__stack_chk_guard]
	ldr	x2, [x1]
	str	x2, [sp, 104]
	mov	x2, 0
	ldrsh	w19, [x20, 2]
	add	w2, w19, 14
	adds	w1, w19, 7
	csel	w2, w2, w1, mi
	add	x21, sp, 8
	asr	w2, w2, 3
	mov	x1, x0
	mov	x0, x21
	bl	uECC_vli_bytesToNative
	add	w3, w19, 62
	adds	w19, w19, 31
	csel	w19, w3, w19, mi
	sbfx	x19, x19, 5, 8
	mov	w1, w19
	mov	x0, x21
	bl	uECC_vli_isZero
	mov	w1, 0
	cbnz	w0, .L238
	mov	w2, w19
	mov	x1, x21
	add	x0, x20, 36
	bl	uECC_vli_cmp
	sxtb	w0, w0
	mov	w1, 0
	cmp	w0, 1
	beq	.L245
.L238:
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 104]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	bne	.L246
	mov	w0, w1
	ldp	x19, x20, [sp, 128]
	ldp	x21, x22, [sp, 144]
	ldp	x29, x30, [sp, 112]
	add	sp, sp, 160
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
.L245:
	.cfi_restore_state
	mov	x2, x20
	mov	x1, x21
	add	x0, sp, 40
	bl	EccPoint_compute_public_key
	mov	w1, 0
	cbz	w0, .L238
	add	x19, sp, 40
	mov	x2, x19
	ldrsb	w1, [x20, 1]
	mov	x0, x22
	bl	uECC_vli_nativeToBytes
	ldrsb	w1, [x20, 1]
	ldrsb	x2, [x20]
	add	x2, x19, x2, lsl 2
	add	x0, x22, w1, sxtw
	bl	uECC_vli_nativeToBytes
	mov	w1, 1
	b	.L238
.L246:
	bl	__stack_chk_fail
	.cfi_endproc
.LFE58:
	.size	uECC_compute_public_key, .-uECC_compute_public_key
	.section	.data.rel,"aw"
	.align	3
	.set	.LANCHOR0,. + 0
	.type	g_rng_function, %object
	.size	g_rng_function, 8
g_rng_function:
	.xword	default_CSPRNG
	.section	.data.rel.ro.local,"aw"
	.align	3
	.set	.LANCHOR1,. + 0
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
