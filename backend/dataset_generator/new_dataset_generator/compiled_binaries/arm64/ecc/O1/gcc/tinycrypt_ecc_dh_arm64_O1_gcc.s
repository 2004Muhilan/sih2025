	.arch armv8-a
	.file	"tinycrypt_ecc_dh.c"
	.text
	.align	2
	.global	uECC_make_key_with_d
	.type	uECC_make_key_with_d, %function
uECC_make_key_with_d:
.LFB15:
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
	mov	x20, x0
	mov	x21, x1
	mov	x19, x3
	adrp	x3, :got:__stack_chk_guard
	ldr	x3, [x3, :got_lo12:__stack_chk_guard]
	ldr	x0, [x3]
	str	x0, [sp, 104]
	mov	x0, 0
	add	x1, sp, 8
	ldp	q0, q1, [x2]
	stp	q0, q1, [x1]
	mov	x2, x19
	add	x0, sp, 40
	bl	EccPoint_compute_public_key
	mov	w2, 0
	cbnz	w0, .L6
.L1:
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 104]
	ldr	x1, [x0]
	subs	x3, x3, x1
	mov	x1, 0
	bne	.L7
	mov	w0, w2
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
.L6:
	.cfi_restore_state
	add	x22, sp, 8
	ldrsh	w0, [x19, 2]
	add	w1, w0, 14
	adds	w0, w0, 7
	csel	w1, w1, w0, mi
	mov	x2, x22
	asr	w1, w1, 3
	mov	x0, x21
	bl	uECC_vli_nativeToBytes
	add	x21, sp, 40
	mov	x2, x21
	ldrsb	w1, [x19, 1]
	mov	x0, x20
	bl	uECC_vli_nativeToBytes
	ldrsb	w1, [x19, 1]
	ldrsb	x2, [x19]
	add	x2, x21, x2, lsl 2
	add	x0, x20, w1, sxtw
	bl	uECC_vli_nativeToBytes
	stp	xzr, xzr, [sp, 8]
	stp	xzr, xzr, [sp, 24]
	mov	w2, 1
	b	.L1
.L7:
	bl	__stack_chk_fail
	.cfi_endproc
.LFE15:
	.size	uECC_make_key_with_d, .-uECC_make_key_with_d
	.align	2
	.global	uECC_make_key
	.type	uECC_make_key, %function
uECC_make_key:
.LFB16:
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
	str	x27, [sp, 256]
	.cfi_offset 19, -80
	.cfi_offset 20, -72
	.cfi_offset 21, -64
	.cfi_offset 22, -56
	.cfi_offset 23, -48
	.cfi_offset 24, -40
	.cfi_offset 25, -32
	.cfi_offset 26, -24
	.cfi_offset 27, -16
	mov	x26, x0
	mov	x27, x1
	mov	x20, x2
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 168]
	mov	x1, 0
	mov	w19, 64
	add	x21, sp, 40
	mov	w23, w19
	add	x25, x2, 36
	add	x22, sp, 8
	add	x24, sp, 104
.L11:
	bl	uECC_get_rng
	mov	x2, x0
	cbz	x0, .L13
	mov	w1, w23
	mov	x0, x21
	blr	x2
	cbz	w0, .L8
	ldrsh	w4, [x20, 2]
	add	w3, w4, 62
	adds	w4, w4, 31
	csel	w3, w3, w4, mi
	ubfx	x3, x3, 5, 8
	mov	x2, x25
	mov	x1, x21
	mov	x0, x22
	bl	uECC_vli_mmod
	mov	x2, x20
	mov	x1, x22
	mov	x0, x24
	bl	EccPoint_compute_public_key
	cbnz	w0, .L16
	subs	w19, w19, #1
	bne	.L11
	mov	w0, 0
	b	.L8
.L16:
	add	x19, sp, 8
	ldrsh	w0, [x20, 2]
	add	w1, w0, 14
	adds	w0, w0, 7
	csel	w1, w1, w0, mi
	mov	x2, x19
	asr	w1, w1, 3
	mov	x0, x27
	bl	uECC_vli_nativeToBytes
	add	x21, sp, 104
	mov	x2, x21
	ldrsb	w1, [x20, 1]
	mov	x0, x26
	bl	uECC_vli_nativeToBytes
	ldrsb	w1, [x20, 1]
	ldrsb	x2, [x20]
	add	x2, x21, x2, lsl 2
	add	x0, x26, w1, sxtw
	bl	uECC_vli_nativeToBytes
	stp	xzr, xzr, [sp, 8]
	stp	xzr, xzr, [sp, 24]
	mov	w0, 1
	b	.L8
.L13:
	mov	w0, 0
.L8:
	adrp	x1, :got:__stack_chk_guard
	ldr	x1, [x1, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 168]
	ldr	x2, [x1]
	subs	x3, x3, x2
	mov	x2, 0
	bne	.L17
	ldp	x19, x20, [sp, 192]
	ldp	x21, x22, [sp, 208]
	ldp	x23, x24, [sp, 224]
	ldp	x25, x26, [sp, 240]
	ldr	x27, [sp, 256]
	ldp	x29, x30, [sp, 176]
	add	sp, sp, 272
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
.L17:
	.cfi_restore_state
	bl	__stack_chk_fail
	.cfi_endproc
.LFE16:
	.size	uECC_make_key, .-uECC_make_key
	.align	2
	.global	uECC_shared_secret
	.type	uECC_shared_secret, %function
uECC_shared_secret:
.LFB17:
	.cfi_startproc
	sub	sp, sp, #240
	.cfi_def_cfa_offset 240
	stp	x29, x30, [sp, 160]
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	add	x29, sp, 160
	stp	x19, x20, [sp, 176]
	stp	x21, x22, [sp, 192]
	stp	x23, x24, [sp, 208]
	stp	x25, x26, [sp, 224]
	.cfi_offset 19, -64
	.cfi_offset 20, -56
	.cfi_offset 21, -48
	.cfi_offset 22, -40
	.cfi_offset 23, -32
	.cfi_offset 24, -24
	.cfi_offset 25, -16
	.cfi_offset 26, -8
	mov	x22, x0
	mov	x24, x2
	mov	x19, x3
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [x0]
	str	x2, [sp, 152]
	mov	x2, 0
	add	x20, sp, 24
	str	x20, [sp, 8]
	add	x25, sp, 56
	str	x25, [sp, 16]
	ldrsb	w26, [x3]
	ldrsb	w23, [x3, 1]
	ldrsh	w3, [x3, 2]
	add	w2, w3, 14
	adds	w3, w3, 7
	csel	w2, w2, w3, mi
	asr	w2, w2, 3
	mov	x0, x20
	bl	uECC_vli_bytesToNative
	add	x21, sp, 88
	mov	w2, w23
	mov	x1, x22
	mov	x0, x21
	bl	uECC_vli_bytesToNative
	mov	w2, w23
	add	x1, x22, w23, sxtw
	add	x0, x21, w26, sxtw 2
	bl	uECC_vli_bytesToNative
	mov	x3, x19
	mov	x2, x25
	mov	x1, x20
	mov	x0, x20
	bl	regularize_k
	mov	w20, w0
	bl	uECC_get_rng
	cbz	x0, .L22
	mov	w2, w26
	add	x1, x19, 4
	add	x0, sp, 8
	ldr	x0, [x0, w20, uxtw 3]
	bl	uECC_generate_random_int
	cbz	w0, .L20
	add	x0, sp, 8
	ldr	x3, [x0, w20, uxtw 3]
.L19:
	ldrh	w4, [x19, 2]
	add	w4, w4, 1
	cmp	w20, 0
	cset	x1, eq
	add	x20, sp, 88
	mov	x5, x19
	add	x0, sp, 8
	ldr	x2, [x0, x1, lsl 3]
	mov	x1, x20
	mov	x0, x20
	bl	EccPoint_mult
	mov	x2, x20
	mov	w1, w23
	mov	x0, x24
	bl	uECC_vli_nativeToBytes
	mov	x1, x19
	mov	x0, x20
	bl	EccPoint_isZero
	cmp	w0, 0
	cset	w0, eq
.L20:
	stp	xzr, xzr, [sp, 8]
	add	x1, sp, 8
	add	x1, sp, 56
	stp	xzr, xzr, [sp, 56]
	stp	xzr, xzr, [sp, 72]
	add	x1, sp, 24
	stp	xzr, xzr, [sp, 24]
	stp	xzr, xzr, [sp, 40]
	adrp	x1, :got:__stack_chk_guard
	ldr	x1, [x1, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 152]
	ldr	x2, [x1]
	subs	x3, x3, x2
	mov	x2, 0
	bne	.L24
	ldp	x19, x20, [sp, 176]
	ldp	x21, x22, [sp, 192]
	ldp	x23, x24, [sp, 208]
	ldp	x25, x26, [sp, 224]
	ldp	x29, x30, [sp, 160]
	add	sp, sp, 240
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
.L22:
	.cfi_restore_state
	mov	x3, 0
	b	.L19
.L24:
	bl	__stack_chk_fail
	.cfi_endproc
.LFE17:
	.size	uECC_shared_secret, .-uECC_shared_secret
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
