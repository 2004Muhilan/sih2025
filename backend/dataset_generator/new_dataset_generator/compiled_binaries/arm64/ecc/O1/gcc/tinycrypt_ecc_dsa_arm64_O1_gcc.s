	.arch armv8-a
	.file	"tinycrypt_ecc_dsa.c"
	.text
	.align	2
	.type	bits2int, %function
bits2int:
.LFB0:
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
	mov	x21, x0
	mov	x24, x1
	mov	x22, x3
	ldrsh	w3, [x3, 2]
	add	w23, w3, 62
	adds	w1, w3, 31
	csel	w23, w23, w1, mi
	asr	w19, w23, 5
	add	w20, w3, 14
	adds	w3, w3, 7
	csel	w20, w20, w3, mi
	asr	w20, w20, 3
	cmp	w20, w2
	csel	w20, w20, w2, ls
	sbfx	x23, x23, 5, 8
	mov	w1, w23
	bl	uECC_vli_clear
	mov	w2, w20
	mov	x1, x24
	mov	x0, x21
	bl	uECC_vli_bytesToNative
	lsl	w20, w20, 3
	ldrsh	w0, [x22, 2]
	cmp	w20, w0
	bls	.L1
	sub	w6, w20, w0
	add	x4, x21, w19, uxtw 2
	cmp	x21, x4
	bcs	.L3
	mov	w1, 0
	mov	w2, 32
	sub	w2, w2, w6
.L4:
	ldr	w0, [x4, -4]
	lsr	w5, w0, w6
	orr	w5, w5, w1
	str	w5, [x4, -4]!
	lsl	w1, w0, w2
	cmp	x21, x4
	bcc	.L4
.L3:
	add	x22, x22, 36
	mov	w2, w23
	mov	x1, x21
	mov	x0, x22
	bl	uECC_vli_cmp_unsafe
	sxtb	w0, w0
	cmp	w0, 1
	bne	.L7
.L1:
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x29, x30, [sp], 64
	.cfi_remember_state
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
.L7:
	.cfi_restore_state
	mov	w3, w23
	mov	x2, x22
	mov	x1, x21
	mov	x0, x21
	bl	uECC_vli_sub
	b	.L1
	.cfi_endproc
.LFE0:
	.size	bits2int, .-bits2int
	.align	2
	.global	uECC_sign_with_k
	.type	uECC_sign_with_k, %function
uECC_sign_with_k:
.LFB1:
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
	stp	x25, x26, [sp, 240]
	stp	x27, x28, [sp, 256]
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
	mov	x25, x0
	mov	x23, x1
	mov	w24, w2
	mov	x20, x3
	mov	x22, x4
	mov	x19, x5
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 168]
	mov	x1, 0
	add	x0, sp, 40
	str	x0, [sp, 24]
	add	x0, sp, 72
	str	x0, [sp, 32]
	ldrsb	w26, [x5]
	ldrsh	w28, [x5, 2]
	mov	w1, w26
	mov	x0, x3
	bl	uECC_vli_isZero
	mov	w2, 0
	cbz	w0, .L18
.L8:
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 168]
	ldr	x1, [x0]
	subs	x3, x3, x1
	mov	x1, 0
	bne	.L19
	mov	w0, w2
	ldp	x19, x20, [sp, 192]
	ldp	x21, x22, [sp, 208]
	ldp	x23, x24, [sp, 224]
	ldp	x25, x26, [sp, 240]
	ldp	x27, x28, [sp, 256]
	ldp	x29, x30, [sp, 176]
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
.L18:
	.cfi_restore_state
	add	w21, w28, 62
	adds	w0, w28, 31
	csel	w21, w21, w0, mi
	sbfx	x21, x21, 5, 8
	add	x27, x19, 36
	mov	w2, w21
	mov	x1, x20
	mov	x0, x27
	bl	uECC_vli_cmp
	sxtb	w0, w0
	mov	w2, 0
	cmp	w0, 1
	bne	.L8
	mov	x3, x19
	add	x2, sp, 72
	add	x1, sp, 40
	mov	x0, x20
	bl	regularize_k
	add	w4, w28, 1
	cmp	w0, 0
	cset	x1, eq
	add	x28, sp, 104
	mov	x5, x19
	mov	x3, 0
	add	x0, sp, 24
	ldr	x2, [x0, x1, lsl 3]
	add	x1, x19, 68
	mov	x0, x28
	bl	EccPoint_mult
	mov	w1, w26
	mov	x0, x28
	bl	uECC_vli_isZero
	mov	w2, 0
	cbnz	w0, .L8
	bl	uECC_get_rng
	cbz	x0, .L20
	mov	w2, w21
	mov	x1, x27
	add	x0, sp, 40
	bl	uECC_generate_random_int
	mov	w2, w0
	cbz	w0, .L8
.L11:
	add	x28, sp, 40
	mov	w4, w21
	mov	x3, x27
	mov	x2, x28
	mov	x1, x20
	mov	x0, x20
	bl	uECC_vli_modMult
	mov	w3, w21
	mov	x2, x27
	mov	x1, x20
	mov	x0, x20
	bl	uECC_vli_modInv
	mov	w4, w21
	mov	x3, x27
	mov	x2, x28
	mov	x1, x20
	mov	x0, x20
	bl	uECC_vli_modMult
	add	x0, sp, 104
	str	x0, [sp, 8]
	mov	x2, x0
	ldrsb	w1, [x19, 1]
	mov	x0, x22
	bl	uECC_vli_nativeToBytes
	ldrsh	w0, [x19, 2]
	add	w2, w0, 14
	adds	w0, w0, 7
	csel	w2, w2, w0, mi
	asr	w2, w2, 3
	mov	x1, x25
	mov	x0, x28
	bl	uECC_vli_bytesToNative
	sub	w0, w21, #1
	add	x25, sp, 72
	str	wzr, [x25, w0, sxtw 2]
	mov	w2, w26
	ldr	x1, [sp, 8]
	mov	x0, x25
	bl	uECC_vli_set
	mov	w4, w21
	mov	x3, x27
	mov	x2, x25
	mov	x1, x28
	mov	x0, x25
	bl	uECC_vli_modMult
	mov	x3, x19
	mov	w2, w24
	mov	x1, x23
	mov	x0, x28
	bl	bits2int
	mov	w4, w21
	mov	x3, x27
	mov	x2, x25
	mov	x1, x28
	mov	x0, x25
	bl	uECC_vli_modAdd
	mov	w4, w21
	mov	x3, x27
	mov	x2, x20
	mov	x1, x25
	mov	x0, x25
	bl	uECC_vli_modMult
	mov	w1, w21
	mov	x0, x25
	bl	uECC_vli_numBits
	ldrsb	w1, [x19, 1]
	lsl	w3, w1, 3
	mov	w2, 0
	cmp	w3, w0, sxth
	blt	.L8
	mov	x2, x25
	add	x0, x22, w1, sxtw
	bl	uECC_vli_nativeToBytes
	mov	w2, 1
	b	.L8
.L20:
	mov	w1, w21
	add	x0, sp, 40
	bl	uECC_vli_clear
	mov	w0, 1
	str	w0, [sp, 40]
	b	.L11
.L19:
	bl	__stack_chk_fail
	.cfi_endproc
.LFE1:
	.size	uECC_sign_with_k, .-uECC_sign_with_k
	.align	2
	.global	uECC_sign
	.type	uECC_sign, %function
uECC_sign:
.LFB2:
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
	stp	x27, x28, [sp, 192]
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
	mov	x26, x0
	mov	x25, x1
	mov	w24, w2
	mov	x23, x3
	mov	x20, x4
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 104]
	mov	x1, 0
	mov	w19, 64
	add	x21, sp, 40
	mov	w27, w19
	add	x28, x4, 36
	add	x22, sp, 8
.L23:
	bl	uECC_get_rng
	mov	x2, x0
	cbz	x0, .L25
	mov	w1, w27
	mov	x0, x21
	blr	x2
	cbz	w0, .L21
	ldrsh	w0, [x20, 2]
	add	w3, w0, 62
	adds	w0, w0, 31
	csel	w3, w3, w0, mi
	ubfx	x3, x3, 5, 8
	mov	x2, x28
	mov	x1, x21
	mov	x0, x22
	bl	uECC_vli_mmod
	mov	x5, x20
	mov	x4, x23
	mov	x3, x22
	mov	w2, w24
	mov	x1, x25
	mov	x0, x26
	bl	uECC_sign_with_k
	cbnz	w0, .L26
	subs	w19, w19, #1
	bne	.L23
	b	.L21
.L25:
	mov	w0, 0
.L21:
	adrp	x1, :got:__stack_chk_guard
	ldr	x1, [x1, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 104]
	ldr	x2, [x1]
	subs	x3, x3, x2
	mov	x2, 0
	bne	.L29
	ldp	x19, x20, [sp, 128]
	ldp	x21, x22, [sp, 144]
	ldp	x23, x24, [sp, 160]
	ldp	x25, x26, [sp, 176]
	ldp	x27, x28, [sp, 192]
	ldp	x29, x30, [sp, 112]
	add	sp, sp, 208
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
.L26:
	.cfi_restore_state
	mov	w0, 1
	b	.L21
.L29:
	bl	__stack_chk_fail
	.cfi_endproc
.LFE2:
	.size	uECC_sign, .-uECC_sign
	.align	2
	.global	uECC_verify
	.type	uECC_verify, %function
uECC_verify:
.LFB4:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	stp	x27, x28, [sp, 80]
	sub	sp, sp, #544
	.cfi_def_cfa_offset 640
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
	mov	x23, x0
	str	x1, [sp, 8]
	str	w2, [sp, 16]
	mov	x22, x3
	mov	x19, x4
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 536]
	mov	x1, 0
	ldrsb	w24, [x4]
	ldrsh	w0, [x4, 2]
	add	w21, w0, 62
	adds	w0, w0, 31
	csel	w21, w21, w0, mi
	sbfx	x21, x21, 5, 8
	sub	w28, w21, #1
	sxtw	x0, w28
	add	x1, sp, 152
	str	wzr, [x1, x0, lsl 2]
	add	x25, sp, 344
	str	wzr, [x25, x0, lsl 2]
	add	x26, sp, 376
	str	wzr, [x26, x0, lsl 2]
	add	x20, sp, 472
	ldrsb	w2, [x4, 1]
	mov	x1, x23
	mov	x0, x20
	bl	uECC_vli_bytesToNative
	sbfiz	x27, x24, 2, 32
	add	x20, x20, x27
	ldrsb	w2, [x19, 1]
	add	x1, x23, w2, sxtw
	mov	x0, x20
	bl	uECC_vli_bytesToNative
	ldrsb	w2, [x19, 1]
	mov	x1, x22
	mov	x0, x25
	bl	uECC_vli_bytesToNative
	ldrsb	w2, [x19, 1]
	add	x1, x22, w2, sxtw
	mov	x0, x26
	bl	uECC_vli_bytesToNative
	mov	w1, w24
	mov	x0, x25
	bl	uECC_vli_isZero
	mov	w1, 0
	cbz	w0, .L43
.L30:
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 536]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	bne	.L44
	mov	w0, w1
	add	sp, sp, 544
	.cfi_remember_state
	.cfi_def_cfa_offset 96
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldp	x29, x30, [sp], 96
	.cfi_restore 30
	.cfi_restore 29
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
.L43:
	.cfi_restore_state
	mov	w1, w24
	mov	x0, x26
	bl	uECC_vli_isZero
	mov	w1, 0
	cbnz	w0, .L30
	add	x22, x19, 36
	mov	w2, w21
	mov	x1, x25
	mov	x0, x22
	bl	uECC_vli_cmp_unsafe
	sxtb	w0, w0
	mov	w1, 0
	cmp	w0, 1
	bne	.L30
	mov	w2, w21
	mov	x1, x26
	mov	x0, x22
	bl	uECC_vli_cmp_unsafe
	sxtb	w0, w0
	mov	w1, 0
	cmp	w0, 1
	bne	.L30
	add	x23, sp, 120
	mov	w3, w21
	mov	x2, x22
	mov	x1, x26
	mov	x0, x23
	bl	uECC_vli_modInv
	add	x25, sp, 56
	str	wzr, [x25, w28, sxtw 2]
	mov	x3, x19
	ldr	w2, [sp, 16]
	ldr	x1, [sp, 8]
	mov	x0, x25
	bl	bits2int
	mov	w4, w21
	mov	x3, x22
	mov	x2, x23
	mov	x1, x25
	mov	x0, x25
	bl	uECC_vli_modMult
	add	x0, sp, 88
	mov	w4, w21
	mov	x3, x22
	mov	x2, x23
	add	x1, sp, 344
	str	x0, [sp, 16]
	bl	uECC_vli_modMult
	add	x0, sp, 472
	add	x26, sp, 408
	mov	w2, w24
	mov	x1, x0
	str	x0, [sp, 24]
	mov	x0, x26
	bl	uECC_vli_set
	add	x28, x26, x27
	mov	w2, w24
	mov	x1, x20
	mov	x0, x28
	bl	uECC_vli_set
	add	x1, x19, 68
	add	x0, sp, 216
	mov	w2, w24
	str	x1, [sp, 8]
	mov	x20, x0
	bl	uECC_vli_set
	add	x0, sp, 248
	mov	w2, w24
	ldr	x3, [sp, 8]
	add	x1, x3, x27
	str	x0, [sp, 32]
	bl	uECC_vli_set
	add	x2, x19, 4
	mov	w4, w24
	str	x2, [sp, 40]
	mov	x3, x2
	mov	x2, x20
	mov	x1, x26
	mov	x0, x23
	bl	uECC_vli_modSub
	mov	x4, x19
	mov	x3, x28
	mov	x2, x26
	ldr	x1, [sp, 32]
	mov	x0, x20
	bl	XYcZ_add
	mov	w3, w24
	ldr	x2, [sp, 40]
	mov	x1, x23
	mov	x0, x23
	bl	uECC_vli_modInv
	mov	x3, x19
	mov	x2, x23
	mov	x1, x28
	mov	x0, x26
	bl	apply_z
	add	x20, sp, 312
	str	xzr, [sp, 312]
	ldr	x3, [sp, 8]
	str	x3, [sp, 320]
	ldr	x1, [sp, 24]
	str	x1, [sp, 328]
	str	x26, [sp, 336]
	mov	w1, w21
	mov	x0, x25
	bl	uECC_vli_numBits
	mov	w28, w0
	sxth	w26, w0
	mov	w1, w21
	ldr	x0, [sp, 16]
	bl	uECC_vli_numBits
	cmp	w26, w0, sxth
	csel	w0, w0, w28, lt
	and	w26, w0, 65535
	sub	w0, w26, #1
	sxth	w28, w0
	mov	w1, w28
	mov	x0, x25
	bl	uECC_vli_testBit
	mov	w25, w0
	mov	w1, w28
	ldr	x0, [sp, 16]
	bl	uECC_vli_testBit
	cmp	w0, 0
	cset	w0, ne
	cmp	w25, 0
	cset	w1, ne
	orr	w0, w1, w0, lsl 1
	ldr	x20, [x20, w0, sxtw 3]
	mov	w2, w24
	mov	x1, x20
	add	x0, sp, 152
	bl	uECC_vli_set
	mov	w2, w24
	add	x1, x20, x27
	add	x0, sp, 184
	bl	uECC_vli_set
	mov	w1, w24
	mov	x0, x23
	bl	uECC_vli_clear
	mov	w0, 1
	str	w0, [sp, 120]
	sub	w26, w26, #2
	sxth	w20, w26
	tbnz	x26, 15, .L32
	mov	x26, x23
	add	x0, sp, 184
	str	x0, [sp, 8]
	add	x28, sp, 152
	add	x0, sp, 56
	str	x0, [sp, 16]
	add	x0, sp, 88
	str	x0, [sp, 24]
	b	.L34
.L33:
	sub	w0, w20, #1
	sxth	w20, w0
	tbnz	x0, 15, .L32
.L34:
	ldr	x4, [x19, 168]
	mov	x3, x19
	mov	x2, x26
	ldr	x1, [sp, 8]
	mov	x0, x28
	blr	x4
	mov	w1, w20
	ldr	x0, [sp, 16]
	bl	uECC_vli_testBit
	mov	w23, w0
	mov	w1, w20
	ldr	x0, [sp, 24]
	bl	uECC_vli_testBit
	cmp	w0, 0
	cset	w0, ne
	cmp	w23, 0
	cset	w1, ne
	orr	w0, w1, w0, lsl 1
	uxtw	x0, w0
	add	x1, sp, 312
	ldr	x25, [x1, x0, lsl 3]
	cbz	x25, .L33
	add	x23, sp, 216
	mov	w2, w24
	mov	x1, x25
	mov	x0, x23
	bl	uECC_vli_set
	add	x0, sp, 248
	mov	w2, w24
	add	x1, x25, x27
	mov	x25, x0
	bl	uECC_vli_set
	mov	x3, x19
	mov	x2, x26
	mov	x1, x25
	mov	x0, x23
	bl	apply_z
	add	x0, sp, 280
	mov	w4, w24
	ldr	x3, [sp, 40]
	mov	x2, x23
	mov	x1, x28
	str	x0, [sp, 32]
	bl	uECC_vli_modSub
	mov	x4, x19
	ldr	x3, [sp, 8]
	mov	x2, x28
	mov	x1, x25
	mov	x0, x23
	bl	XYcZ_add
	mov	x3, x19
	ldr	x2, [sp, 32]
	mov	x1, x26
	mov	x0, x26
	bl	uECC_vli_modMult_fast
	b	.L33
.L32:
	add	x20, sp, 120
	mov	w3, w24
	ldr	x2, [sp, 40]
	mov	x1, x20
	mov	x0, x20
	bl	uECC_vli_modInv
	add	x0, sp, 152
	mov	x3, x19
	mov	x2, x20
	add	x1, sp, 184
	mov	x19, x0
	bl	apply_z
	mov	w2, w21
	mov	x1, x19
	mov	x0, x22
	bl	uECC_vli_cmp_unsafe
	sxtb	w0, w0
	cmp	w0, 1
	bne	.L45
.L35:
	mov	w2, w24
	add	x1, sp, 344
	add	x0, sp, 152
	bl	uECC_vli_equal
	cmp	w0, 0
	cset	w1, eq
	b	.L30
.L45:
	mov	x0, x19
	mov	w3, w21
	mov	x2, x22
	mov	x1, x19
	bl	uECC_vli_sub
	b	.L35
.L44:
	bl	__stack_chk_fail
	.cfi_endproc
.LFE4:
	.size	uECC_verify, .-uECC_verify
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
