	.arch armv8-a
	.file	"tinycrypt_ecc_dh.c"
	.text
	.align	2
	.p2align 4,,11
	.global	uECC_make_key_with_d
	.type	uECC_make_key_with_d, %function
uECC_make_key_with_d:
.LFB15:
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
	add	x20, sp, 8
	mov	x19, x3
	stp	x21, x22, [sp, 144]
	.cfi_offset 21, -32
	.cfi_offset 22, -24
	add	x22, sp, 40
	mov	x21, x1
	str	x23, [sp, 160]
	.cfi_offset 23, -16
	mov	x23, x0
	mov	x1, x20
	ldp	q0, q1, [x2]
	ldr	x0, [x4]
	str	x0, [sp, 104]
	mov	x0, 0
	mov	x2, x3
	mov	x0, x22
	stp	q0, q1, [x20]
	bl	EccPoint_compute_public_key
	mov	w2, 0
	cbnz	w0, .L9
.L1:
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 104]
	ldr	x1, [x0]
	subs	x3, x3, x1
	mov	x1, 0
	bne	.L10
	ldp	x29, x30, [sp, 112]
	mov	w0, w2
	ldp	x19, x20, [sp, 128]
	ldp	x21, x22, [sp, 144]
	ldr	x23, [sp, 160]
	add	sp, sp, 176
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
.L9:
	.cfi_restore_state
	ldrsh	w3, [x19, 2]
	mov	x0, x21
	mov	x2, x20
	add	w1, w3, 14
	adds	w3, w3, 7
	csel	w1, w1, w3, mi
	asr	w1, w1, 3
	bl	uECC_vli_nativeToBytes
	ldrsb	w1, [x19, 1]
	mov	x2, x22
	mov	x0, x23
	bl	uECC_vli_nativeToBytes
	ldrsb	w1, [x19, 1]
	ldrsb	x2, [x19]
	add	x0, x23, w1, sxtw
	add	x2, x22, x2, lsl 2
	bl	uECC_vli_nativeToBytes
	stp	xzr, xzr, [sp, 8]
	stp	xzr, xzr, [x20, 16]
	mov	w2, 1
	b	.L1
.L10:
	bl	__stack_chk_fail
	.cfi_endproc
.LFE15:
	.size	uECC_make_key_with_d, .-uECC_make_key_with_d
	.align	2
	.p2align 4,,11
	.global	uECC_make_key
	.type	uECC_make_key, %function
uECC_make_key:
.LFB16:
	.cfi_startproc
	sub	sp, sp, #256
	.cfi_def_cfa_offset 256
	adrp	x3, :got:__stack_chk_guard
	ldr	x3, [x3, :got_lo12:__stack_chk_guard]
	stp	x29, x30, [sp, 176]
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	add	x29, sp, 176
	stp	x19, x20, [sp, 192]
	.cfi_offset 19, -64
	.cfi_offset 20, -56
	mov	x20, x2
	mov	w19, 64
	stp	x21, x22, [sp, 208]
	.cfi_offset 21, -48
	.cfi_offset 22, -40
	add	x22, sp, 40
	add	x21, sp, 8
	stp	x23, x24, [sp, 224]
	.cfi_offset 23, -32
	.cfi_offset 24, -24
	add	x24, x2, 36
	add	x23, sp, 104
	stp	x25, x26, [sp, 240]
	.cfi_offset 25, -16
	.cfi_offset 26, -8
	mov	x25, x0
	mov	x26, x1
	ldr	x0, [x3]
	str	x0, [sp, 168]
	mov	x0, 0
	b	.L15
	.p2align 2,,3
.L26:
	mov	x0, x22
	mov	w1, 64
	blr	x2
	cbz	w0, .L12
	ldrsh	w4, [x20, 2]
	mov	x2, x24
	mov	x1, x22
	mov	x0, x21
	add	w3, w4, 62
	adds	w4, w4, 31
	csel	w3, w3, w4, mi
	ubfx	x3, x3, 5, 8
	bl	uECC_vli_mmod
	mov	x2, x20
	mov	x1, x21
	mov	x0, x23
	bl	EccPoint_compute_public_key
	cbnz	w0, .L25
	subs	w19, w19, #1
	beq	.L12
.L15:
	bl	uECC_get_rng
	mov	x2, x0
	cbnz	x0, .L26
.L12:
	mov	w0, 0
.L11:
	adrp	x1, :got:__stack_chk_guard
	ldr	x1, [x1, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 168]
	ldr	x2, [x1]
	subs	x3, x3, x2
	mov	x2, 0
	bne	.L27
	ldp	x29, x30, [sp, 176]
	ldp	x19, x20, [sp, 192]
	ldp	x21, x22, [sp, 208]
	ldp	x23, x24, [sp, 224]
	ldp	x25, x26, [sp, 240]
	add	sp, sp, 256
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
	.p2align 2,,3
.L25:
	.cfi_restore_state
	ldrsh	w1, [x20, 2]
	mov	x0, x26
	mov	x2, x21
	add	w3, w1, 14
	adds	w1, w1, 7
	csel	w1, w3, w1, mi
	asr	w1, w1, 3
	bl	uECC_vli_nativeToBytes
	ldrsb	w1, [x20, 1]
	mov	x2, x23
	mov	x0, x25
	bl	uECC_vli_nativeToBytes
	ldrsb	w1, [x20, 1]
	ldrsb	x2, [x20]
	add	x0, x25, w1, sxtw
	add	x2, x23, x2, lsl 2
	bl	uECC_vli_nativeToBytes
	stp	xzr, xzr, [sp, 8]
	stp	xzr, xzr, [x21, 16]
	mov	w0, 1
	b	.L11
.L27:
	bl	__stack_chk_fail
	.cfi_endproc
.LFE16:
	.size	uECC_make_key, .-uECC_make_key
	.align	2
	.p2align 4,,11
	.global	uECC_shared_secret
	.type	uECC_shared_secret, %function
uECC_shared_secret:
.LFB17:
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
	mov	x19, x3
	ldrsh	w3, [x3, 2]
	stp	x21, x22, [sp, 192]
	add	x20, sp, 24
	.cfi_offset 21, -64
	.cfi_offset 22, -56
	add	x22, sp, 56
	stp	x23, x24, [sp, 208]
	.cfi_offset 23, -48
	.cfi_offset 24, -40
	mov	x23, x0
	add	x21, sp, 88
	stp	x25, x26, [sp, 224]
	.cfi_offset 25, -32
	.cfi_offset 26, -24
	mov	x25, x2
	add	w2, w3, 14
	adds	w3, w3, 7
	stp	x27, x28, [sp, 240]
	.cfi_offset 27, -16
	.cfi_offset 28, -8
	csel	w2, w2, w3, mi
	ldr	x0, [x4]
	str	x0, [sp, 152]
	mov	x0, 0
	ldrsb	w24, [x19, 1]
	ldrsb	w26, [x19]
	mov	x0, x20
	asr	w2, w2, 3
	stp	x20, x22, [sp, 8]
	bl	uECC_vli_bytesToNative
	mov	x1, x23
	mov	w2, w24
	mov	x0, x21
	bl	uECC_vli_bytesToNative
	add	x1, x23, w24, sxtw
	mov	w2, w24
	add	x0, x21, w26, sxtw 2
	bl	uECC_vli_bytesToNative
	mov	x3, x19
	mov	x2, x22
	mov	x1, x20
	mov	x0, x20
	bl	regularize_k
	mov	w23, w0
	bl	uECC_get_rng
	cbz	x0, .L32
	uxtw	x28, w23
	add	x27, sp, 8
	mov	w2, w26
	add	x1, x19, 4
	ldr	x0, [x27, x28, lsl 3]
	bl	uECC_generate_random_int
	cbz	w0, .L30
	ldr	x3, [x27, x28, lsl 3]
.L29:
	cmp	w23, 0
	cset	x0, eq
	ldrh	w4, [x19, 2]
	mov	x5, x19
	mov	x1, x21
	add	w4, w4, 1
	ldr	x2, [x27, x0, lsl 3]
	mov	x0, x21
	bl	EccPoint_mult
	mov	x2, x21
	mov	w1, w24
	mov	x0, x25
	bl	uECC_vli_nativeToBytes
	mov	x1, x19
	mov	x0, x21
	bl	EccPoint_isZero
	cmp	w0, 0
	cset	w0, eq
.L30:
	stp	xzr, xzr, [sp, 8]
	stp	xzr, xzr, [sp, 56]
	stp	xzr, xzr, [x22, 16]
	stp	xzr, xzr, [sp, 24]
	stp	xzr, xzr, [x20, 16]
	adrp	x1, :got:__stack_chk_guard
	ldr	x1, [x1, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 152]
	ldr	x2, [x1]
	subs	x3, x3, x2
	mov	x2, 0
	bne	.L37
	ldp	x29, x30, [sp, 160]
	ldp	x19, x20, [sp, 176]
	ldp	x21, x22, [sp, 192]
	ldp	x23, x24, [sp, 208]
	ldp	x25, x26, [sp, 224]
	ldp	x27, x28, [sp, 240]
	add	sp, sp, 256
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
.L32:
	.cfi_restore_state
	add	x27, sp, 8
	mov	x3, 0
	b	.L29
.L37:
	bl	__stack_chk_fail
	.cfi_endproc
.LFE17:
	.size	uECC_shared_secret, .-uECC_shared_secret
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
