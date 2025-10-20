	.arch armv8-a
	.file	"tinycrypt_ecc_dsa.c"
	.text
	.align	2
	.p2align 4,,11
	.type	bits2int, %function
bits2int:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	ldrsh	w5, [x3, 2]
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -32
	.cfi_offset 22, -24
	mov	x21, x1
	add	w4, w5, 62
	adds	w1, w5, 31
	stp	x19, x20, [sp, 16]
	csel	w4, w4, w1, mi
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	add	w19, w5, 14
	adds	w5, w5, 7
	csel	w19, w19, w5, mi
	sbfx	x20, x4, 5, 8
	stp	x23, x24, [sp, 48]
	.cfi_offset 23, -16
	.cfi_offset 24, -8
	mov	x23, x3
	asr	w19, w19, 3
	cmp	w19, w2
	mov	x22, x0
	csel	w19, w19, w2, ls
	asr	w24, w4, 5
	mov	w1, w20
	bl	uECC_vli_clear
	mov	w2, w19
	mov	x0, x22
	mov	x1, x21
	bl	uECC_vli_bytesToNative
	ldrsh	w0, [x23, 2]
	lsl	w19, w19, 3
	cmp	w19, w0
	bls	.L1
	sub	w6, w19, w0
	add	x4, x22, w24, uxtw 2
	mov	w9, 32
	mov	w8, 0
	sub	w9, w9, w6
	cmp	x22, x4
	bcs	.L8
	.p2align 3,,7
.L7:
	ldr	w7, [x4, -4]
	lsr	w5, w7, w6
	orr	w5, w5, w8
	str	w5, [x4, -4]!
	lsl	w8, w7, w9
	cmp	x22, x4
	bcc	.L7
.L8:
	add	x23, x23, 36
	mov	w2, w20
	mov	x0, x23
	mov	x1, x22
	bl	uECC_vli_cmp_unsafe
	sxtb	w0, w0
	cmp	w0, 1
	bne	.L12
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
	.p2align 2,,3
.L12:
	.cfi_restore_state
	mov	w3, w20
	mov	x2, x23
	ldp	x19, x20, [sp, 16]
	mov	x1, x22
	ldp	x23, x24, [sp, 48]
	mov	x0, x22
	ldp	x21, x22, [sp, 32]
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
	b	uECC_vli_sub
	.cfi_endproc
.LFE0:
	.size	bits2int, .-bits2int
	.align	2
	.p2align 4,,11
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
	.cfi_offset 19, -80
	.cfi_offset 20, -72
	mov	x20, x3
	mov	x19, x5
	adrp	x3, :got:__stack_chk_guard
	ldr	x3, [x3, :got_lo12:__stack_chk_guard]
	str	x1, [sp]
	str	w2, [sp, 8]
	stp	x21, x22, [sp, 208]
	.cfi_offset 21, -64
	.cfi_offset 22, -56
	mov	x22, x4
	stp	x23, x24, [sp, 224]
	.cfi_offset 23, -48
	.cfi_offset 24, -40
	mov	x23, x0
	ldrsh	w24, [x5, 2]
	stp	x25, x26, [sp, 240]
	mov	x0, x20
	.cfi_offset 25, -32
	.cfi_offset 26, -24
	add	x26, sp, 40
	stp	x27, x28, [sp, 256]
	.cfi_offset 27, -16
	.cfi_offset 28, -8
	add	x25, sp, 72
	ldr	x2, [x3]
	str	x2, [sp, 168]
	mov	x2, 0
	ldrsb	w27, [x5]
	stp	x26, x25, [sp, 24]
	mov	w1, w27
	bl	uECC_vli_isZero
	cbz	w0, .L14
.L16:
	mov	w0, 0
.L13:
	adrp	x1, :got:__stack_chk_guard
	ldr	x1, [x1, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 168]
	ldr	x2, [x1]
	subs	x3, x3, x2
	mov	x2, 0
	bne	.L24
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
	.p2align 2,,3
.L14:
	.cfi_restore_state
	adds	w0, w24, 31
	add	w21, w24, 62
	csel	w21, w21, w0, mi
	add	x28, x19, 36
	mov	x0, x28
	mov	x1, x20
	sbfx	x21, x21, 5, 8
	mov	w2, w21
	bl	uECC_vli_cmp
	sxtb	w6, w0
	cmp	w6, 1
	bne	.L16
	mov	x3, x19
	mov	x2, x25
	mov	x1, x26
	mov	x0, x20
	str	w6, [sp, 12]
	bl	regularize_k
	cmp	w0, 0
	add	x1, sp, 24
	cset	x2, eq
	add	w4, w24, 1
	mov	x5, x19
	add	x24, sp, 104
	mov	x3, 0
	mov	x0, x24
	ldr	x2, [x1, x2, lsl 3]
	add	x1, x19, 68
	bl	EccPoint_mult
	mov	w1, w27
	mov	x0, x24
	bl	uECC_vli_isZero
	cbnz	w0, .L16
	bl	uECC_get_rng
	ldr	w6, [sp, 12]
	cbz	x0, .L25
	mov	w2, w21
	mov	x1, x28
	mov	x0, x26
	bl	uECC_generate_random_int
	cbz	w0, .L16
.L18:
	mov	w4, w21
	mov	x3, x28
	mov	x2, x26
	mov	x1, x20
	mov	x0, x20
	bl	uECC_vli_modMult
	mov	w3, w21
	mov	x2, x28
	mov	x1, x20
	mov	x0, x20
	bl	uECC_vli_modInv
	mov	w4, w21
	mov	x3, x28
	mov	x2, x26
	mov	x1, x20
	mov	x0, x20
	bl	uECC_vli_modMult
	ldrsb	w1, [x19, 1]
	mov	x2, x24
	mov	x0, x22
	bl	uECC_vli_nativeToBytes
	ldrsh	w3, [x19, 2]
	mov	x1, x23
	mov	x0, x26
	add	w2, w3, 14
	adds	w3, w3, 7
	csel	w2, w2, w3, mi
	asr	w2, w2, 3
	bl	uECC_vli_bytesToNative
	sub	w3, w21, #1
	mov	w2, w27
	mov	x1, x24
	mov	x0, x25
	str	wzr, [x25, w3, sxtw 2]
	bl	uECC_vli_set
	mov	w4, w21
	mov	x3, x28
	mov	x2, x25
	mov	x1, x26
	mov	x0, x25
	bl	uECC_vli_modMult
	ldr	x1, [sp]
	mov	x3, x19
	ldr	w2, [sp, 8]
	mov	x0, x26
	bl	bits2int
	mov	w4, w21
	mov	x3, x28
	mov	x2, x25
	mov	x1, x26
	mov	x0, x25
	bl	uECC_vli_modAdd
	mov	x2, x20
	mov	w4, w21
	mov	x3, x28
	mov	x1, x25
	mov	x0, x25
	bl	uECC_vli_modMult
	mov	w1, w21
	mov	x0, x25
	bl	uECC_vli_numBits
	ldrsb	w1, [x19, 1]
	lsl	w2, w1, 3
	cmp	w2, w0, sxth
	blt	.L16
	add	x0, x22, w1, sxtw
	mov	x2, x25
	bl	uECC_vli_nativeToBytes
	mov	w0, 1
	b	.L13
	.p2align 2,,3
.L25:
	mov	w1, w21
	mov	x0, x26
	str	w6, [sp, 12]
	bl	uECC_vli_clear
	ldr	w6, [sp, 12]
	str	w6, [sp, 40]
	b	.L18
.L24:
	bl	__stack_chk_fail
	.cfi_endproc
.LFE1:
	.size	uECC_sign_with_k, .-uECC_sign_with_k
	.align	2
	.p2align 4,,11
	.global	uECC_sign
	.type	uECC_sign, %function
uECC_sign:
.LFB2:
	.cfi_startproc
	sub	sp, sp, #384
	.cfi_def_cfa_offset 384
	adrp	x5, :got:__stack_chk_guard
	ldr	x5, [x5, :got_lo12:__stack_chk_guard]
	stp	x29, x30, [sp, 288]
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	add	x29, sp, 288
	stp	x3, x0, [sp]
	str	x1, [sp, 16]
	str	w2, [sp, 28]
	stp	x19, x20, [sp, 304]
	.cfi_offset 19, -80
	.cfi_offset 20, -72
	mov	x20, x4
	stp	x21, x22, [sp, 320]
	.cfi_offset 21, -64
	.cfi_offset 22, -56
	add	x21, sp, 56
	mov	w22, 64
	stp	x23, x24, [sp, 336]
	stp	x25, x26, [sp, 352]
	.cfi_offset 23, -48
	.cfi_offset 24, -40
	.cfi_offset 25, -32
	.cfi_offset 26, -24
	add	x26, sp, 152
	stp	x27, x28, [sp, 368]
	.cfi_offset 27, -16
	.cfi_offset 28, -8
	add	x27, x4, 36
	add	x28, sp, 88
	ldr	x0, [x5]
	str	x0, [sp, 280]
	mov	x0, 0
	b	.L29
	.p2align 2,,3
.L30:
	subs	w22, w22, #1
	beq	.L27
.L29:
	bl	uECC_get_rng
	mov	x2, x0
	cbz	x0, .L27
	mov	x0, x26
	mov	w1, 64
	blr	x2
	cbz	w0, .L27
	ldrsh	w4, [x20, 2]
	mov	x2, x27
	mov	x1, x26
	mov	x0, x21
	add	w3, w4, 62
	adds	w4, w4, 31
	csel	w3, w3, w4, mi
	add	x24, sp, 120
	ubfx	x3, x3, 5, 8
	bl	uECC_vli_mmod
	ldrsb	w25, [x20]
	mov	x0, x21
	ldrsh	w23, [x20, 2]
	mov	w1, w25
	stp	x28, x24, [sp, 40]
	bl	uECC_vli_isZero
	cbnz	w0, .L30
	adds	w0, w23, 31
	add	w19, w23, 62
	csel	w19, w19, w0, mi
	mov	x1, x21
	mov	x0, x27
	sbfx	x19, x19, 5, 8
	mov	w2, w19
	bl	uECC_vli_cmp
	sxtb	w6, w0
	cmp	w6, 1
	bne	.L30
	mov	x3, x20
	mov	x2, x24
	mov	x1, x28
	mov	x0, x21
	str	w6, [sp, 24]
	bl	regularize_k
	cmp	w0, 0
	add	x1, sp, 40
	cset	x2, eq
	add	w4, w23, 1
	mov	x5, x20
	add	x23, sp, 216
	mov	x3, 0
	mov	x0, x23
	ldr	x2, [x1, x2, lsl 3]
	add	x1, x20, 68
	bl	EccPoint_mult
	mov	w1, w25
	mov	x0, x23
	bl	uECC_vli_isZero
	cbnz	w0, .L30
	bl	uECC_get_rng
	ldr	w6, [sp, 24]
	cbz	x0, .L46
	mov	w2, w19
	mov	x1, x27
	mov	x0, x28
	bl	uECC_generate_random_int
	cbz	w0, .L30
.L32:
	mov	w4, w19
	mov	x3, x27
	mov	x2, x28
	mov	x1, x21
	mov	x0, x21
	bl	uECC_vli_modMult
	mov	w3, w19
	mov	x2, x27
	mov	x1, x21
	mov	x0, x21
	bl	uECC_vli_modInv
	mov	w4, w19
	mov	x3, x27
	mov	x2, x28
	mov	x1, x21
	mov	x0, x21
	bl	uECC_vli_modMult
	ldr	x0, [sp]
	mov	x2, x23
	ldrsb	w1, [x20, 1]
	bl	uECC_vli_nativeToBytes
	ldrsh	w3, [x20, 2]
	mov	x0, x28
	ldr	x1, [sp, 8]
	add	w2, w3, 14
	adds	w3, w3, 7
	csel	w2, w2, w3, mi
	asr	w2, w2, 3
	bl	uECC_vli_bytesToNative
	sub	w3, w19, #1
	mov	w2, w25
	mov	x1, x23
	mov	x0, x24
	str	wzr, [x24, w3, sxtw 2]
	bl	uECC_vli_set
	mov	w4, w19
	mov	x3, x27
	mov	x2, x24
	mov	x1, x28
	mov	x0, x24
	bl	uECC_vli_modMult
	ldr	x1, [sp, 16]
	mov	x3, x20
	ldr	w2, [sp, 28]
	mov	x0, x28
	bl	bits2int
	mov	w4, w19
	mov	x3, x27
	mov	x2, x24
	mov	x1, x28
	mov	x0, x24
	bl	uECC_vli_modAdd
	mov	x2, x21
	mov	w4, w19
	mov	x3, x27
	mov	x1, x24
	mov	x0, x24
	bl	uECC_vli_modMult
	mov	w1, w19
	mov	x0, x24
	bl	uECC_vli_numBits
	ldrsb	w1, [x20, 1]
	lsl	w2, w1, 3
	cmp	w2, w0, sxth
	blt	.L30
	ldr	x0, [sp]
	mov	x2, x24
	add	x0, x0, w1, sxtw
	bl	uECC_vli_nativeToBytes
	mov	w0, 1
	b	.L26
	.p2align 2,,3
.L27:
	mov	w0, 0
.L26:
	adrp	x1, :got:__stack_chk_guard
	ldr	x1, [x1, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 280]
	ldr	x2, [x1]
	subs	x3, x3, x2
	mov	x2, 0
	bne	.L47
	ldp	x29, x30, [sp, 288]
	ldp	x19, x20, [sp, 304]
	ldp	x21, x22, [sp, 320]
	ldp	x23, x24, [sp, 336]
	ldp	x25, x26, [sp, 352]
	ldp	x27, x28, [sp, 368]
	add	sp, sp, 384
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
.L46:
	.cfi_restore_state
	mov	w1, w19
	mov	x0, x28
	str	w6, [sp, 24]
	bl	uECC_vli_clear
	ldr	w6, [sp, 24]
	str	w6, [sp, 88]
	b	.L32
.L47:
	bl	__stack_chk_fail
	.cfi_endproc
.LFE2:
	.size	uECC_sign, .-uECC_sign
	.align	2
	.p2align 4,,11
	.global	uECC_verify
	.type	uECC_verify, %function
uECC_verify:
.LFB4:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	w7, w2
	mov	x5, x0
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -80
	.cfi_offset 20, -72
	mov	x19, x4
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -64
	.cfi_offset 22, -56
	mov	x21, x3
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	stp	x27, x28, [sp, 80]
	sub	sp, sp, #576
	.cfi_def_cfa_offset 672
	.cfi_offset 23, -48
	.cfi_offset 24, -40
	.cfi_offset 25, -32
	.cfi_offset 26, -24
	.cfi_offset 27, -16
	.cfi_offset 28, -8
	add	x22, sp, 376
	ldrsh	w4, [x4, 2]
	adrp	x6, :got:__stack_chk_guard
	ldr	x6, [x6, :got_lo12:__stack_chk_guard]
	add	w20, w4, 62
	adds	w4, w4, 31
	ldrsb	w2, [x19, 1]
	csel	w20, w20, w4, mi
	add	x24, sp, 408
	add	x26, sp, 184
	str	x1, [sp, 24]
	sbfx	x20, x20, 5, 8
	str	w7, [sp, 32]
	sub	w4, w20, #1
	add	x25, sp, 504
	ldr	x0, [x6]
	str	x0, [sp, 568]
	mov	x0, 0
	ldrsb	w23, [x19]
	sxtw	x28, w4
	mov	x1, x5
	mov	x0, x25
	str	x5, [sp, 8]
	sbfiz	x27, x23, 2, 32
	str	wzr, [x26, x28, lsl 2]
	str	wzr, [x22, x28, lsl 2]
	str	wzr, [x24, x28, lsl 2]
	bl	uECC_vli_bytesToNative
	ldr	x5, [sp, 8]
	add	x0, x25, x27
	ldrsb	w2, [x19, 1]
	str	x0, [sp, 16]
	add	x1, x5, w2, sxtw
	bl	uECC_vli_bytesToNative
	ldrsb	w2, [x19, 1]
	mov	x1, x21
	mov	x0, x22
	bl	uECC_vli_bytesToNative
	ldrsb	w2, [x19, 1]
	mov	x0, x24
	add	x1, x21, w2, sxtw
	bl	uECC_vli_bytesToNative
	mov	w1, w23
	mov	x0, x22
	bl	uECC_vli_isZero
	cbz	w0, .L49
.L51:
	mov	w0, 0
.L48:
	adrp	x1, :got:__stack_chk_guard
	ldr	x1, [x1, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 568]
	ldr	x2, [x1]
	subs	x3, x3, x2
	mov	x2, 0
	bne	.L65
	add	sp, sp, 576
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
	.p2align 2,,3
.L49:
	.cfi_restore_state
	mov	w1, w23
	mov	x0, x24
	bl	uECC_vli_isZero
	cbnz	w0, .L51
	add	x0, x19, 36
	mov	w2, w20
	mov	x1, x22
	str	x0, [sp, 8]
	bl	uECC_vli_cmp_unsafe
	sxtb	w0, w0
	cmp	w0, 1
	bne	.L51
	ldr	x0, [sp, 8]
	mov	w2, w20
	mov	x1, x24
	bl	uECC_vli_cmp_unsafe
	sxtb	w5, w0
	cmp	w5, 1
	bne	.L51
	ldr	x2, [sp, 8]
	add	x21, sp, 152
	mov	x1, x24
	mov	x0, x21
	mov	w3, w20
	str	w5, [sp, 56]
	bl	uECC_vli_modInv
	add	x24, sp, 88
	ldr	x1, [sp, 24]
	mov	x0, x24
	ldr	w2, [sp, 32]
	mov	x3, x19
	str	wzr, [x24, x28, lsl 2]
	bl	bits2int
	str	x24, [sp, 32]
	ldr	x28, [sp, 8]
	mov	x1, x24
	mov	x0, x24
	mov	w4, w20
	mov	x3, x28
	mov	x2, x21
	bl	uECC_vli_modMult
	mov	w4, w20
	mov	x3, x28
	add	x2, sp, 120
	mov	x1, x22
	mov	x0, x2
	str	x2, [sp, 24]
	mov	x2, x21
	bl	uECC_vli_modMult
	add	x2, sp, 440
	mov	x1, x25
	mov	x24, x2
	mov	x0, x2
	mov	w2, w23
	bl	uECC_vli_set
	ldr	x1, [sp, 16]
	add	x3, x24, x27
	mov	x0, x3
	mov	w2, w23
	str	x3, [sp, 16]
	str	x24, [sp, 48]
	bl	uECC_vli_set
	add	x0, x19, 68
	add	x24, sp, 248
	mov	x28, x0
	mov	x1, x0
	mov	w2, w23
	mov	x0, x24
	bl	uECC_vli_set
	add	x4, sp, 280
	add	x1, x28, x27
	mov	x0, x4
	mov	w2, w23
	str	x4, [sp, 72]
	bl	uECC_vli_set
	ldr	x1, [sp, 48]
	add	x4, x19, 4
	mov	x5, x4
	mov	x2, x24
	mov	x3, x5
	mov	w4, w23
	mov	x0, x21
	str	x5, [sp, 64]
	bl	uECC_vli_modSub
	ldr	x3, [sp, 16]
	mov	x4, x19
	ldr	x2, [sp, 48]
	mov	x0, x24
	ldr	x1, [sp, 72]
	bl	XYcZ_add
	ldr	x2, [sp, 64]
	mov	w3, w23
	mov	x1, x21
	mov	x0, x21
	bl	uECC_vli_modInv
	ldr	x1, [sp, 16]
	mov	x3, x19
	ldr	x0, [sp, 48]
	mov	x2, x21
	bl	apply_z
	stp	xzr, x28, [sp, 344]
	add	x3, sp, 344
	ldr	x0, [sp, 32]
	mov	w1, w20
	ldr	x2, [sp, 48]
	str	x3, [sp, 40]
	stp	x25, x2, [sp, 360]
	bl	uECC_vli_numBits
	sxth	w28, w0
	ldr	x0, [sp, 24]
	mov	w1, w20
	bl	uECC_vli_numBits
	cmp	w28, w0, sxth
	csel	w1, w0, w28, lt
	ldr	x0, [sp, 32]
	and	w25, w1, 65535
	sub	w28, w25, #1
	sxth	w28, w28
	mov	w1, w28
	bl	uECC_vli_testBit
	mov	w1, w28
	mov	w28, w0
	ldr	x0, [sp, 24]
	bl	uECC_vli_testBit
	cmp	w0, 0
	cset	w1, ne
	cmp	w28, 0
	cset	w3, ne
	mov	w2, w23
	orr	w1, w3, w1, lsl 1
	mov	x0, x26
	ldr	x3, [sp, 40]
	sxtw	x1, w1
	ldr	x1, [x3, x1, lsl 3]
	str	x1, [sp, 48]
	bl	uECC_vli_set
	ldr	x1, [sp, 48]
	mov	w2, w23
	add	x0, sp, 216
	str	x0, [sp, 16]
	add	x1, x1, x27
	bl	uECC_vli_set
	mov	w1, w23
	mov	x0, x21
	bl	uECC_vli_clear
	ldr	w5, [sp, 56]
	sub	w1, w25, #2
	str	w5, [sp, 152]
	sxth	w25, w1
	tbnz	x1, 15, .L52
	add	x0, sp, 312
	str	x0, [sp, 48]
	.p2align 3,,7
.L54:
	ldr	x1, [sp, 16]
	mov	x2, x21
	ldr	x4, [x19, 168]
	mov	x3, x19
	mov	x0, x26
	blr	x4
	ldr	x0, [sp, 32]
	mov	w1, w25
	bl	uECC_vli_testBit
	mov	w28, w0
	ldr	x0, [sp, 24]
	mov	w1, w25
	bl	uECC_vli_testBit
	cmp	w0, 0
	cset	w0, ne
	cmp	w28, 0
	cset	w1, ne
	ldr	x2, [sp, 40]
	orr	w0, w1, w0, lsl 1
	ldr	x1, [x2, x0, lsl 3]
	cbz	x1, .L53
	mov	w2, w23
	mov	x0, x24
	str	x1, [sp, 56]
	bl	uECC_vli_set
	ldr	x1, [sp, 56]
	mov	w2, w23
	ldr	x28, [sp, 72]
	add	x1, x1, x27
	mov	x0, x28
	bl	uECC_vli_set
	mov	x3, x19
	mov	x2, x21
	mov	x1, x28
	mov	x0, x24
	bl	apply_z
	ldr	x0, [sp, 48]
	mov	w4, w23
	ldr	x3, [sp, 64]
	mov	x2, x24
	mov	x1, x26
	bl	uECC_vli_modSub
	ldr	x3, [sp, 16]
	mov	x2, x26
	mov	x1, x28
	mov	x0, x24
	mov	x4, x19
	bl	XYcZ_add
	ldr	x2, [sp, 48]
	mov	x3, x19
	mov	x1, x21
	mov	x0, x21
	bl	uECC_vli_modMult_fast
.L53:
	sub	w25, w25, #1
	sxth	w25, w25
	cmn	w25, #1
	bne	.L54
.L52:
	ldr	x2, [sp, 64]
	mov	w3, w23
	mov	x1, x21
	mov	x0, x21
	bl	uECC_vli_modInv
	ldr	x1, [sp, 16]
	mov	x3, x19
	mov	x2, x21
	mov	x0, x26
	bl	apply_z
	ldr	x19, [sp, 8]
	mov	w2, w20
	mov	x1, x26
	mov	x0, x19
	bl	uECC_vli_cmp_unsafe
	sxtb	w0, w0
	cmp	w0, 1
	beq	.L55
	mov	w3, w20
	mov	x2, x19
	mov	x1, x26
	mov	x0, x26
	bl	uECC_vli_sub
.L55:
	mov	w2, w23
	mov	x1, x22
	mov	x0, x26
	bl	uECC_vli_equal
	cmp	w0, 0
	cset	w0, eq
	b	.L48
.L65:
	bl	__stack_chk_fail
	.cfi_endproc
.LFE4:
	.size	uECC_verify, .-uECC_verify
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
