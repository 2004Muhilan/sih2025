	.arch armv8-a
	.file	"tinycrypt_ecc.c"
	.text
	.align	2
	.type	uECC_vli_add, %function
uECC_vli_add:
.LFB28:
	.cfi_startproc
	sxtb	w3, w3
	mov	x7, x0
	mov	x5, 0
	mov	w0, 0
.L2:
	sxtb	w4, w5
	cmp	w3, w4
	bgt	.L3
	ret
.L3:
	ldr	w4, [x1, x5, lsl 2]
	ldr	w6, [x2, x5, lsl 2]
	add	w6, w4, w6
	add	w6, w6, w0
	str	w6, [x7, x5, lsl 2]
	cmp	w4, w6
	add	x5, x5, 1
	csel	w4, w0, wzr, eq
	cset	w0, hi
	orr	w0, w4, w0
	b	.L2
	.cfi_endproc
.LFE28:
	.size	uECC_vli_add, .-uECC_vli_add
	.align	2
	.type	uECC_vli_rshift1, %function
uECC_vli_rshift1:
.LFB30:
	.cfi_startproc
	add	x1, x0, w1, sxtb 2
	mov	w2, 0
.L5:
	cmp	x0, x1
	bcc	.L6
	ret
.L6:
	ldr	w3, [x1, -4]
	orr	w2, w2, w3, lsr 1
	str	w2, [x1, -4]!
	lsl	w2, w3, 31
	b	.L5
	.cfi_endproc
.LFE30:
	.size	uECC_vli_rshift1, .-uECC_vli_rshift1
	.align	2
	.type	vli_modInv_update, %function
vli_modInv_update:
.LFB39:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	sxtb	w9, w2
	mov	x8, x0
	mov	x29, sp
	ldr	w2, [x0]
	tbz	x2, 0, .L16
	mov	x2, x1
	mov	w3, w9
	mov	x1, x0
	bl	uECC_vli_add
	mov	w4, w0
.L8:
	mov	w1, w9
	mov	x0, x8
	bl	uECC_vli_rshift1
	cbz	w4, .L7
	mov	x0, -4
	add	x9, x0, w9, sxtw 2
	ldr	w0, [x8, x9]
	orr	w0, w0, -2147483648
	str	w0, [x8, x9]
.L7:
	ldp	x29, x30, [sp], 16
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
.L16:
	.cfi_restore_state
	and	w4, w2, 1
	b	.L8
	.cfi_endproc
.LFE39:
	.size	vli_modInv_update, .-vli_modInv_update
	.align	2
	.type	uECC_vli_mult, %function
uECC_vli_mult:
.LFB32:
	.cfi_startproc
	sxtb	w3, w3
	mov	x6, 0
	mov	w11, 0
	mov	x4, 0
	mov	x12, -4
.L19:
	sxtb	w9, w6
	cmp	w9, w3
	blt	.L23
	lsl	w9, w3, 1
	sub	w13, w3, #1
	sub	w12, w9, #1
	mov	w6, 1
	mov	x14, -4
.L24:
	add	w7, w6, w13
	sxtb	w5, w7
	cmp	w12, w7, sxtb
	bgt	.L29
	add	x9, x0, w9, sxtw 2
	str	w4, [x9, -4]
	ret
.L23:
	add	x14, x2, x6, lsl 2
	mov	x7, 0
	mov	w8, 0
.L22:
	mul	x5, x7, x12
	ldr	w10, [x1, x7, lsl 2]
	orr	x4, x4, x11, lsl 32
	add	x7, x7, 1
	sxtb	w13, w7
	ldr	w5, [x14, x5]
	umull	x5, w5, w10
	adds	x5, x5, x4
	cinc	w8, w8, cs
	uxtw	x4, w5
	lsr	x10, x5, 32
	mov	w11, w10
	cmp	w9, w13
	bge	.L22
	uxtw	x4, w10
	mov	w11, w8
	str	w5, [x0, x6, lsl 2]
	add	x6, x6, 1
	b	.L19
.L29:
	sxtb	x8, w6
	sbfiz	x15, x5, 2, 32
	add	x10, x2, w5, sxtw 2
	mov	w7, w11
	mov	w11, 0
.L25:
	sxtb	w5, w8
	cmp	w3, w5
	bgt	.L28
	add	w6, w6, 1
	str	w4, [x0, x15]
	and	w6, w6, 255
	uxtw	x4, w7
	b	.L24
.L28:
	mul	x5, x8, x14
	ldr	w16, [x1, x8, lsl 2]
	orr	x7, x4, x7, lsl 32
	add	x8, x8, 1
	ldr	w5, [x10, x5]
	umull	x5, w5, w16
	adds	x5, x5, x7
	cinc	w11, w11, cs
	uxtw	x4, w5
	lsr	x7, x5, 32
	b	.L25
	.cfi_endproc
.LFE32:
	.size	uECC_vli_mult, .-uECC_vli_mult
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
	ldrsh	w0, [x0, 2]
	mov	w1, 8
	add	w0, w0, 7
	sdiv	w0, w0, w1
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
	mov	x2, 0
.L36:
	sxtb	w3, w2
	cmp	w1, w3
	bgt	.L37
	ret
.L37:
	str	wzr, [x0, x2, lsl 2]
	add	x2, x2, 1
	b	.L36
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
	mov	x2, 0
	mov	w3, 0
.L39:
	sxtb	w4, w2
	cmp	w1, w4
	bgt	.L40
	cmp	w3, 0
	cset	w0, eq
	ret
.L40:
	ldr	w4, [x0, x2, lsl 2]
	add	x2, x2, 1
	orr	w3, w3, w4
	b	.L39
	.cfi_endproc
.LFE19:
	.size	uECC_vli_isZero, .-uECC_vli_isZero
	.align	2
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
	.global	uECC_vli_numBits
	.type	uECC_vli_numBits, %function
uECC_vli_numBits:
.LFB22:
	.cfi_startproc
	sxtb	w1, w1
	add	x4, x0, 4
	sub	w1, w1, #1
	sxtb	x1, w1
.L44:
	tbnz	x1, 7, .L43
	sub	x2, x1, #1
	ldr	w3, [x4, x2, lsl 2]
	cbz	w3, .L46
.L43:
	add	w1, w1, 1
	sxtb	w1, w1
	cbz	w1, .L47
	add	x0, x0, w1, sxtw 2
	ldr	w2, [x0, -4]
	lsl	w0, w1, 5
	clz	w2, w2
	sub	w0, w0, w2
	sxth	w0, w0
.L45:
	ret
.L46:
	mov	x1, x2
	b	.L44
.L47:
	mov	w0, 0
	b	.L45
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
	mov	x3, 0
.L49:
	sxtb	w4, w3
	cmp	w2, w4
	bgt	.L50
	ret
.L50:
	ldr	w4, [x1, x3, lsl 2]
	str	w4, [x0, x3, lsl 2]
	add	x3, x3, 1
	b	.L49
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
	sub	w2, w2, #1
	sxtb	x2, w2
.L52:
	tbz	x2, 7, .L54
	mov	w0, 0
.L53:
	ret
.L54:
	ldr	w4, [x0, x2, lsl 2]
	ldr	w3, [x1, x2, lsl 2]
	cmp	w4, w3
	bhi	.L55
	sub	x2, x2, #1
	bcs	.L52
	mov	w0, -1
	b	.L53
.L55:
	mov	w0, 1
	b	.L53
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
	mov	w3, 0
	sub	w2, w2, #1
	sxtb	x2, w2
.L58:
	tbz	x2, 7, .L59
	cmp	w3, 0
	cset	w0, ne
	ret
.L59:
	ldr	w4, [x0, x2, lsl 2]
	ldr	w5, [x1, x2, lsl 2]
	sub	x2, x2, #1
	eor	w4, w4, w5
	orr	w3, w3, w4
	b	.L58
	.cfi_endproc
.LFE25:
	.size	uECC_vli_equal, .-uECC_vli_equal
	.align	2
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
	.global	uECC_vli_sub
	.type	uECC_vli_sub, %function
uECC_vli_sub:
.LFB27:
	.cfi_startproc
	sxtb	w3, w3
	mov	x7, x0
	mov	x5, 0
	mov	w0, 0
.L62:
	sxtb	w4, w5
	cmp	w4, w3
	blt	.L63
	ret
.L63:
	ldr	w4, [x1, x5, lsl 2]
	ldr	w8, [x2, x5, lsl 2]
	sub	w6, w4, w0
	sub	w6, w6, w8
	str	w6, [x7, x5, lsl 2]
	cmp	w4, w6
	add	x5, x5, 1
	csel	w4, w0, wzr, eq
	cset	w0, cc
	orr	w0, w4, w0
	b	.L62
	.cfi_endproc
.LFE27:
	.size	uECC_vli_sub, .-uECC_vli_sub
	.align	2
	.global	vli_mmod_fast_secp256r1
	.type	vli_mmod_fast_secp256r1, %function
vli_mmod_fast_secp256r1:
.LFB44:
	.cfi_startproc
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	mov	x10, x0
	adrp	x2, :got:__stack_chk_guard
	ldr	x2, [x2, :got_lo12:__stack_chk_guard]
	mov	x9, x1
	stp	x29, x30, [sp, 48]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 48
	ldr	x3, [x2]
	str	x3, [sp, 40]
	mov	x3, 0
	mov	w2, 8
	bl	uECC_vli_set
	ldr	w0, [x1, 44]
	stp	wzr, w0, [sp, 16]
	add	x2, sp, 8
	ldr	x0, [x1, 48]
	str	x0, [sp, 24]
	ldr	x0, [x1, 56]
	mov	w3, 8
	mov	x1, x2
	str	xzr, [sp, 8]
	str	x0, [sp, 32]
	mov	x0, x2
	bl	uECC_vli_add
	mov	x1, x10
	mov	w11, w0
	mov	w3, 8
	mov	x0, x10
	bl	uECC_vli_add
	add	w11, w11, w0
	mov	x1, x2
	ldr	x0, [x9, 48]
	str	x0, [sp, 20]
	ldr	x0, [x9, 56]
	mov	w3, 8
	str	x0, [sp, 28]
	mov	x0, x2
	str	wzr, [sp, 36]
	bl	uECC_vli_add
	mov	w3, 8
	mov	x1, x10
	mov	w8, w0
	mov	x0, x10
	bl	uECC_vli_add
	add	w8, w8, w0
	ldr	x3, [x9, 32]
	str	x3, [sp, 8]
	ldr	w0, [x9, 40]
	mov	w3, 8
	stp	w0, wzr, [sp, 16]
	add	w8, w8, w11
	ldr	x0, [x9, 56]
	str	xzr, [sp, 24]
	str	x0, [sp, 32]
	mov	x0, x10
	bl	uECC_vli_add
	mov	w11, w0
	ldr	x3, [x9, 36]
	str	x3, [sp, 8]
	ldr	w0, [x9, 44]
	ldr	x3, [x9, 56]
	str	w0, [sp, 16]
	ldr	w0, [x9, 52]
	str	w0, [sp, 20]
	str	w0, [sp, 32]
	ldr	w0, [x9, 32]
	str	x3, [sp, 24]
	mov	w3, 8
	str	w0, [sp, 36]
	mov	x0, x10
	bl	uECC_vli_add
	add	w11, w11, w0
	ldr	w0, [x9, 52]
	add	w11, w11, w8
	ldr	x3, [x9, 44]
	stp	w0, wzr, [sp, 16]
	ldr	w0, [x9, 32]
	str	w0, [sp, 32]
	ldr	w0, [x9, 40]
	str	x3, [sp, 8]
	mov	w3, 8
	str	xzr, [sp, 24]
	str	w0, [sp, 36]
	mov	x0, x10
	bl	uECC_vli_sub
	mov	w12, w0
	ldr	x0, [x9, 48]
	str	x0, [sp, 8]
	ldr	x0, [x9, 56]
	str	x0, [sp, 16]
	ldr	w0, [x9, 36]
	mov	w3, 8
	str	w0, [sp, 32]
	ldr	w0, [x9, 44]
	str	w0, [sp, 36]
	mov	x0, x10
	bl	uECC_vli_sub
	add	w12, w12, w0
	ldr	w0, [x9, 60]
	sub	w11, w11, w12
	str	w0, [sp, 16]
	ldr	w0, [x9, 32]
	ldr	x3, [x9, 52]
	str	w0, [sp, 20]
	ldr	x0, [x9, 36]
	str	x0, [sp, 24]
	ldr	w0, [x9, 48]
	str	x3, [sp, 8]
	mov	w3, 8
	str	wzr, [sp, 32]
	str	w0, [sp, 36]
	mov	x0, x10
	bl	uECC_vli_sub
	mov	w12, w0
	ldr	x0, [x9, 56]
	str	x0, [sp, 8]
	ldr	w0, [x9, 36]
	mov	w3, 8
	str	w0, [sp, 20]
	ldr	x0, [x9, 40]
	str	x0, [sp, 24]
	ldr	w0, [x9, 52]
	str	wzr, [sp, 16]
	str	w0, [sp, 36]
	mov	x0, x10
	bl	uECC_vli_sub
	add	w0, w12, w0
	subs	w9, w11, w0
	adrp	x11, .LANCHOR1
	add	x11, x11, :lo12:.LANCHOR1
	bmi	.L72
	add	x11, x11, 4
.L65:
	cbnz	w9, .L67
	mov	x1, x10
	mov	x0, x11
	mov	w2, 8
	bl	uECC_vli_cmp_unsafe
	sxtb	w0, w0
	cmp	w0, 1
	beq	.L64
.L67:
	mov	x2, x11
	mov	x1, x10
	mov	x0, x10
	mov	w3, 8
	bl	uECC_vli_sub
	sub	w9, w9, w0
	b	.L65
.L72:
	add	x2, x11, 4
.L66:
	mov	x1, x10
	mov	x0, x10
	mov	w3, 8
	bl	uECC_vli_add
	adds	w9, w9, w0
	bmi	.L66
.L64:
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 40]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L69
	bl	__stack_chk_fail
.L69:
	ldp	x29, x30, [sp, 48]
	add	sp, sp, 64
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE44:
	.size	vli_mmod_fast_secp256r1, .-vli_mmod_fast_secp256r1
	.align	2
	.global	uECC_vli_cmp
	.type	uECC_vli_cmp, %function
uECC_vli_cmp:
.LFB29:
	.cfi_startproc
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	sxtb	w10, w2
	adrp	x2, :got:__stack_chk_guard
	ldr	x2, [x2, :got_lo12:__stack_chk_guard]
	add	x9, sp, 8
	stp	x29, x30, [sp, 48]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 48
	ldr	x3, [x2]
	str	x3, [sp, 40]
	mov	x3, 0
	mov	w3, w10
	mov	x2, x1
	mov	x1, x0
	mov	x0, x9
	bl	uECC_vli_sub
	mov	w1, w10
	mov	w5, w0
	mov	x0, x9
	bl	uECC_vli_isZero
	cmp	w0, 0
	cset	w1, eq
	cmp	w5, 0
	cset	w0, ne
	sub	w0, w1, w0, lsl 1
	adrp	x1, :got:__stack_chk_guard
	ldr	x1, [x1, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 40]
	ldr	x2, [x1]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L75
	bl	__stack_chk_fail
.L75:
	ldp	x29, x30, [sp, 48]
	add	sp, sp, 64
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE29:
	.size	uECC_vli_cmp, .-uECC_vli_cmp
	.align	2
	.global	uECC_vli_modAdd
	.type	uECC_vli_modAdd, %function
uECC_vli_modAdd:
.LFB33:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	sxtb	w10, w4
	mov	x9, x3
	mov	x29, sp
	mov	x8, x0
	mov	w3, w10
	bl	uECC_vli_add
	cbnz	w0, .L78
	mov	w2, w10
	mov	x1, x8
	mov	x0, x9
	bl	uECC_vli_cmp_unsafe
	sxtb	w0, w0
	cmp	w0, 1
	beq	.L77
.L78:
	ldp	x29, x30, [sp], 16
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	mov	w3, w10
	mov	x2, x9
	mov	x1, x8
	mov	x0, x8
	b	uECC_vli_sub
.L77:
	.cfi_restore_state
	ldp	x29, x30, [sp], 16
	.cfi_restore 30
	.cfi_restore 29
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
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	sxtb	w11, w4
	mov	x10, x3
	mov	x29, sp
	mov	x9, x0
	mov	w3, w11
	bl	uECC_vli_sub
	cbz	w0, .L81
	ldp	x29, x30, [sp], 16
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	mov	w3, w11
	mov	x2, x10
	mov	x1, x9
	mov	x0, x9
	b	uECC_vli_add
.L81:
	.cfi_restore_state
	ldp	x29, x30, [sp], 16
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE34:
	.size	uECC_vli_modSub, .-uECC_vli_modSub
	.align	2
	.global	uECC_vli_mmod
	.type	uECC_vli_mmod, %function
uECC_vli_mmod:
.LFB35:
	.cfi_startproc
	sub	sp, sp, #176
	.cfi_def_cfa_offset 176
	mov	x11, x0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	sxtb	w6, w3
	stp	x29, x30, [sp, 160]
	mov	x9, x2
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 160
	ldr	x2, [x0]
	str	x2, [sp, 152]
	mov	x2, 0
	ubfiz	w5, w6, 6, 10
	add	x0, sp, 88
	stp	x0, x1, [sp, 8]
	mov	w1, w6
	mov	x0, x9
	bl	uECC_vli_numBits
	sub	w5, w5, w0
	mov	w10, 32
	add	x7, sp, 24
	sxth	w5, w5
	negs	w4, w5
	and	w0, w5, 31
	and	w4, w4, 31
	sdiv	w8, w5, w10
	csneg	w4, w0, w4, mi
	mov	x0, x7
	sxtb	w8, w8
	mov	w1, w8
	bl	uECC_vli_clear
	cmp	w4, 0
	bgt	.L96
	mov	w2, w6
	mov	x1, x9
	add	x0, x7, w8, sxtw 2
	bl	uECC_vli_set
	b	.L88
.L87:
	ldr	w3, [x9, x1, lsl 2]
	add	w12, w8, w1
	add	x1, x1, 1
	lsl	w0, w3, w4
	orr	w0, w0, w2
	lsr	w2, w3, w10
	str	w0, [x7, x12, lsl 2]
.L85:
	cmp	w6, w1
	bhi	.L87
.L88:
	sub	w8, w6, #1
	lsl	w13, w6, 1
	sxtw	x15, w6
	add	x14, x7, w6, sxtw 2
	add	x12, sp, 8
	sbfiz	x8, x8, 2, 32
	mov	w4, 1
.L89:
	tbz	w5, #31, .L97
	ubfiz	x4, x4, 3, 1
	add	x0, sp, 8
	mov	w2, w6
	ldr	x1, [x0, x4]
	mov	x0, x11
	bl	uECC_vli_set
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 152]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L95
	bl	__stack_chk_fail
.L96:
	sub	w10, w10, w4
	mov	x1, 0
	mov	w2, 0
	b	.L85
.L93:
	ldr	x1, [x12, x16]
	sbfiz	x10, x2, 2, 32
	add	w2, w2, 1
	ldr	w9, [x1, x10]
	sxtb	w2, w2
	ldr	w1, [x7, x10]
	add	w1, w3, w1
	subs	w1, w9, w1
	cset	w17, cc
	cmp	w9, w1
	ldr	x9, [x12, x0]
	csel	w3, w3, w17, eq
	str	w1, [x9, x10]
.L94:
	cmp	w2, w13
	blt	.L93
	cmp	w4, w3
	mov	w1, w6
	cset	w4, eq
	mov	x0, x7
	sub	w5, w5, #1
	bl	uECC_vli_rshift1
	ldr	w0, [x7, x15, lsl 2]
	ldr	w1, [x7, x8]
	sxth	w5, w5
	orr	w0, w1, w0, lsl 31
	mov	w1, w6
	str	w0, [x7, x8]
	mov	x0, x14
	bl	uECC_vli_rshift1
	b	.L89
.L97:
	eor	w0, w4, 1
	ubfiz	x16, x4, 3, 1
	mov	w2, 0
	mov	w3, 0
	ubfiz	x0, x0, 3, 1
	b	.L94
.L95:
	ldp	x29, x30, [sp, 160]
	add	sp, sp, 176
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE35:
	.size	uECC_vli_mmod, .-uECC_vli_mmod
	.align	2
	.global	uECC_vli_modMult
	.type	uECC_vli_modMult, %function
uECC_vli_modMult:
.LFB36:
	.cfi_startproc
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	mov	x18, x0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	stp	x29, x30, [sp, 80]
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	add	x29, sp, 80
	stp	x19, x20, [sp, 96]
	.cfi_offset 19, -16
	.cfi_offset 20, -8
	sxtb	w20, w4
	mov	x19, x3
	ldr	x3, [x0]
	str	x3, [sp, 72]
	mov	x3, 0
	add	x0, sp, 8
	mov	w3, w20
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
	beq	.L101
	bl	__stack_chk_fail
.L101:
	ldp	x29, x30, [sp, 80]
	ldp	x19, x20, [sp, 96]
	add	sp, sp, 112
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE36:
	.size	uECC_vli_modMult, .-uECC_vli_modMult
	.align	2
	.global	uECC_vli_modMult_fast
	.type	uECC_vli_modMult_fast, %function
uECC_vli_modMult_fast:
.LFB37:
	.cfi_startproc
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	mov	x18, x3
	stp	x29, x30, [sp, 80]
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	add	x29, sp, 80
	str	x19, [sp, 96]
	.cfi_offset 19, -16
	mov	x19, x0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [x0]
	str	x3, [sp, 72]
	mov	x3, 0
	add	x0, sp, 8
	ldrb	w3, [x18]
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
	beq	.L104
	bl	__stack_chk_fail
.L104:
	ldp	x29, x30, [sp, 80]
	ldr	x19, [sp, 96]
	add	sp, sp, 112
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE37:
	.size	uECC_vli_modMult_fast, .-uECC_vli_modMult_fast
	.align	2
	.type	uECC_vli_modSquare_fast, %function
uECC_vli_modSquare_fast:
.LFB38:
	.cfi_startproc
	mov	x3, x2
	mov	x2, x1
	b	uECC_vli_modMult_fast
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
	.cfi_offset 19, -64
	.cfi_offset 20, -56
	mov	x19, x0
	mov	x20, x2
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	stp	x21, x22, [sp, 112]
	.cfi_offset 21, -48
	.cfi_offset 22, -40
	mov	x22, x3
	stp	x23, x24, [sp, 128]
	.cfi_offset 23, -32
	.cfi_offset 24, -24
	mov	x24, x1
	stp	x25, x26, [sp, 144]
	.cfi_offset 25, -16
	.cfi_offset 26, -8
	ldrsb	w21, [x3]
	ldr	x1, [x0]
	str	x1, [sp, 72]
	mov	x1, 0
	mov	x0, x2
	mov	w1, w21
	bl	uECC_vli_isZero
	cbnz	w0, .L107
	add	x25, sp, 8
	mov	x2, x22
	mov	x1, x24
	mov	x0, x25
	bl	uECC_vli_modSquare_fast
	add	x26, sp, 40
	mov	x3, x22
	mov	x2, x25
	mov	x1, x19
	mov	x0, x26
	bl	uECC_vli_modMult_fast
	add	x23, x22, 4
	mov	x2, x22
	mov	x1, x25
	mov	x0, x25
	bl	uECC_vli_modSquare_fast
	mov	x3, x22
	mov	x2, x20
	mov	x1, x24
	mov	x0, x24
	bl	uECC_vli_modMult_fast
	mov	x2, x22
	mov	x1, x20
	mov	x0, x20
	bl	uECC_vli_modSquare_fast
	mov	w4, w21
	mov	x3, x23
	mov	x2, x20
	mov	x1, x19
	mov	x0, x19
	bl	uECC_vli_modAdd
	mov	w4, w21
	mov	x3, x23
	mov	x2, x20
	mov	x1, x20
	mov	x0, x20
	bl	uECC_vli_modAdd
	mov	w4, w21
	mov	x3, x23
	mov	x2, x20
	mov	x1, x19
	mov	x0, x20
	bl	uECC_vli_modSub
	mov	x3, x22
	mov	x2, x20
	mov	x1, x19
	mov	x0, x19
	bl	uECC_vli_modMult_fast
	mov	w4, w21
	mov	x3, x23
	mov	x2, x19
	mov	x1, x19
	mov	x0, x20
	bl	uECC_vli_modAdd
	mov	x0, x19
	mov	w4, w21
	mov	x3, x23
	mov	x2, x20
	mov	x1, x19
	bl	uECC_vli_modAdd
	ldr	w0, [x19]
	tbz	x0, 0, .L109
	mov	w3, w21
	mov	x2, x23
	mov	x1, x19
	mov	x0, x19
	bl	uECC_vli_add
	mov	w4, w0
	mov	x0, x19
	mov	w1, w21
	bl	uECC_vli_rshift1
	mov	x0, -4
	add	x0, x0, w21, sxtw 2
	ldr	w1, [x19, x0]
	orr	w4, w1, w4, lsl 31
	str	w4, [x19, x0]
.L110:
	mov	x2, x22
	mov	x1, x19
	mov	x0, x20
	bl	uECC_vli_modSquare_fast
	mov	w4, w21
	mov	x3, x23
	mov	x2, x26
	mov	x1, x20
	mov	x0, x20
	bl	uECC_vli_modSub
	mov	w4, w21
	mov	x3, x23
	mov	x2, x26
	mov	x1, x20
	mov	x0, x20
	bl	uECC_vli_modSub
	mov	w4, w21
	mov	x3, x23
	mov	x2, x20
	mov	x1, x26
	mov	x0, x26
	bl	uECC_vli_modSub
	mov	x3, x22
	mov	x2, x26
	mov	x1, x19
	mov	x0, x19
	bl	uECC_vli_modMult_fast
	mov	w4, w21
	mov	x3, x23
	mov	x2, x25
	mov	x1, x19
	mov	x0, x25
	bl	uECC_vli_modSub
	mov	w2, w21
	mov	x1, x20
	mov	x0, x19
	bl	uECC_vli_set
	mov	w2, w21
	mov	x1, x24
	mov	x0, x20
	bl	uECC_vli_set
	mov	w2, w21
	mov	x1, x25
	mov	x0, x24
	bl	uECC_vli_set
.L107:
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 72]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L111
	bl	__stack_chk_fail
.L109:
	mov	w1, w21
	mov	x0, x19
	bl	uECC_vli_rshift1
	b	.L110
.L111:
	ldp	x29, x30, [sp, 80]
	ldp	x19, x20, [sp, 96]
	ldp	x21, x22, [sp, 112]
	ldp	x23, x24, [sp, 128]
	ldp	x25, x26, [sp, 144]
	add	sp, sp, 160
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
	adrp	x3, :got:__stack_chk_guard
	ldr	x3, [x3, :got_lo12:__stack_chk_guard]
	stp	x29, x30, [sp, 48]
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	add	x29, sp, 48
	stp	x19, x20, [sp, 64]
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	mov	x19, x0
	mov	x20, x2
	stp	x21, x22, [sp, 80]
	.cfi_offset 21, -32
	.cfi_offset 22, -24
	mov	x21, x2
	mov	x22, x1
	str	x23, [sp, 96]
	.cfi_offset 23, -16
	ldr	x4, [x3]
	str	x4, [sp, 40]
	mov	x4, 0
	add	x3, sp, 4
	ldrsb	w23, [x21], 4
	stp	xzr, xzr, [x3, 8]
	mov	w3, 3
	str	w3, [sp, 8]
	str	xzr, [sp, 28]
	str	wzr, [sp, 36]
	bl	uECC_vli_modSquare_fast
	mov	w4, w23
	mov	x3, x21
	add	x2, sp, 8
	mov	x1, x19
	mov	x0, x19
	bl	uECC_vli_modSub
	mov	x2, x22
	mov	x1, x19
	mov	x0, x19
	mov	x3, x20
	bl	uECC_vli_modMult_fast
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 40]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L114
	bl	__stack_chk_fail
.L114:
	ldp	x29, x30, [sp, 48]
	mov	x3, x21
	ldp	x21, x22, [sp, 80]
	add	x2, x20, 132
	mov	x1, x19
	mov	x0, x19
	ldp	x19, x20, [sp, 64]
	mov	w4, w23
	ldr	x23, [sp, 96]
	add	sp, sp, 112
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 23
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	b	uECC_vli_modAdd
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
	.cfi_offset 19, -80
	.cfi_offset 20, -72
	mov	x19, x4
	stp	x21, x22, [sp, 144]
	.cfi_offset 21, -64
	.cfi_offset 22, -56
	mov	x22, x4
	add	x21, sp, 40
	stp	x23, x24, [sp, 160]
	.cfi_offset 23, -48
	.cfi_offset 24, -40
	mov	x24, x0
	mov	x23, x2
	stp	x25, x26, [sp, 176]
	.cfi_offset 25, -32
	.cfi_offset 26, -24
	mov	x26, x3
	add	x25, sp, 8
	str	x27, [sp, 192]
	.cfi_offset 27, -16
	mov	x27, x1
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	mov	x2, x24
	ldrsb	w20, [x19], 4
	ldr	x1, [x0]
	str	x1, [sp, 104]
	mov	x1, 0
	mov	x0, x25
	mov	w4, w20
	mov	x3, x19
	mov	x1, x23
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
	mov	x1, x23
	mov	x0, x23
	mov	x3, x22
	mov	x2, x25
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
	mov	w4, w20
	mov	x1, x23
	mov	x3, x19
	mov	x2, x24
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
	mov	x0, x23
	mov	x2, x22
	mov	x1, x26
	bl	uECC_vli_modSquare_fast
	mov	x1, x23
	mov	x0, x23
	mov	w4, w20
	mov	x3, x19
	mov	x2, x21
	bl	uECC_vli_modSub
	mov	w4, w20
	add	x0, sp, 72
	mov	x2, x23
	mov	x3, x19
	mov	x23, x0
	mov	x1, x24
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
	mov	x0, x24
	mov	w2, w20
	mov	x1, x23
	bl	uECC_vli_set
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 104]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L118
	bl	__stack_chk_fail
.L118:
	ldp	x29, x30, [sp, 112]
	ldp	x19, x20, [sp, 128]
	ldp	x21, x22, [sp, 144]
	ldp	x23, x24, [sp, 160]
	ldp	x25, x26, [sp, 176]
	ldr	x27, [sp, 192]
	add	sp, sp, 208
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
	.cfi_endproc
.LFE49:
	.size	XYcZ_addC, .-XYcZ_addC
	.align	2
	.global	uECC_vli_modInv
	.type	uECC_vli_modInv, %function
uECC_vli_modInv:
.LFB40:
	.cfi_startproc
	sub	sp, sp, #160
	.cfi_def_cfa_offset 160
	mov	x18, x0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	mov	x5, x1
	stp	x29, x30, [sp, 144]
	sxtb	w10, w3
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 144
	ldr	x1, [x0]
	str	x1, [sp, 136]
	mov	x1, 0
	mov	x13, x2
	mov	w1, w10
	mov	x0, x5
	bl	uECC_vli_isZero
	cbz	w0, .L121
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 136]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L122
.L135:
	bl	__stack_chk_fail
.L122:
	ldp	x29, x30, [sp, 144]
	mov	w1, w10
	mov	x0, x18
	add	sp, sp, 160
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	b	uECC_vli_clear
.L121:
	.cfi_restore_state
	add	x14, sp, 8
	mov	w2, w10
	mov	x1, x5
	mov	x0, x14
	bl	uECC_vli_set
	add	x15, sp, 40
	mov	w2, w10
	mov	x0, x15
	add	x11, sp, 72
	mov	x1, x13
	bl	uECC_vli_set
	mov	x0, x11
	mov	w1, w10
	add	x12, sp, 104
	bl	uECC_vli_clear
	mov	w0, 1
	mov	w1, w10
	str	w0, [sp, 72]
	mov	x0, x12
	bl	uECC_vli_clear
.L123:
	mov	w2, w10
	mov	x1, x15
	mov	x0, x14
	bl	uECC_vli_cmp_unsafe
	sxtb	w0, w0
	cbnz	w0, .L130
	mov	x0, x18
	mov	w2, w10
	mov	x1, x11
	bl	uECC_vli_set
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 136]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	bne	.L135
	ldp	x29, x30, [sp, 144]
	add	sp, sp, 160
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
.L130:
	.cfi_restore_state
	ldr	w2, [sp, 8]
	tbnz	x2, 0, .L124
	mov	w1, w10
	mov	x0, x14
	bl	uECC_vli_rshift1
.L136:
	mov	w2, w10
	mov	x1, x13
	mov	x0, x11
.L134:
	bl	vli_modInv_update
	b	.L123
.L124:
	ldr	w2, [sp, 40]
	tbnz	x2, 0, .L126
	mov	w1, w10
	mov	x0, x15
	bl	uECC_vli_rshift1
.L133:
	mov	w2, w10
	mov	x1, x13
	mov	x0, x12
	b	.L134
.L126:
	mov	w3, w10
	cmp	w0, 0
	ble	.L127
	mov	x2, x15
	mov	x1, x14
	mov	x0, x14
	bl	uECC_vli_sub
	mov	x0, x14
	mov	w1, w10
	bl	uECC_vli_rshift1
	mov	x0, x11
	mov	w2, w10
	mov	x1, x12
	bl	uECC_vli_cmp_unsafe
	tbz	x0, 7, .L128
	mov	w3, w10
	mov	x2, x13
	mov	x1, x11
	mov	x0, x11
	bl	uECC_vli_add
.L128:
	mov	w3, w10
	mov	x2, x12
	mov	x1, x11
	mov	x0, x11
	bl	uECC_vli_sub
	b	.L136
.L127:
	mov	x2, x14
	mov	x0, x15
	bl	uECC_vli_sub
	mov	w1, w10
	mov	x0, x15
	bl	uECC_vli_rshift1
	mov	x0, x12
	mov	w2, w10
	mov	x1, x11
	bl	uECC_vli_cmp_unsafe
	tbz	x0, 7, .L129
	mov	w3, w10
	mov	x2, x13
	mov	x1, x12
	mov	x0, x12
	bl	uECC_vli_add
.L129:
	mov	w3, w10
	mov	x2, x11
	mov	x1, x12
	mov	x0, x12
	bl	uECC_vli_sub
	b	.L133
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
	ldrb	w1, [x1]
	ubfiz	w1, w1, 1, 7
	b	uECC_vli_isZero
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
	str	x23, [sp, 96]
	.cfi_offset 23, -16
	mov	x23, x0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	stp	x19, x20, [sp, 64]
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	add	x19, sp, 8
	stp	x21, x22, [sp, 80]
	.cfi_offset 21, -32
	.cfi_offset 22, -24
	mov	x22, x1
	mov	x21, x2
	ldr	x1, [x0]
	str	x1, [sp, 40]
	mov	x1, 0
	mov	x20, x3
	mov	x2, x3
	mov	x1, x21
	mov	x0, x19
	bl	uECC_vli_modSquare_fast
	mov	x3, x20
	mov	x2, x19
	mov	x1, x23
	mov	x0, x23
	bl	uECC_vli_modMult_fast
	mov	x3, x20
	mov	x2, x21
	mov	x1, x19
	mov	x0, x19
	bl	uECC_vli_modMult_fast
	mov	x2, x19
	mov	x1, x22
	mov	x0, x22
	mov	x3, x20
	bl	uECC_vli_modMult_fast
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 40]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L140
	bl	__stack_chk_fail
.L140:
	ldp	x29, x30, [sp, 48]
	ldp	x19, x20, [sp, 64]
	ldp	x21, x22, [sp, 80]
	ldr	x23, [sp, 96]
	add	sp, sp, 112
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 23
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
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
	stp	x21, x22, [sp, 80]
	.cfi_offset 21, -48
	.cfi_offset 22, -40
	mov	x21, x4
	mov	x22, x4
	stp	x19, x20, [sp, 64]
	.cfi_offset 19, -64
	.cfi_offset 20, -56
	add	x19, sp, 8
	mov	x20, x2
	stp	x23, x24, [sp, 96]
	.cfi_offset 23, -32
	.cfi_offset 24, -24
	mov	x24, x3
	stp	x25, x26, [sp, 112]
	.cfi_offset 25, -16
	.cfi_offset 26, -8
	mov	x25, x0
	mov	x26, x1
	ldrsb	w23, [x21], 4
	mov	x2, x25
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	mov	w4, w23
	mov	x3, x21
	ldr	x1, [x0]
	str	x1, [sp, 40]
	mov	x1, 0
	mov	x0, x19
	mov	x1, x20
	bl	uECC_vli_modSub
	mov	x2, x22
	mov	x1, x19
	mov	x0, x19
	bl	uECC_vli_modSquare_fast
	mov	x3, x22
	mov	x2, x19
	mov	x1, x25
	mov	x0, x25
	bl	uECC_vli_modMult_fast
	mov	x3, x22
	mov	x2, x19
	mov	x1, x20
	mov	x0, x20
	bl	uECC_vli_modMult_fast
	mov	w4, w23
	mov	x3, x21
	mov	x2, x26
	mov	x1, x24
	mov	x0, x24
	bl	uECC_vli_modSub
	mov	x2, x22
	mov	x1, x24
	mov	x0, x19
	bl	uECC_vli_modSquare_fast
	mov	w4, w23
	mov	x3, x21
	mov	x2, x25
	mov	x1, x19
	mov	x0, x19
	bl	uECC_vli_modSub
	mov	w4, w23
	mov	x3, x21
	mov	x2, x20
	mov	x1, x19
	mov	x0, x19
	bl	uECC_vli_modSub
	mov	w4, w23
	mov	x3, x21
	mov	x2, x25
	mov	x1, x20
	mov	x0, x20
	bl	uECC_vli_modSub
	mov	x3, x22
	mov	x2, x20
	mov	x1, x26
	mov	x0, x26
	bl	uECC_vli_modMult_fast
	mov	w4, w23
	mov	x3, x21
	mov	x2, x19
	mov	x1, x25
	mov	x0, x20
	bl	uECC_vli_modSub
	mov	x3, x22
	mov	x2, x20
	mov	x1, x24
	mov	x0, x24
	bl	uECC_vli_modMult_fast
	mov	w4, w23
	mov	x3, x21
	mov	x2, x26
	mov	x1, x24
	mov	x0, x24
	bl	uECC_vli_modSub
	mov	x0, x20
	mov	w2, w23
	mov	x1, x19
	bl	uECC_vli_set
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 40]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L143
	bl	__stack_chk_fail
.L143:
	ldp	x29, x30, [sp, 48]
	ldp	x19, x20, [sp, 64]
	ldp	x21, x22, [sp, 80]
	ldp	x23, x24, [sp, 96]
	ldp	x25, x26, [sp, 112]
	add	sp, sp, 128
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
	.cfi_endproc
.LFE48:
	.size	XYcZ_add, .-XYcZ_add
	.align	2
	.global	EccPoint_mult
	.type	EccPoint_mult, %function
EccPoint_mult:
.LFB50:
	.cfi_startproc
	sub	sp, sp, #320
	.cfi_def_cfa_offset 320
	mov	x6, x3
	stp	x29, x30, [sp, 224]
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	add	x29, sp, 224
	stp	x19, x20, [sp, 240]
	.cfi_offset 19, -80
	.cfi_offset 20, -72
	mov	x20, x5
	add	x19, sp, 56
	stp	x21, x22, [sp, 256]
	stp	x23, x24, [sp, 272]
	.cfi_offset 21, -64
	.cfi_offset 22, -56
	.cfi_offset 23, -48
	.cfi_offset 24, -40
	add	x24, sp, 184
	stp	x25, x26, [sp, 288]
	.cfi_offset 25, -32
	.cfi_offset 26, -24
	mov	x26, x0
	sxth	w0, w4
	stp	x27, x28, [sp, 304]
	.cfi_offset 27, -16
	.cfi_offset 28, -8
	add	x25, sp, 120
	mov	x28, x2
	str	w0, [sp, 16]
	mov	x27, x1
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldrsb	w21, [x5]
	ldr	x2, [x0]
	str	x2, [sp, 216]
	mov	x2, 0
	mov	x0, x25
	mov	w2, w21
	bl	uECC_vli_set
	sbfiz	x0, x21, 2, 32
	str	x0, [sp]
	add	x0, x1, w21, sxtw 2
	mov	w2, w21
	mov	x1, x0
	str	x0, [sp, 8]
	mov	x0, x24
	bl	uECC_vli_set
	cbz	x6, .L146
	mov	w2, w21
	mov	x1, x6
	mov	x0, x19
	bl	uECC_vli_set
.L147:
	add	x22, sp, 88
	mov	w2, w21
	mov	x1, x25
	mov	x0, x22
	add	x23, sp, 152
	bl	uECC_vli_set
	mov	w2, w21
	mov	x1, x24
	mov	x0, x23
	bl	uECC_vli_set
	mov	x3, x20
	mov	x2, x19
	mov	x0, x25
	bl	apply_z
	ldr	x4, [x20, 168]
	mov	x1, x24
	mov	x3, x20
	mov	x2, x19
	mov	x0, x25
	blr	x4
	mov	x0, x22
	mov	x3, x20
	mov	x2, x19
	mov	x1, x23
	bl	apply_z
	ldr	w0, [sp, 16]
	sub	w24, w0, #2
.L152:
	sxth	w24, w24
	cmp	w24, 0
	bgt	.L149
	ldr	w5, [x28]
	mov	x4, x20
	ubfiz	x24, x5, 5, 1
	mvn	x5, x5
	add	x28, x22, x24
	add	x24, x23, x24
	ubfiz	x5, x5, 5, 1
	mov	x1, x24
	add	x6, x22, x5
	add	x5, x23, x5
	mov	x3, x5
	mov	x2, x6
	mov	x0, x28
	stp	x6, x5, [sp, 24]
	bl	XYcZ_addC
	add	x7, x20, 4
	mov	w4, w21
	mov	x3, x7
	mov	x2, x22
	mov	x1, x25
	mov	x0, x19
	str	x7, [sp, 16]
	bl	uECC_vli_modSub
	mov	x3, x20
	mov	x2, x24
	mov	x1, x19
	mov	x0, x19
	bl	uECC_vli_modMult_fast
	mov	x3, x20
	mov	x2, x27
	mov	x1, x19
	mov	x0, x19
	bl	uECC_vli_modMult_fast
	ldr	x7, [sp, 16]
	mov	w3, w21
	mov	x1, x19
	mov	x0, x19
	mov	x2, x7
	bl	uECC_vli_modInv
	ldr	x2, [sp, 8]
	mov	x3, x20
	mov	x1, x19
	mov	x0, x19
	bl	uECC_vli_modMult_fast
	mov	x3, x20
	mov	x2, x28
	mov	x1, x19
	mov	x0, x19
	bl	uECC_vli_modMult_fast
	ldp	x6, x5, [sp, 24]
	mov	x4, x20
	mov	x3, x24
	mov	x2, x28
	mov	x1, x5
	mov	x0, x6
	bl	XYcZ_add
	mov	x3, x20
	mov	x2, x19
	mov	x1, x23
	mov	x0, x22
	bl	apply_z
	mov	x0, x26
	mov	w2, w21
	mov	x1, x22
	bl	uECC_vli_set
	ldr	x0, [sp]
	mov	w2, w21
	mov	x1, x23
	add	x0, x26, x0
	bl	uECC_vli_set
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 216]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L150
	bl	__stack_chk_fail
.L146:
	mov	x0, x19
	mov	w1, w21
	bl	uECC_vli_clear
	mov	w0, 1
	str	w0, [sp, 56]
	b	.L147
.L149:
	mov	w1, w24
	mov	x0, x28
	bl	uECC_vli_testBit
	cmp	w0, 0
	cset	x5, eq
	cset	x1, ne
	mov	x4, x20
	sub	w24, w24, #1
	add	x6, x22, x5, lsl 5
	add	x5, x23, x5, lsl 5
	add	x0, x22, x1, lsl 5
	mov	x3, x5
	add	x1, x23, x1, lsl 5
	mov	x2, x6
	stp	x0, x1, [sp, 16]
	stp	x6, x5, [sp, 32]
	bl	XYcZ_addC
	mov	x4, x20
	ldp	x0, x1, [sp, 16]
	ldp	x6, x5, [sp, 32]
	mov	x3, x1
	mov	x2, x0
	mov	x1, x5
	mov	x0, x6
	bl	XYcZ_add
	b	.L152
.L150:
	ldp	x29, x30, [sp, 224]
	ldp	x19, x20, [sp, 240]
	ldp	x21, x22, [sp, 256]
	ldp	x23, x24, [sp, 272]
	ldp	x25, x26, [sp, 288]
	ldp	x27, x28, [sp, 304]
	add	sp, sp, 320
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
	.cfi_endproc
.LFE50:
	.size	EccPoint_mult, .-EccPoint_mult
	.align	2
	.global	regularize_k
	.type	regularize_k, %function
regularize_k:
.LFB51:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x10, x1
	mov	w1, 32
	mov	x29, sp
	ldrsh	w11, [x3, 2]
	add	x8, x3, 36
	mov	x12, x2
	mov	x2, x8
	add	w9, w11, 31
	sdiv	w9, w9, w1
	mov	x1, x0
	mov	x0, x10
	sxtb	w9, w9
	mov	w3, w9
	bl	uECC_vli_add
	cbnz	w0, .L155
	cmp	w11, w9, lsl 5
	bge	.L156
	mov	w1, w11
	mov	x0, x10
	bl	uECC_vli_testBit
	cmp	w0, 0
	cset	w11, ne
.L154:
	mov	w3, w9
	mov	x2, x8
	mov	x1, x10
	mov	x0, x12
	bl	uECC_vli_add
	mov	w0, w11
	ldp	x29, x30, [sp], 16
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
.L155:
	.cfi_restore_state
	mov	w11, 1
	b	.L154
.L156:
	mov	w11, 0
	b	.L154
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
	adrp	x1, :got:__stack_chk_guard
	ldr	x1, [x1, :got_lo12:__stack_chk_guard]
	mov	x19, x2
	mov	x3, x19
	ldr	x2, [x1]
	str	x2, [sp, 88]
	mov	x2, 0
	add	x1, sp, 24
	add	x2, sp, 56
	stp	x1, x2, [sp, 8]
	bl	regularize_k
	cmp	w0, 0
	add	x0, sp, 8
	cset	x1, eq
	ldrh	w4, [x19, 2]
	mov	x3, 0
	mov	x5, x19
	add	w4, w4, 1
	ldr	x2, [x0, x1, lsl 3]
	add	x1, x19, 68
	mov	x0, x20
	bl	EccPoint_mult
	mov	x1, x19
	mov	x0, x20
	bl	EccPoint_isZero
	cmp	w0, 0
	adrp	x1, :got:__stack_chk_guard
	ldr	x1, [x1, :got_lo12:__stack_chk_guard]
	cset	w0, eq
	ldr	x3, [sp, 88]
	ldr	x2, [x1]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L159
	bl	__stack_chk_fail
.L159:
	ldp	x29, x30, [sp, 96]
	ldp	x19, x20, [sp, 112]
	add	sp, sp, 128
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE52:
	.size	EccPoint_compute_public_key, .-EccPoint_compute_public_key
	.align	2
	.global	uECC_vli_nativeToBytes
	.type	uECC_vli_nativeToBytes, %function
uECC_vli_nativeToBytes:
.LFB53:
	.cfi_startproc
	sub	w6, w1, #1
	mov	w3, 0
.L162:
	cmp	w3, w1
	blt	.L163
	ret
.L163:
	sub	w4, w6, w3
	and	x5, x4, 4294967292
	ubfiz	w4, w4, 3, 2
	ldr	w5, [x2, x5]
	lsr	w4, w5, w4
	strb	w4, [x0, w3, sxtw]
	add	w3, w3, 1
	sxtb	w3, w3
	b	.L162
	.cfi_endproc
.LFE53:
	.size	uECC_vli_nativeToBytes, .-uECC_vli_nativeToBytes
	.align	2
	.global	uECC_vli_bytesToNative
	.type	uECC_vli_bytesToNative, %function
uECC_vli_bytesToNative:
.LFB54:
	.cfi_startproc
	mov	w4, w2
	add	w2, w2, 3
	mov	x6, x1
	mov	w1, 4
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x5, x0
	sub	w7, w4, #1
	sdiv	w1, w2, w1
	mov	x29, sp
	bl	uECC_vli_clear
	mov	w3, 0
.L165:
	cmp	w3, w4
	blt	.L166
	ldp	x29, x30, [sp], 16
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
.L166:
	.cfi_restore_state
	sub	w0, w7, w3
	ldrb	w1, [x6, w3, sxtw]
	and	x2, x0, 4294967292
	add	w3, w3, 1
	ubfiz	w0, w0, 3, 2
	sxtb	w3, w3
	lsl	w1, w1, w0
	ldr	w0, [x5, x2]
	orr	w0, w0, w1
	str	w0, [x5, x2]
	b	.L165
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
	sxtb	w20, w2
	mov	x19, x0
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -48
	.cfi_offset 22, -40
	mov	x22, x1
	mov	x0, x22
	stp	x25, x26, [sp, 64]
	.cfi_offset 25, -16
	.cfi_offset 26, -8
	adrp	x25, .LANCHOR0
	mov	w1, w20
	stp	x23, x24, [sp, 48]
	.cfi_offset 23, -32
	.cfi_offset 24, -24
	bl	uECC_vli_numBits
	ldr	x1, [x25, #:lo12:.LANCHOR0]
	cbz	x1, .L169
	ubfiz	w1, w20, 5, 11
	add	x21, x19, w20, sxtw 2
	sub	w0, w1, w0
	mov	w24, -1
	lsl	w26, w20, 2
	sub	x21, x21, #4
	lsr	w24, w24, w0
	mov	w23, 64
.L172:
	ldr	x2, [x25, #:lo12:.LANCHOR0]
	mov	w1, w26
	mov	x0, x19
	blr	x2
	cbz	w0, .L169
	ldr	w0, [x21]
	mov	w1, w20
	and	w0, w0, w24
	str	w0, [x21]
	mov	x0, x19
	bl	uECC_vli_isZero
	cbnz	w0, .L170
	mov	w2, w20
	mov	x1, x19
	mov	x0, x22
	bl	uECC_vli_cmp
	sxtb	w0, w0
	cmp	w0, 1
	beq	.L168
.L170:
	subs	w23, w23, #1
	bne	.L172
.L169:
	mov	w0, 0
.L168:
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
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
	.cfi_endproc
.LFE55:
	.size	uECC_generate_random_int, .-uECC_generate_random_int
	.align	2
	.global	uECC_valid_point
	.type	uECC_valid_point, %function
uECC_valid_point:
.LFB56:
	.cfi_startproc
	sub	sp, sp, #128
	.cfi_def_cfa_offset 128
	adrp	x2, :got:__stack_chk_guard
	ldr	x2, [x2, :got_lo12:__stack_chk_guard]
	stp	x29, x30, [sp, 80]
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	add	x29, sp, 80
	stp	x19, x20, [sp, 96]
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	mov	x20, x0
	mov	x19, x1
	stp	x21, x22, [sp, 112]
	.cfi_offset 21, -16
	.cfi_offset 22, -8
	ldr	x3, [x2]
	str	x3, [sp, 72]
	mov	x3, 0
	ldrsb	w22, [x1]
	bl	EccPoint_isZero
	cbnz	w0, .L185
	add	x5, x19, 4
	mov	w2, w22
	mov	x1, x20
	mov	x0, x5
	bl	uECC_vli_cmp_unsafe
	sxtb	w0, w0
	cmp	w0, 1
	bne	.L187
	mov	w2, w22
	add	x1, x20, w22, sxtw 2
	mov	x0, x5
	bl	uECC_vli_cmp_unsafe
	sxtb	w0, w0
	cmp	w0, 1
	bne	.L187
	add	x21, sp, 8
	mov	x2, x19
	mov	x0, x21
	bl	uECC_vli_modSquare_fast
	ldr	x3, [x19, 176]
	add	x0, sp, 40
	mov	x2, x19
	mov	x1, x20
	mov	x19, x0
	blr	x3
	mov	w2, w22
	mov	x1, x19
	mov	x0, x21
	bl	uECC_vli_equal
	cmp	w0, 0
	mov	w0, -3
	csel	w0, w0, wzr, ne
.L182:
	adrp	x1, :got:__stack_chk_guard
	ldr	x1, [x1, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 72]
	ldr	x2, [x1]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L184
	bl	__stack_chk_fail
.L185:
	mov	w0, -1
	b	.L182
.L187:
	mov	w0, -2
	b	.L182
.L184:
	ldp	x29, x30, [sp, 80]
	ldp	x19, x20, [sp, 96]
	ldp	x21, x22, [sp, 112]
	add	sp, sp, 128
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE56:
	.size	uECC_valid_point, .-uECC_valid_point
	.align	2
	.global	uECC_valid_public_key
	.type	uECC_valid_public_key, %function
uECC_valid_public_key:
.LFB57:
	.cfi_startproc
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	mov	x8, x1
	mov	x10, x0
	mov	x11, x8
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	stp	x29, x30, [sp, 80]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 80
	ldrsb	w12, [x8, 1]
	ldr	x1, [x0]
	str	x1, [sp, 72]
	mov	x1, 0
	add	x9, sp, 8
	mov	w2, w12
	mov	x1, x10
	mov	x0, x9
	bl	uECC_vli_bytesToNative
	ldrsb	x0, [x11], 68
	mov	w2, w12
	add	x1, x10, w12, sxtw
	add	x0, x9, x0, lsl 2
	bl	uECC_vli_bytesToNative
	mov	x1, x11
	mov	x0, x9
	mov	w2, 16
	bl	uECC_vli_cmp_unsafe
	tst	w0, 255
	beq	.L193
	mov	x1, x8
	mov	x0, x9
	bl	uECC_valid_point
.L190:
	adrp	x1, :got:__stack_chk_guard
	ldr	x1, [x1, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 72]
	ldr	x2, [x1]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L192
	bl	__stack_chk_fail
.L193:
	mov	w0, -4
	b	.L190
.L192:
	ldp	x29, x30, [sp, 80]
	add	sp, sp, 96
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE57:
	.size	uECC_valid_public_key, .-uECC_valid_public_key
	.align	2
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
	ldrsh	w8, [x2, 2]
	stp	x21, x22, [sp, 144]
	.cfi_offset 21, -32
	.cfi_offset 22, -24
	mov	x21, x1
	add	x22, sp, 8
	adrp	x1, :got:__stack_chk_guard
	ldr	x1, [x1, :got_lo12:__stack_chk_guard]
	stp	x19, x20, [sp, 128]
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	mov	x19, x2
	str	x23, [sp, 160]
	.cfi_offset 23, -16
	ldr	x2, [x1]
	str	x2, [sp, 104]
	mov	x2, 0
	mov	w1, 8
	add	w2, w8, 7
	add	w8, w8, 31
	sdiv	w2, w2, w1
	mov	x1, x0
	mov	x0, x22
	bl	uECC_vli_bytesToNative
	mov	w0, 32
	sdiv	w8, w8, w0
	mov	x0, x22
	sxtb	w8, w8
	mov	w1, w8
	bl	uECC_vli_isZero
	cbz	w0, .L196
.L198:
	mov	w0, 0
.L195:
	adrp	x1, :got:__stack_chk_guard
	ldr	x1, [x1, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 104]
	ldr	x2, [x1]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L199
	bl	__stack_chk_fail
.L196:
	mov	w2, w8
	mov	x1, x22
	add	x0, x19, 36
	bl	uECC_vli_cmp
	sxtb	w20, w0
	cmp	w20, 1
	bne	.L198
	add	x23, sp, 40
	mov	x2, x19
	mov	x1, x22
	mov	x0, x23
	bl	EccPoint_compute_public_key
	cbz	w0, .L198
	ldrsb	w1, [x19, 1]
	mov	x2, x23
	mov	x0, x21
	bl	uECC_vli_nativeToBytes
	ldrsb	w1, [x19, 1]
	ldrsb	x2, [x19]
	ldrsb	x0, [x19, 1]
	add	x0, x21, x0
	add	x2, x23, x2, lsl 2
	bl	uECC_vli_nativeToBytes
	mov	w0, w20
	b	.L195
.L199:
	ldp	x29, x30, [sp, 112]
	ldp	x19, x20, [sp, 128]
	ldp	x21, x22, [sp, 144]
	ldr	x23, [sp, 160]
	add	sp, sp, 176
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 23
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
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
