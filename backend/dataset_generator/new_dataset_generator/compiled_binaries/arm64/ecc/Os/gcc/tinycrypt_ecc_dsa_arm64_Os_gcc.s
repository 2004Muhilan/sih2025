	.arch armv8-a
	.file	"tinycrypt_ecc_dsa.c"
	.text
	.align	2
	.type	bits2int, %function
bits2int:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -64
	.cfi_offset 20, -56
	ldrsh	w19, [x3, 2]
	stp	x23, x24, [sp, 48]
	.cfi_offset 23, -32
	.cfi_offset 24, -24
	mov	x23, x1
	add	w4, w19, 31
	add	w19, w19, 7
	mov	w1, 8
	mov	w24, 32
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -48
	.cfi_offset 22, -40
	mov	x22, x3
	sdiv	w19, w19, w1
	str	x25, [sp, 64]
	.cfi_offset 25, -16
	mov	x21, x0
	sdiv	w20, w4, w24
	cmp	w19, w2
	csel	w19, w19, w2, ls
	sxtb	w25, w20
	mov	w1, w25
	bl	uECC_vli_clear
	mov	w2, w19
	mov	x0, x21
	mov	x1, x23
	bl	uECC_vli_bytesToNative
	ldrsh	w0, [x22, 2]
	lsl	w19, w19, 3
	cmp	w19, w0
	bls	.L1
	sub	w19, w19, w0
	add	x4, x21, w20, uxtw 2
	sub	w24, w24, w19
	mov	w1, 0
.L4:
	cmp	x21, x4
	bcc	.L5
	add	x22, x22, 36
	mov	w2, w25
	mov	x1, x21
	mov	x0, x22
	bl	uECC_vli_cmp_unsafe
	sxtb	w0, w0
	cmp	w0, 1
	beq	.L1
	ldp	x19, x20, [sp, 16]
	mov	w3, w25
	ldp	x23, x24, [sp, 48]
	mov	x2, x22
	ldr	x25, [sp, 64]
	mov	x1, x21
	mov	x0, x21
	ldp	x21, x22, [sp, 32]
	ldp	x29, x30, [sp], 80
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 25
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	b	uECC_vli_sub
.L5:
	.cfi_restore_state
	ldr	w2, [x4, -4]
	lsr	w0, w2, w19
	orr	w0, w0, w1
	lsl	w1, w2, w24
	str	w0, [x4, -4]!
	b	.L4
.L1:
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldr	x25, [sp, 64]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 25
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	bits2int, .-bits2int
	.align	2
	.global	uECC_sign_with_k
	.type	uECC_sign_with_k, %function
uECC_sign_with_k:
.LFB1:
	.cfi_startproc
	sub	sp, sp, #288
	.cfi_def_cfa_offset 288
	stp	x29, x30, [sp, 192]
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	add	x29, sp, 192
	stp	x0, x1, [sp, 8]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	stp	x19, x20, [sp, 208]
	.cfi_offset 19, -80
	.cfi_offset 20, -72
	add	x20, sp, 88
	stp	x21, x22, [sp, 224]
	.cfi_offset 21, -64
	.cfi_offset 22, -56
	mov	x22, x3
	mov	x21, x5
	stp	x23, x24, [sp, 240]
	.cfi_offset 23, -48
	.cfi_offset 24, -40
	add	x23, sp, 56
	stp	x25, x26, [sp, 256]
	.cfi_offset 25, -32
	.cfi_offset 26, -24
	mov	x25, x4
	ldrsh	w26, [x5, 2]
	stp	x27, x28, [sp, 272]
	.cfi_offset 27, -16
	.cfi_offset 28, -8
	str	w2, [sp, 28]
	ldrsb	w28, [x5]
	ldr	x1, [x0]
	str	x1, [sp, 184]
	mov	x1, 0
	mov	x0, x3
	mov	w1, w28
	stp	x23, x20, [sp, 40]
	bl	uECC_vli_isZero
	cbz	w0, .L12
.L14:
	mov	w0, 0
.L11:
	adrp	x1, :got:__stack_chk_guard
	ldr	x1, [x1, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 184]
	ldr	x2, [x1]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L17
	bl	__stack_chk_fail
.L12:
	add	w19, w26, 31
	mov	w0, 32
	add	x24, x21, 36
	mov	x1, x22
	sdiv	w19, w19, w0
	mov	x0, x24
	sxtb	w19, w19
	mov	w2, w19
	bl	uECC_vli_cmp
	sxtb	w27, w0
	cmp	w27, 1
	bne	.L14
	mov	x3, x21
	mov	x2, x20
	mov	x1, x23
	mov	x0, x22
	bl	regularize_k
	cmp	w0, 0
	cset	x1, eq
	add	x0, sp, 40
	add	w4, w26, 1
	mov	x5, x21
	add	x26, sp, 120
	mov	x3, 0
	ldr	x2, [x0, x1, lsl 3]
	add	x1, x21, 68
	mov	x0, x26
	bl	EccPoint_mult
	mov	w1, w28
	mov	x0, x26
	bl	uECC_vli_isZero
	cbnz	w0, .L14
	bl	uECC_get_rng
	cbnz	x0, .L15
	mov	w1, w19
	mov	x0, x23
	bl	uECC_vli_clear
	str	w27, [sp, 56]
.L16:
	mov	w4, w19
	mov	x3, x24
	mov	x2, x23
	mov	x1, x22
	mov	x0, x22
	bl	uECC_vli_modMult
	mov	w3, w19
	mov	x2, x24
	mov	x1, x22
	mov	x0, x22
	bl	uECC_vli_modInv
	mov	w4, w19
	mov	x3, x24
	mov	x2, x23
	mov	x1, x22
	mov	x0, x22
	bl	uECC_vli_modMult
	ldrsb	w1, [x21, 1]
	mov	x2, x26
	mov	x0, x25
	bl	uECC_vli_nativeToBytes
	ldrsh	w0, [x21, 2]
	mov	w2, 8
	ldr	x1, [sp, 8]
	add	w0, w0, 7
	sdiv	w2, w0, w2
	mov	x0, x23
	bl	uECC_vli_bytesToNative
	sub	w0, w19, #1
	mov	w2, w28
	mov	x1, x26
	str	wzr, [x20, w0, sxtw 2]
	mov	x0, x20
	bl	uECC_vli_set
	mov	w4, w19
	mov	x3, x24
	mov	x2, x20
	mov	x1, x23
	mov	x0, x20
	bl	uECC_vli_modMult
	ldr	x1, [sp, 16]
	mov	x3, x21
	ldr	w2, [sp, 28]
	mov	x0, x23
	bl	bits2int
	mov	w4, w19
	mov	x3, x24
	mov	x2, x20
	mov	x1, x23
	mov	x0, x20
	bl	uECC_vli_modAdd
	mov	x2, x22
	mov	w4, w19
	mov	x3, x24
	mov	x1, x20
	mov	x0, x20
	bl	uECC_vli_modMult
	mov	w1, w19
	mov	x0, x20
	bl	uECC_vli_numBits
	ldrsb	w1, [x21, 1]
	lsl	w2, w1, 3
	cmp	w2, w0, sxth
	blt	.L14
	add	x0, x25, w1, sxtw
	mov	x2, x20
	bl	uECC_vli_nativeToBytes
	mov	w0, 1
	b	.L11
.L15:
	mov	w2, w19
	mov	x1, x24
	mov	x0, x23
	bl	uECC_generate_random_int
	cbnz	w0, .L16
	b	.L14
.L17:
	ldp	x29, x30, [sp, 192]
	ldp	x19, x20, [sp, 208]
	ldp	x21, x22, [sp, 224]
	ldp	x23, x24, [sp, 240]
	ldp	x25, x26, [sp, 256]
	ldp	x27, x28, [sp, 272]
	add	sp, sp, 288
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
	stp	x21, x22, [sp, 144]
	.cfi_offset 21, -64
	.cfi_offset 22, -56
	mov	x21, x0
	mov	x22, x1
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	stp	x19, x20, [sp, 128]
	.cfi_offset 19, -80
	.cfi_offset 20, -72
	mov	x19, x4
	stp	x23, x24, [sp, 160]
	.cfi_offset 23, -48
	.cfi_offset 24, -40
	mov	w23, w2
	mov	x24, x3
	stp	x25, x26, [sp, 176]
	.cfi_offset 25, -32
	.cfi_offset 26, -24
	add	x25, sp, 40
	add	x26, sp, 8
	stp	x27, x28, [sp, 192]
	.cfi_offset 27, -16
	.cfi_offset 28, -8
	add	x28, x4, 36
	mov	w20, 64
	ldr	x1, [x0]
	str	x1, [sp, 104]
	mov	x1, 0
	mov	w27, 32
.L25:
	bl	uECC_get_rng
	mov	x2, x0
	cbz	x0, .L23
	mov	x0, x25
	mov	w1, 64
	blr	x2
	cbz	w0, .L23
	ldrsh	w3, [x19, 2]
	mov	x2, x28
	mov	x1, x25
	mov	x0, x26
	add	w3, w3, 31
	sdiv	w3, w3, w27
	bl	uECC_vli_mmod
	mov	x5, x19
	mov	x4, x24
	mov	x3, x26
	mov	w2, w23
	mov	x1, x22
	mov	x0, x21
	bl	uECC_sign_with_k
	cbnz	w0, .L27
	subs	w20, w20, #1
	bne	.L25
.L23:
	mov	w0, 0
.L22:
	adrp	x1, :got:__stack_chk_guard
	ldr	x1, [x1, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 104]
	ldr	x2, [x1]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L26
	bl	__stack_chk_fail
.L27:
	mov	w0, 1
	b	.L22
.L26:
	ldp	x29, x30, [sp, 112]
	ldp	x19, x20, [sp, 128]
	ldp	x21, x22, [sp, 144]
	ldp	x23, x24, [sp, 160]
	ldp	x25, x26, [sp, 176]
	ldp	x27, x28, [sp, 192]
	add	sp, sp, 208
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
	.cfi_offset 19, -80
	.cfi_offset 20, -72
	mov	x19, x4
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -64
	.cfi_offset 22, -56
	mov	x22, x3
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	.cfi_offset 23, -48
	.cfi_offset 24, -40
	.cfi_offset 25, -32
	.cfi_offset 26, -24
	mov	x25, x0
	stp	x27, x28, [sp, 80]
	sub	sp, sp, #560
	.cfi_def_cfa_offset 656
	.cfi_offset 27, -16
	.cfi_offset 28, -8
	mov	x28, x1
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	str	w2, [sp, 8]
	ldrsh	w21, [x4, 2]
	add	x26, sp, 392
	ldr	x1, [x0]
	str	x1, [sp, 552]
	mov	x1, 0
	mov	w0, 32
	add	w21, w21, 31
	ldrsb	w2, [x4, 1]
	add	x23, sp, 168
	ldrsb	w20, [x4]
	mov	x1, x25
	sdiv	w21, w21, w0
	add	x0, sp, 360
	str	x0, [sp]
	sxtb	w21, w21
	sub	w24, w21, #1
	sbfiz	x24, x24, 2, 32
	str	wzr, [x0, x24]
	add	x0, sp, 488
	str	wzr, [x23, x24]
	str	wzr, [x26, x24]
	str	x0, [sp, 16]
	bl	uECC_vli_bytesToNative
	sbfiz	x0, x20, 2, 32
	str	x0, [sp, 48]
	ldr	x0, [sp, 16]
	ldrsb	w2, [x19, 1]
	ldrsb	x1, [x19, 1]
	add	x27, x0, w20, sxtw 2
	add	x1, x25, x1
	mov	x0, x27
	bl	uECC_vli_bytesToNative
	ldr	x0, [sp]
	mov	x1, x22
	ldrsb	w2, [x19, 1]
	bl	uECC_vli_bytesToNative
	ldrsb	w2, [x19, 1]
	mov	x0, x26
	ldrsb	x1, [x19, 1]
	add	x1, x22, x1
	bl	uECC_vli_bytesToNative
	ldr	x0, [sp]
	mov	w1, w20
	bl	uECC_vli_isZero
	cbz	w0, .L37
.L39:
	mov	w0, 0
.L36:
	adrp	x1, :got:__stack_chk_guard
	ldr	x1, [x1, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 552]
	ldr	x2, [x1]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L44
	bl	__stack_chk_fail
.L37:
	mov	w1, w20
	mov	x0, x26
	bl	uECC_vli_isZero
	cbnz	w0, .L39
	ldr	x1, [sp]
	add	x25, x19, 36
	mov	w2, w21
	mov	x0, x25
	bl	uECC_vli_cmp_unsafe
	sxtb	w0, w0
	cmp	w0, 1
	bne	.L39
	mov	w2, w21
	mov	x1, x26
	mov	x0, x25
	bl	uECC_vli_cmp_unsafe
	sxtb	w5, w0
	cmp	w5, 1
	bne	.L39
	add	x22, sp, 136
	mov	x1, x26
	mov	w3, w21
	mov	x2, x25
	mov	x0, x22
	str	w5, [sp, 56]
	bl	uECC_vli_modInv
	add	x26, sp, 72
	ldr	w2, [sp, 8]
	mov	x1, x28
	mov	x3, x19
	mov	x0, x26
	str	wzr, [x26, x24]
	add	x24, sp, 424
	bl	bits2int
	mov	w4, w21
	mov	x3, x25
	mov	x2, x22
	mov	x1, x26
	mov	x0, x26
	bl	uECC_vli_modMult
	ldr	x1, [sp]
	mov	w4, w21
	mov	x3, x25
	add	x0, sp, 104
	mov	x2, x22
	str	x0, [sp, 24]
	bl	uECC_vli_modMult
	ldr	x1, [sp, 16]
	mov	x0, x24
	mov	w2, w20
	bl	uECC_vli_set
	sbfiz	x0, x20, 2, 32
	mov	x1, x27
	add	x28, x24, x0
	mov	w2, w20
	mov	x0, x28
	bl	uECC_vli_set
	add	x0, x19, 68
	add	x27, sp, 232
	mov	x1, x0
	mov	w2, w20
	str	x0, [sp, 32]
	mov	x0, x27
	bl	uECC_vli_set
	add	x0, sp, 264
	str	x0, [sp, 8]
	ldr	x0, [sp, 32]
	sbfiz	x1, x20, 2, 32
	mov	w2, w20
	add	x1, x0, x1
	ldr	x0, [sp, 8]
	bl	uECC_vli_set
	add	x0, x19, 4
	mov	x1, x24
	mov	x3, x0
	mov	w4, w20
	mov	x2, x27
	str	x0, [sp, 40]
	mov	x0, x22
	bl	uECC_vli_modSub
	ldr	x1, [sp, 8]
	mov	x4, x19
	mov	x3, x28
	mov	x2, x24
	mov	x0, x27
	bl	XYcZ_add
	mov	w3, w20
	add	x2, x19, 4
	mov	x1, x22
	mov	x0, x22
	bl	uECC_vli_modInv
	mov	x1, x28
	add	x28, sp, 328
	mov	x3, x19
	mov	x2, x22
	mov	x0, x24
	bl	apply_z
	ldr	x0, [sp, 32]
	str	x0, [x28, 8]
	ldr	x0, [sp, 16]
	mov	w1, w21
	str	x0, [x28, 16]
	mov	x0, x26
	str	x24, [x28, 24]
	str	xzr, [sp, 328]
	bl	uECC_vli_numBits
	sxth	w2, w0
	mov	w1, w21
	ldr	x0, [sp, 24]
	mov	w24, w2
	str	w2, [sp, 16]
	bl	uECC_vli_numBits
	ldr	w2, [sp, 16]
	cmp	w2, w0, sxth
	csel	w0, w0, w24, lt
	and	w24, w0, 65535
	mov	x0, x26
	sub	w2, w24, #1
	sub	w24, w24, #2
	sxth	w2, w2
	str	w2, [sp, 32]
	mov	w1, w2
	sxth	w24, w24
	bl	uECC_vli_testBit
	mov	w3, w0
	ldr	x0, [sp, 24]
	str	w3, [sp, 16]
	ldr	w2, [sp, 32]
	mov	w1, w2
	bl	uECC_vli_testBit
	cmp	w0, 0
	ldr	w3, [sp, 16]
	cset	w1, ne
	mov	w2, w20
	cmp	w3, 0
	cset	w0, ne
	orr	w1, w0, w1, lsl 1
	mov	x0, x23
	sxtw	x1, w1
	ldr	x1, [x28, x1, lsl 3]
	str	x1, [sp, 32]
	bl	uECC_vli_set
	ldr	x1, [sp, 32]
	add	x0, sp, 200
	str	x0, [sp, 16]
	sbfiz	x0, x20, 2, 32
	add	x1, x1, x0
	mov	w2, w20
	ldr	x0, [sp, 16]
	bl	uECC_vli_set
	mov	x0, x22
	mov	w1, w20
	bl	uECC_vli_clear
	ldr	w5, [sp, 56]
	add	x0, sp, 296
	str	x0, [sp, 32]
	str	w5, [sp, 136]
.L40:
	tbz	w24, #31, .L42
	ldr	x2, [sp, 40]
	mov	w3, w20
	mov	x1, x22
	mov	x0, x22
	bl	uECC_vli_modInv
	ldr	x1, [sp, 16]
	mov	x3, x19
	mov	x2, x22
	mov	x0, x23
	bl	apply_z
	mov	w2, w21
	mov	x1, x23
	mov	x0, x25
	bl	uECC_vli_cmp_unsafe
	sxtb	w0, w0
	cmp	w0, 1
	beq	.L43
	mov	w3, w21
	mov	x2, x25
	mov	x1, x23
	mov	x0, x23
	bl	uECC_vli_sub
.L43:
	ldr	x1, [sp]
	mov	w2, w20
	mov	x0, x23
	bl	uECC_vli_equal
	cmp	w0, 0
	cset	w0, eq
	b	.L36
.L42:
	ldr	x1, [sp, 16]
	mov	x3, x19
	ldr	x4, [x19, 168]
	mov	x2, x22
	mov	x0, x23
	blr	x4
	mov	w1, w24
	mov	x0, x26
	bl	uECC_vli_testBit
	mov	w2, w0
	ldr	x0, [sp, 24]
	mov	w1, w24
	str	w2, [sp, 56]
	bl	uECC_vli_testBit
	cmp	w0, 0
	ldr	w2, [sp, 56]
	cset	w0, ne
	cmp	w2, 0
	cset	w1, ne
	orr	w0, w1, w0, lsl 1
	ldr	x1, [x28, x0, lsl 3]
	cbz	x1, .L41
	mov	w2, w20
	mov	x0, x27
	str	x1, [sp, 56]
	bl	uECC_vli_set
	ldp	x0, x1, [sp, 48]
	mov	w2, w20
	add	x1, x1, x0
	ldr	x0, [sp, 8]
	bl	uECC_vli_set
	ldr	x1, [sp, 8]
	mov	x3, x19
	mov	x2, x22
	mov	x0, x27
	bl	apply_z
	ldp	x0, x3, [sp, 32]
	mov	w4, w20
	mov	x2, x27
	mov	x1, x23
	bl	uECC_vli_modSub
	ldp	x1, x3, [sp, 8]
	mov	x2, x23
	mov	x0, x27
	mov	x4, x19
	bl	XYcZ_add
	ldr	x2, [sp, 32]
	mov	x3, x19
	mov	x1, x22
	mov	x0, x22
	bl	uECC_vli_modMult_fast
.L41:
	sub	w0, w24, #1
	sxth	w24, w0
	b	.L40
.L44:
	add	sp, sp, 560
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
	.cfi_endproc
.LFE4:
	.size	uECC_verify, .-uECC_verify
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
