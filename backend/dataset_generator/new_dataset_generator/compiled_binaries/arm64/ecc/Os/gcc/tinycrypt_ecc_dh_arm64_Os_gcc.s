	.arch armv8-a
	.file	"tinycrypt_ecc_dh.c"
	.text
	.align	2
	.type	_set_secure.constprop.0, %function
_set_secure.constprop.0:
.LFB18:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	uxtw	x2, w1
	mov	w1, 0
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -16
	mov	x19, x0
	bl	memset
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE18:
	.size	_set_secure.constprop.0, .-_set_secure.constprop.0
	.align	2
	.global	uECC_make_key_with_d
	.type	uECC_make_key_with_d, %function
uECC_make_key_with_d:
.LFB15:
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
	add	x20, sp, 8
	mov	x19, x3
	stp	x21, x22, [sp, 144]
	.cfi_offset 21, -32
	.cfi_offset 22, -24
	mov	x21, x0
	add	x22, sp, 40
	str	x23, [sp, 160]
	.cfi_offset 23, -16
	mov	x23, x1
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldp	q0, q1, [x2]
	ldr	x1, [x0]
	str	x1, [sp, 104]
	mov	x1, 0
	mov	x2, x3
	mov	x1, x20
	mov	x0, x22
	stp	q0, q1, [x20]
	bl	EccPoint_compute_public_key
	cbz	w0, .L6
	ldrsh	w0, [x19, 2]
	mov	w1, 8
	mov	x2, x20
	add	w0, w0, 7
	sdiv	w1, w0, w1
	mov	x0, x23
	bl	uECC_vli_nativeToBytes
	ldrsb	w1, [x19, 1]
	mov	x2, x22
	mov	x0, x21
	bl	uECC_vli_nativeToBytes
	ldrsb	x2, [x19]
	ldrsb	w1, [x19, 1]
	ldrsb	x0, [x19, 1]
	add	x2, x22, x2, lsl 2
	add	x0, x21, x0
	bl	uECC_vli_nativeToBytes
	mov	x0, x20
	mov	w1, 32
	bl	_set_secure.constprop.0
	mov	w0, 1
.L3:
	adrp	x1, :got:__stack_chk_guard
	ldr	x1, [x1, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 104]
	ldr	x2, [x1]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L5
	bl	__stack_chk_fail
.L6:
	mov	w0, 0
	b	.L3
.L5:
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
	.cfi_offset 19, -80
	.cfi_offset 20, -72
	mov	x20, x0
	mov	x19, x2
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	stp	x21, x22, [sp, 208]
	.cfi_offset 21, -64
	.cfi_offset 22, -56
	add	x21, sp, 8
	stp	x23, x24, [sp, 224]
	.cfi_offset 23, -48
	.cfi_offset 24, -40
	mov	x23, x1
	add	x24, sp, 40
	stp	x25, x26, [sp, 240]
	.cfi_offset 25, -32
	.cfi_offset 26, -24
	add	x26, x2, 36
	mov	w22, 64
	str	x27, [sp, 256]
	.cfi_offset 27, -16
	mov	w25, 32
	ldr	x1, [x0]
	str	x1, [sp, 168]
	mov	x1, 0
.L12:
	bl	uECC_get_rng
	mov	x2, x0
	cbz	x0, .L9
	mov	x0, x24
	mov	w1, 64
	blr	x2
	cbz	w0, .L9
	ldrsh	w3, [x19, 2]
	mov	x2, x26
	mov	x1, x24
	mov	x0, x21
	add	w3, w3, 31
	add	x27, sp, 104
	sdiv	w3, w3, w25
	bl	uECC_vli_mmod
	mov	x2, x19
	mov	x1, x21
	mov	x0, x27
	bl	EccPoint_compute_public_key
	cbz	w0, .L10
	ldrsh	w0, [x19, 2]
	mov	w1, 8
	mov	x2, x21
	add	w0, w0, 7
	sdiv	w1, w0, w1
	mov	x0, x23
	bl	uECC_vli_nativeToBytes
	ldrsb	w1, [x19, 1]
	mov	x2, x27
	mov	x0, x20
	bl	uECC_vli_nativeToBytes
	ldrsb	x2, [x19]
	ldrsb	w1, [x19, 1]
	ldrsb	x0, [x19, 1]
	add	x2, x27, x2, lsl 2
	add	x0, x20, x0
	bl	uECC_vli_nativeToBytes
	mov	x0, x21
	mov	w1, 32
	bl	_set_secure.constprop.0
	mov	w0, 1
.L8:
	adrp	x1, :got:__stack_chk_guard
	ldr	x1, [x1, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 168]
	ldr	x2, [x1]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L13
	bl	__stack_chk_fail
.L10:
	subs	w22, w22, #1
	bne	.L12
.L9:
	mov	w0, 0
	b	.L8
.L13:
	ldp	x29, x30, [sp, 176]
	ldp	x19, x20, [sp, 192]
	ldp	x21, x22, [sp, 208]
	ldp	x23, x24, [sp, 224]
	ldp	x25, x26, [sp, 240]
	ldr	x27, [sp, 256]
	add	sp, sp, 272
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
.LFE16:
	.size	uECC_make_key, .-uECC_make_key
	.align	2
	.global	uECC_shared_secret
	.type	uECC_shared_secret, %function
uECC_shared_secret:
.LFB17:
	.cfi_startproc
	sub	sp, sp, #272
	.cfi_def_cfa_offset 272
	stp	x29, x30, [sp, 176]
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	add	x29, sp, 176
	stp	x21, x22, [sp, 208]
	.cfi_offset 21, -64
	.cfi_offset 22, -56
	mov	x21, x0
	add	x22, sp, 40
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	str	x2, [sp, 8]
	stp	x19, x20, [sp, 192]
	.cfi_offset 19, -80
	.cfi_offset 20, -72
	mov	x19, x3
	add	x20, sp, 104
	stp	x23, x24, [sp, 224]
	.cfi_offset 23, -48
	.cfi_offset 24, -40
	add	x23, sp, 24
	stp	x25, x26, [sp, 240]
	.cfi_offset 25, -32
	.cfi_offset 26, -24
	add	x26, sp, 72
	stp	x27, x28, [sp, 256]
	.cfi_offset 27, -16
	.cfi_offset 28, -8
	ldr	x2, [x0]
	str	x2, [sp, 168]
	mov	x2, 0
	ldrsh	w0, [x3, 2]
	mov	w2, 8
	ldrsb	w24, [x3, 1]
	add	w0, w0, 7
	ldrsb	w28, [x3]
	stp	x22, x26, [sp, 24]
	sdiv	w2, w0, w2
	mov	x0, x22
	bl	uECC_vli_bytesToNative
	mov	w2, w24
	mov	x1, x21
	mov	x0, x20
	bl	uECC_vli_bytesToNative
	mov	w2, w24
	add	x1, x21, w24, sxtw
	add	x0, x20, w28, sxtw 2
	bl	uECC_vli_bytesToNative
	mov	x3, x19
	mov	x2, x26
	mov	x1, x22
	mov	x0, x22
	bl	regularize_k
	mov	w25, w0
	bl	uECC_get_rng
	cbz	x0, .L26
	ubfiz	x27, x25, 3, 32
	mov	w2, w28
	add	x1, x19, 4
	ldr	x0, [x23, x27]
	bl	uECC_generate_random_int
	mov	w21, w0
	cbz	w0, .L24
	ldr	x3, [x23, x27]
.L23:
	cmp	w25, 0
	cset	x0, eq
	ldrh	w4, [x19, 2]
	mov	x5, x19
	mov	x1, x20
	add	w4, w4, 1
	ldr	x2, [x23, x0, lsl 3]
	mov	x0, x20
	bl	EccPoint_mult
	ldr	x0, [sp, 8]
	mov	x2, x20
	mov	w1, w24
	bl	uECC_vli_nativeToBytes
	mov	x1, x19
	mov	x0, x20
	bl	EccPoint_isZero
	cmp	w0, 0
	cset	w21, eq
.L24:
	mov	x0, x23
	mov	w1, 16
	bl	_set_secure.constprop.0
	mov	x0, x26
	mov	w1, 32
	bl	_set_secure.constprop.0
	mov	x0, x22
	mov	w1, 32
	bl	_set_secure.constprop.0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 168]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L25
	bl	__stack_chk_fail
.L26:
	mov	x3, 0
	b	.L23
.L25:
	ldp	x29, x30, [sp, 176]
	mov	w0, w21
	ldp	x19, x20, [sp, 192]
	ldp	x21, x22, [sp, 208]
	ldp	x23, x24, [sp, 224]
	ldp	x25, x26, [sp, 240]
	ldp	x27, x28, [sp, 256]
	add	sp, sp, 272
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
.LFE17:
	.size	uECC_shared_secret, .-uECC_shared_secret
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
