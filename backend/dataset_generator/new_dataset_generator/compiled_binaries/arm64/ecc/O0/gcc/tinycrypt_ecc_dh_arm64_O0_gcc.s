	.arch armv8-a
	.file	"tinycrypt_ecc_dh.c"
	.text
	.section	.data.rel.ro,"aw"
	.align	3
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
	.text
	.align	2
	.type	_set_secure, %function
_set_secure:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	strb	w1, [sp, 23]
	str	w2, [sp, 16]
	ldrb	w0, [sp, 23]
	ldr	w1, [sp, 16]
	mov	x2, x1
	mov	w1, w0
	ldr	x0, [sp, 24]
	bl	memset
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	_set_secure, .-_set_secure
	.align	2
	.global	uECC_make_key_with_d
	.type	uECC_make_key_with_d, %function
uECC_make_key_with_d:
.LFB1:
	.cfi_startproc
	sub	sp, sp, #160
	.cfi_def_cfa_offset 160
	stp	x29, x30, [sp, 144]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 144
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	str	x3, [sp]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 136]
	mov	x1, 0
	add	x0, sp, 40
	mov	x2, 32
	ldr	x1, [sp, 8]
	bl	memcpy
	add	x1, sp, 40
	add	x0, sp, 72
	ldr	x2, [sp]
	bl	EccPoint_compute_public_key
	cmp	w0, 0
	beq	.L3
	ldr	x0, [sp]
	ldrsh	w0, [x0, 2]
	add	w0, w0, 7
	add	w1, w0, 7
	cmp	w0, 0
	csel	w0, w1, w0, lt
	asr	w0, w0, 3
	mov	w1, w0
	add	x0, sp, 40
	mov	x2, x0
	ldr	x0, [sp, 16]
	bl	uECC_vli_nativeToBytes
	ldr	x0, [sp]
	ldrsb	w0, [x0, 1]
	mov	w1, w0
	add	x0, sp, 72
	mov	x2, x0
	ldr	x0, [sp, 24]
	bl	uECC_vli_nativeToBytes
	ldr	x0, [sp]
	ldrsb	w0, [x0, 1]
	sxtb	x0, w0
	ldr	x1, [sp, 24]
	add	x3, x1, x0
	ldr	x0, [sp]
	ldrsb	w0, [x0, 1]
	mov	w4, w0
	ldr	x0, [sp]
	ldrsb	w0, [x0]
	sxtb	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 72
	add	x0, x1, x0
	mov	x2, x0
	mov	w1, w4
	mov	x0, x3
	bl	uECC_vli_nativeToBytes
	add	x0, sp, 40
	mov	w2, 32
	mov	w1, 0
	bl	_set_secure
	mov	w0, 1
	b	.L5
.L3:
	mov	w0, 0
.L5:
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 136]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L6
	bl	__stack_chk_fail
.L6:
	mov	w0, w1
	ldp	x29, x30, [sp, 144]
	add	sp, sp, 160
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	uECC_make_key_with_d, .-uECC_make_key_with_d
	.align	2
	.global	uECC_make_key
	.type	uECC_make_key, %function
uECC_make_key:
.LFB2:
	.cfi_startproc
	sub	sp, sp, #240
	.cfi_def_cfa_offset 240
	stp	x29, x30, [sp, 224]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 224
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 216]
	mov	x1, 0
	str	wzr, [sp, 44]
	b	.L8
.L13:
	bl	uECC_get_rng
	str	x0, [sp, 48]
	ldr	x0, [sp, 48]
	cmp	x0, 0
	beq	.L9
	add	x0, sp, 88
	ldr	x2, [sp, 48]
	mov	w1, 64
	blr	x2
	cmp	w0, 0
	bne	.L10
.L9:
	mov	w0, 0
	b	.L14
.L10:
	ldr	x0, [sp, 8]
	add	x2, x0, 36
	ldr	x0, [sp, 8]
	ldrsh	w0, [x0, 2]
	add	w0, w0, 31
	add	w1, w0, 31
	cmp	w0, 0
	csel	w0, w1, w0, lt
	asr	w0, w0, 5
	sxtb	w3, w0
	add	x1, sp, 88
	add	x0, sp, 56
	bl	uECC_vli_mmod
	add	x1, sp, 56
	add	x0, sp, 152
	ldr	x2, [sp, 8]
	bl	EccPoint_compute_public_key
	cmp	w0, 0
	beq	.L12
	ldr	x0, [sp, 8]
	ldrsh	w0, [x0, 2]
	add	w0, w0, 7
	add	w1, w0, 7
	cmp	w0, 0
	csel	w0, w1, w0, lt
	asr	w0, w0, 3
	mov	w1, w0
	add	x0, sp, 56
	mov	x2, x0
	ldr	x0, [sp, 16]
	bl	uECC_vli_nativeToBytes
	ldr	x0, [sp, 8]
	ldrsb	w0, [x0, 1]
	mov	w1, w0
	add	x0, sp, 152
	mov	x2, x0
	ldr	x0, [sp, 24]
	bl	uECC_vli_nativeToBytes
	ldr	x0, [sp, 8]
	ldrsb	w0, [x0, 1]
	sxtb	x0, w0
	ldr	x1, [sp, 24]
	add	x3, x1, x0
	ldr	x0, [sp, 8]
	ldrsb	w0, [x0, 1]
	mov	w4, w0
	ldr	x0, [sp, 8]
	ldrsb	w0, [x0]
	sxtb	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 152
	add	x0, x1, x0
	mov	x2, x0
	mov	w1, w4
	mov	x0, x3
	bl	uECC_vli_nativeToBytes
	add	x0, sp, 56
	mov	w2, 32
	mov	w1, 0
	bl	_set_secure
	mov	w0, 1
	b	.L14
.L12:
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L8:
	ldr	w0, [sp, 44]
	cmp	w0, 63
	bls	.L13
	mov	w0, 0
.L14:
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 216]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L15
	bl	__stack_chk_fail
.L15:
	mov	w0, w1
	ldp	x29, x30, [sp, 224]
	add	sp, sp, 240
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2:
	.size	uECC_make_key, .-uECC_make_key
	.align	2
	.global	uECC_shared_secret
	.type	uECC_shared_secret, %function
uECC_shared_secret:
.LFB3:
	.cfi_startproc
	sub	sp, sp, #224
	.cfi_def_cfa_offset 224
	stp	x29, x30, [sp, 208]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 208
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	str	x3, [sp]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 200]
	mov	x1, 0
	add	x0, sp, 72
	str	x0, [sp, 56]
	add	x0, sp, 104
	str	x0, [sp, 64]
	str	xzr, [sp, 48]
	ldr	x0, [sp]
	ldrb	w0, [x0]
	strb	w0, [sp, 38]
	ldr	x0, [sp]
	ldrb	w0, [x0, 1]
	strb	w0, [sp, 39]
	ldr	x0, [sp]
	ldrsh	w0, [x0, 2]
	add	w0, w0, 7
	add	w1, w0, 7
	cmp	w0, 0
	csel	w0, w1, w0, lt
	asr	w0, w0, 3
	mov	w1, w0
	add	x0, sp, 72
	mov	w2, w1
	ldr	x1, [sp, 16]
	bl	uECC_vli_bytesToNative
	ldrsb	w1, [sp, 39]
	add	x0, sp, 136
	mov	w2, w1
	ldr	x1, [sp, 24]
	bl	uECC_vli_bytesToNative
	ldrsb	x0, [sp, 38]
	lsl	x0, x0, 2
	add	x1, sp, 136
	add	x3, x1, x0
	ldrsb	x0, [sp, 39]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrsb	w1, [sp, 39]
	mov	w2, w1
	mov	x1, x0
	mov	x0, x3
	bl	uECC_vli_bytesToNative
	add	x2, sp, 104
	add	x1, sp, 72
	add	x0, sp, 72
	ldr	x3, [sp]
	bl	regularize_k
	str	w0, [sp, 44]
	bl	uECC_get_rng
	cmp	x0, 0
	beq	.L17
	ldr	w0, [sp, 44]
	lsl	x0, x0, 3
	add	x1, sp, 56
	ldr	x3, [x1, x0]
	ldr	x0, [sp]
	add	x0, x0, 4
	ldrb	w2, [sp, 38]
	mov	x1, x0
	mov	x0, x3
	bl	uECC_generate_random_int
	cmp	w0, 0
	bne	.L18
	str	wzr, [sp, 40]
	b	.L19
.L18:
	ldr	w0, [sp, 44]
	lsl	x0, x0, 3
	add	x1, sp, 56
	ldr	x0, [x1, x0]
	str	x0, [sp, 48]
.L17:
	ldr	w0, [sp, 44]
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	sxtw	x0, w0
	lsl	x0, x0, 3
	add	x1, sp, 56
	ldr	x2, [x1, x0]
	ldr	x0, [sp]
	ldrsh	w0, [x0, 2]
	and	w0, w0, 65535
	add	w0, w0, 1
	and	w0, w0, 65535
	sxth	w3, w0
	add	x1, sp, 136
	add	x0, sp, 136
	ldr	x5, [sp]
	mov	w4, w3
	ldr	x3, [sp, 48]
	bl	EccPoint_mult
	ldrsb	w0, [sp, 39]
	add	x1, sp, 136
	mov	x2, x1
	mov	w1, w0
	ldr	x0, [sp, 8]
	bl	uECC_vli_nativeToBytes
	add	x0, sp, 136
	ldr	x1, [sp]
	bl	EccPoint_isZero
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	str	w0, [sp, 40]
.L19:
	add	x0, sp, 56
	mov	w2, 16
	mov	w1, 0
	bl	_set_secure
	add	x0, sp, 104
	mov	w2, 32
	mov	w1, 0
	bl	_set_secure
	add	x0, sp, 72
	mov	w2, 32
	mov	w1, 0
	bl	_set_secure
	ldr	w0, [sp, 40]
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 200]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L21
	bl	__stack_chk_fail
.L21:
	mov	w0, w1
	ldp	x29, x30, [sp, 208]
	add	sp, sp, 224
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	uECC_shared_secret, .-uECC_shared_secret
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
