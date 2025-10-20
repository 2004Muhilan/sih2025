	.arch armv8-a
	.file	"tinycrypt_ecc_dsa.c"
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
	.type	bits2int, %function
bits2int:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	w2, [sp, 28]
	str	x3, [sp, 16]
	ldr	x0, [sp, 16]
	ldrsh	w0, [x0, 2]
	add	w0, w0, 7
	add	w1, w0, 7
	cmp	w0, 0
	csel	w0, w1, w0, lt
	asr	w0, w0, 3
	str	w0, [sp, 56]
	ldr	x0, [sp, 16]
	ldrsh	w0, [x0, 2]
	add	w0, w0, 31
	add	w1, w0, 31
	cmp	w0, 0
	csel	w0, w1, w0, lt
	asr	w0, w0, 5
	str	w0, [sp, 60]
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 56]
	cmp	w1, w0
	bls	.L2
	ldr	w0, [sp, 56]
	str	w0, [sp, 28]
.L2:
	ldr	w0, [sp, 60]
	sxtb	w0, w0
	mov	w1, w0
	ldr	x0, [sp, 40]
	bl	uECC_vli_clear
	ldr	w0, [sp, 28]
	mov	w2, w0
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	uECC_vli_bytesToNative
	ldr	w0, [sp, 28]
	lsl	w0, w0, 3
	ldr	x1, [sp, 16]
	ldrsh	w1, [x1, 2]
	cmp	w0, w1
	bls	.L7
	ldr	w0, [sp, 28]
	lsl	w0, w0, 3
	ldr	x1, [sp, 16]
	ldrsh	w1, [x1, 2]
	sub	w0, w0, w1
	str	w0, [sp, 64]
	str	wzr, [sp, 52]
	ldr	w0, [sp, 60]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	str	x0, [sp, 72]
	b	.L5
.L6:
	ldr	x0, [sp, 72]
	ldr	w0, [x0]
	str	w0, [sp, 68]
	ldr	w0, [sp, 64]
	ldr	w1, [sp, 68]
	lsr	w1, w1, w0
	ldr	w0, [sp, 52]
	orr	w1, w1, w0
	ldr	x0, [sp, 72]
	str	w1, [x0]
	mov	w1, 32
	ldr	w0, [sp, 64]
	sub	w0, w1, w0
	ldr	w1, [sp, 68]
	lsl	w0, w1, w0
	str	w0, [sp, 52]
.L5:
	ldr	x0, [sp, 72]
	sub	x1, x0, #4
	str	x1, [sp, 72]
	ldr	x1, [sp, 40]
	cmp	x1, x0
	bcc	.L6
	ldr	x0, [sp, 16]
	add	x0, x0, 36
	ldr	w1, [sp, 60]
	sxtb	w1, w1
	mov	w2, w1
	ldr	x1, [sp, 40]
	bl	uECC_vli_cmp_unsafe
	sxtb	w0, w0
	cmp	w0, 1
	beq	.L1
	ldr	x0, [sp, 16]
	add	x0, x0, 36
	ldr	w1, [sp, 60]
	sxtb	w1, w1
	mov	w3, w1
	mov	x2, x0
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 40]
	bl	uECC_vli_sub
	b	.L1
.L7:
	nop
.L1:
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
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
	sub	sp, sp, #224
	.cfi_def_cfa_offset 224
	stp	x29, x30, [sp, 208]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 208
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	w2, [sp, 28]
	str	x3, [sp, 16]
	str	x4, [sp, 8]
	str	x5, [sp]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 200]
	mov	x1, 0
	add	x0, sp, 72
	str	x0, [sp, 56]
	add	x0, sp, 104
	str	x0, [sp, 64]
	ldr	x0, [sp]
	ldrb	w0, [x0]
	strb	w0, [sp, 48]
	ldr	x0, [sp]
	ldrsh	w0, [x0, 2]
	add	w0, w0, 31
	add	w1, w0, 31
	cmp	w0, 0
	csel	w0, w1, w0, lt
	asr	w0, w0, 5
	strb	w0, [sp, 49]
	ldr	x0, [sp]
	ldrh	w0, [x0, 2]
	strh	w0, [sp, 50]
	ldrb	w1, [sp, 48]
	ldr	x0, [sp, 16]
	bl	uECC_vli_isZero
	cmp	w0, 0
	bne	.L9
	ldr	x0, [sp]
	add	x0, x0, 36
	ldrb	w2, [sp, 49]
	ldr	x1, [sp, 16]
	bl	uECC_vli_cmp
	sxtb	w0, w0
	cmp	w0, 1
	beq	.L10
.L9:
	mov	w0, 0
	b	.L16
.L10:
	add	x1, sp, 104
	add	x0, sp, 72
	ldr	x3, [sp]
	mov	x2, x1
	mov	x1, x0
	ldr	x0, [sp, 16]
	bl	regularize_k
	str	w0, [sp, 52]
	ldr	x0, [sp]
	add	x6, x0, 68
	ldr	w0, [sp, 52]
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	sxtw	x0, w0
	lsl	x0, x0, 3
	add	x1, sp, 56
	ldr	x1, [x1, x0]
	ldrh	w0, [sp, 50]
	add	w0, w0, 1
	and	w0, w0, 65535
	sxth	w2, w0
	add	x0, sp, 136
	ldr	x5, [sp]
	mov	w4, w2
	mov	x3, 0
	mov	x2, x1
	mov	x1, x6
	bl	EccPoint_mult
	add	x0, sp, 136
	ldrb	w1, [sp, 48]
	bl	uECC_vli_isZero
	cmp	w0, 0
	beq	.L12
	mov	w0, 0
	b	.L16
.L12:
	bl	uECC_get_rng
	cmp	x0, 0
	bne	.L13
	add	x0, sp, 72
	ldrb	w1, [sp, 49]
	bl	uECC_vli_clear
	mov	w0, 1
	str	w0, [sp, 72]
	b	.L14
.L13:
	ldr	x0, [sp]
	add	x1, x0, 36
	add	x0, sp, 72
	ldrb	w2, [sp, 49]
	bl	uECC_generate_random_int
	cmp	w0, 0
	bne	.L14
	mov	w0, 0
	b	.L16
.L14:
	ldr	x0, [sp]
	add	x1, x0, 36
	add	x0, sp, 72
	ldrb	w4, [sp, 49]
	mov	x3, x1
	mov	x2, x0
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 16]
	bl	uECC_vli_modMult
	ldr	x0, [sp]
	add	x0, x0, 36
	ldrb	w3, [sp, 49]
	mov	x2, x0
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 16]
	bl	uECC_vli_modInv
	ldr	x0, [sp]
	add	x1, x0, 36
	add	x0, sp, 72
	ldrb	w4, [sp, 49]
	mov	x3, x1
	mov	x2, x0
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 16]
	bl	uECC_vli_modMult
	ldr	x0, [sp]
	ldrsb	w0, [x0, 1]
	mov	w1, w0
	add	x0, sp, 136
	mov	x2, x0
	ldr	x0, [sp, 8]
	bl	uECC_vli_nativeToBytes
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
	ldr	x1, [sp, 40]
	bl	uECC_vli_bytesToNative
	ldrsb	w0, [sp, 49]
	sub	w0, w0, #1
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 104
	str	wzr, [x1, x0]
	add	x1, sp, 136
	add	x0, sp, 104
	ldrb	w2, [sp, 48]
	bl	uECC_vli_set
	ldr	x0, [sp]
	add	x3, x0, 36
	add	x2, sp, 104
	add	x1, sp, 72
	add	x0, sp, 104
	ldrb	w4, [sp, 49]
	bl	uECC_vli_modMult
	add	x0, sp, 72
	ldr	x3, [sp]
	ldr	w2, [sp, 28]
	ldr	x1, [sp, 32]
	bl	bits2int
	ldr	x0, [sp]
	add	x3, x0, 36
	add	x2, sp, 104
	add	x1, sp, 72
	add	x0, sp, 104
	ldrb	w4, [sp, 49]
	bl	uECC_vli_modAdd
	ldr	x0, [sp]
	add	x2, x0, 36
	add	x1, sp, 104
	add	x0, sp, 104
	ldrb	w4, [sp, 49]
	mov	x3, x2
	ldr	x2, [sp, 16]
	bl	uECC_vli_modMult
	add	x0, sp, 104
	ldrb	w1, [sp, 49]
	bl	uECC_vli_numBits
	sxth	w0, w0
	mov	w1, w0
	ldr	x0, [sp]
	ldrsb	w0, [x0, 1]
	lsl	w0, w0, 3
	cmp	w1, w0
	ble	.L15
	mov	w0, 0
	b	.L16
.L15:
	ldr	x0, [sp]
	ldrsb	w0, [x0, 1]
	sxtb	x0, w0
	ldr	x1, [sp, 8]
	add	x3, x1, x0
	ldr	x0, [sp]
	ldrsb	w0, [x0, 1]
	mov	w1, w0
	add	x0, sp, 104
	mov	x2, x0
	mov	x0, x3
	bl	uECC_vli_nativeToBytes
	mov	w0, 1
.L16:
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 200]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L17
	bl	__stack_chk_fail
.L17:
	mov	w0, w1
	ldp	x29, x30, [sp, 208]
	add	sp, sp, 224
	.cfi_restore 29
	.cfi_restore 30
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
	sub	sp, sp, #192
	.cfi_def_cfa_offset 192
	stp	x29, x30, [sp, 176]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 176
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	w2, [sp, 28]
	str	x3, [sp, 16]
	str	x4, [sp, 8]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 168]
	mov	x1, 0
	str	wzr, [sp, 60]
	b	.L19
.L24:
	bl	uECC_get_rng
	str	x0, [sp, 64]
	ldr	x0, [sp, 64]
	cmp	x0, 0
	beq	.L20
	add	x0, sp, 104
	ldr	x2, [sp, 64]
	mov	w1, 64
	blr	x2
	cmp	w0, 0
	bne	.L21
.L20:
	mov	w0, 0
	b	.L25
.L21:
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
	add	x1, sp, 104
	add	x0, sp, 72
	bl	uECC_vli_mmod
	add	x0, sp, 72
	ldr	x5, [sp, 8]
	ldr	x4, [sp, 16]
	mov	x3, x0
	ldr	w2, [sp, 28]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	uECC_sign_with_k
	cmp	w0, 0
	beq	.L23
	mov	w0, 1
	b	.L25
.L23:
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
.L19:
	ldr	w0, [sp, 60]
	cmp	w0, 63
	bls	.L24
	mov	w0, 0
.L25:
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 168]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L26
	bl	__stack_chk_fail
.L26:
	mov	w0, w1
	ldp	x29, x30, [sp, 176]
	add	sp, sp, 192
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2:
	.size	uECC_sign, .-uECC_sign
	.align	2
	.type	smax, %function
smax:
.LFB3:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	strh	w0, [sp, 14]
	strh	w1, [sp, 12]
	ldrh	w0, [sp, 14]
	ldrsh	w3, [sp, 12]
	sxth	w2, w0
	ldrh	w1, [sp, 12]
	cmp	w3, w2
	csel	w0, w1, w0, ge
	sxth	w0, w0
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	smax, .-smax
	.align	2
	.global	uECC_verify
	.type	uECC_verify, %function
uECC_verify:
.LFB4:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x19, [sp, 16]
	sub	sp, sp, #560
	.cfi_def_cfa_offset 592
	.cfi_offset 19, -16
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	w2, [sp, 28]
	str	x3, [sp, 16]
	str	x4, [sp, 8]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 552]
	mov	x1, 0
	ldr	x0, [sp, 8]
	ldrb	w0, [x0]
	strb	w0, [sp, 54]
	ldr	x0, [sp, 8]
	ldrsh	w0, [x0, 2]
	add	w0, w0, 31
	add	w1, w0, 31
	cmp	w0, 0
	csel	w0, w1, w0, lt
	asr	w0, w0, 5
	strb	w0, [sp, 55]
	ldrsb	w0, [sp, 55]
	sub	w0, w0, #1
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 168
	str	wzr, [x1, x0]
	ldrsb	w0, [sp, 55]
	sub	w0, w0, #1
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 360
	str	wzr, [x1, x0]
	ldrsb	w0, [sp, 55]
	sub	w0, w0, #1
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 392
	str	wzr, [x1, x0]
	ldr	x0, [sp, 8]
	ldrsb	w0, [x0, 1]
	mov	w1, w0
	add	x0, sp, 488
	mov	w2, w1
	ldr	x1, [sp, 40]
	bl	uECC_vli_bytesToNative
	ldrsb	x0, [sp, 54]
	lsl	x0, x0, 2
	add	x1, sp, 488
	add	x3, x1, x0
	ldr	x0, [sp, 8]
	ldrsb	w0, [x0, 1]
	sxtb	x0, w0
	ldr	x1, [sp, 40]
	add	x1, x1, x0
	ldr	x0, [sp, 8]
	ldrsb	w0, [x0, 1]
	mov	w2, w0
	mov	x0, x3
	bl	uECC_vli_bytesToNative
	ldr	x0, [sp, 8]
	ldrsb	w0, [x0, 1]
	mov	w1, w0
	add	x0, sp, 360
	mov	w2, w1
	ldr	x1, [sp, 16]
	bl	uECC_vli_bytesToNative
	ldr	x0, [sp, 8]
	ldrsb	w0, [x0, 1]
	sxtb	x0, w0
	ldr	x1, [sp, 16]
	add	x1, x1, x0
	ldr	x0, [sp, 8]
	ldrsb	w0, [x0, 1]
	mov	w2, w0
	add	x0, sp, 392
	bl	uECC_vli_bytesToNative
	add	x0, sp, 360
	ldrb	w1, [sp, 54]
	bl	uECC_vli_isZero
	cmp	w0, 0
	bne	.L30
	add	x0, sp, 392
	ldrb	w1, [sp, 54]
	bl	uECC_vli_isZero
	cmp	w0, 0
	beq	.L31
.L30:
	mov	w0, 0
	b	.L43
.L31:
	ldr	x0, [sp, 8]
	add	x0, x0, 36
	add	x1, sp, 360
	ldrb	w2, [sp, 55]
	bl	uECC_vli_cmp_unsafe
	sxtb	w0, w0
	cmp	w0, 1
	bne	.L33
	ldr	x0, [sp, 8]
	add	x0, x0, 36
	add	x1, sp, 392
	ldrb	w2, [sp, 55]
	bl	uECC_vli_cmp_unsafe
	sxtb	w0, w0
	cmp	w0, 1
	beq	.L34
.L33:
	mov	w0, 0
	b	.L43
.L34:
	ldr	x0, [sp, 8]
	add	x2, x0, 36
	add	x1, sp, 392
	add	x0, sp, 136
	ldrb	w3, [sp, 55]
	bl	uECC_vli_modInv
	ldrsb	w0, [sp, 55]
	sub	w0, w0, #1
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 72
	str	wzr, [x1, x0]
	add	x0, sp, 72
	ldr	x3, [sp, 8]
	ldr	w2, [sp, 28]
	ldr	x1, [sp, 32]
	bl	bits2int
	ldr	x0, [sp, 8]
	add	x3, x0, 36
	add	x2, sp, 136
	add	x1, sp, 72
	add	x0, sp, 72
	ldrb	w4, [sp, 55]
	bl	uECC_vli_modMult
	ldr	x0, [sp, 8]
	add	x3, x0, 36
	add	x2, sp, 136
	add	x1, sp, 360
	add	x0, sp, 104
	ldrb	w4, [sp, 55]
	bl	uECC_vli_modMult
	add	x1, sp, 488
	add	x0, sp, 424
	ldrb	w2, [sp, 54]
	bl	uECC_vli_set
	ldrsb	x0, [sp, 54]
	lsl	x0, x0, 2
	add	x1, sp, 424
	add	x3, x1, x0
	ldrsb	x0, [sp, 54]
	lsl	x0, x0, 2
	add	x1, sp, 488
	add	x0, x1, x0
	ldrb	w2, [sp, 54]
	mov	x1, x0
	mov	x0, x3
	bl	uECC_vli_set
	ldr	x0, [sp, 8]
	add	x1, x0, 68
	add	x0, sp, 232
	ldrb	w2, [sp, 54]
	bl	uECC_vli_set
	ldr	x0, [sp, 8]
	add	x1, x0, 68
	ldrsb	x0, [sp, 54]
	lsl	x0, x0, 2
	add	x1, x1, x0
	add	x0, sp, 264
	ldrb	w2, [sp, 54]
	bl	uECC_vli_set
	ldr	x0, [sp, 8]
	add	x3, x0, 4
	add	x2, sp, 232
	add	x1, sp, 424
	add	x0, sp, 136
	ldrb	w4, [sp, 54]
	bl	uECC_vli_modSub
	ldrsb	x0, [sp, 54]
	lsl	x0, x0, 2
	add	x1, sp, 424
	add	x3, x1, x0
	add	x2, sp, 424
	add	x1, sp, 264
	add	x0, sp, 232
	ldr	x4, [sp, 8]
	bl	XYcZ_add
	ldr	x0, [sp, 8]
	add	x2, x0, 4
	add	x1, sp, 136
	add	x0, sp, 136
	ldrb	w3, [sp, 54]
	bl	uECC_vli_modInv
	ldrsb	x0, [sp, 54]
	lsl	x0, x0, 2
	add	x1, sp, 424
	add	x1, x1, x0
	add	x2, sp, 136
	add	x0, sp, 424
	ldr	x3, [sp, 8]
	bl	apply_z
	add	x0, sp, 568
	sub	x0, x0, #240
	str	xzr, [x0]
	ldr	x0, [sp, 8]
	add	x1, x0, 68
	add	x0, sp, 568
	sub	x0, x0, #240
	str	x1, [x0, 8]
	add	x0, sp, 568
	sub	x0, x0, #240
	add	x1, sp, 488
	str	x1, [x0, 16]
	add	x0, sp, 568
	sub	x0, x0, #240
	add	x1, sp, 424
	str	x1, [x0, 24]
	add	x0, sp, 72
	ldrb	w1, [sp, 55]
	bl	uECC_vli_numBits
	sxth	w19, w0
	add	x0, sp, 104
	ldrb	w1, [sp, 55]
	bl	uECC_vli_numBits
	sxth	w0, w0
	mov	w1, w0
	mov	w0, w19
	bl	smax
	strh	w0, [sp, 58]
	ldrh	w0, [sp, 58]
	sub	w0, w0, #1
	and	w0, w0, 65535
	sxth	w1, w0
	add	x0, sp, 72
	bl	uECC_vli_testBit
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	mov	w19, w0
	ldrh	w0, [sp, 58]
	sub	w0, w0, #1
	and	w0, w0, 65535
	sxth	w1, w0
	add	x0, sp, 104
	bl	uECC_vli_testBit
	cmp	w0, 0
	beq	.L35
	mov	w0, 2
	b	.L36
.L35:
	mov	w0, 0
.L36:
	orr	w1, w0, w19
	add	x0, sp, 568
	sub	x0, x0, #240
	sxtw	x1, w1
	ldr	x0, [x0, x1, lsl 3]
	str	x0, [sp, 64]
	add	x0, sp, 168
	ldrb	w2, [sp, 54]
	ldr	x1, [sp, 64]
	bl	uECC_vli_set
	ldrsb	x0, [sp, 54]
	lsl	x0, x0, 2
	ldr	x1, [sp, 64]
	add	x1, x1, x0
	add	x0, sp, 200
	ldrb	w2, [sp, 54]
	bl	uECC_vli_set
	add	x0, sp, 136
	ldrb	w1, [sp, 54]
	bl	uECC_vli_clear
	mov	w0, 1
	str	w0, [sp, 136]
	ldrh	w0, [sp, 58]
	sub	w0, w0, #2
	and	w0, w0, 65535
	strh	w0, [sp, 56]
	b	.L37
.L41:
	ldr	x0, [sp, 8]
	ldr	x4, [x0, 168]
	add	x2, sp, 136
	add	x1, sp, 200
	add	x0, sp, 168
	ldr	x3, [sp, 8]
	blr	x4
	add	x0, sp, 72
	ldrh	w1, [sp, 56]
	bl	uECC_vli_testBit
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	mov	w19, w0
	add	x0, sp, 104
	ldrh	w1, [sp, 56]
	bl	uECC_vli_testBit
	cmp	w0, 0
	beq	.L38
	mov	w0, 2
	b	.L39
.L38:
	mov	w0, 0
.L39:
	orr	w0, w0, w19
	str	w0, [sp, 60]
	add	x0, sp, 568
	sub	x0, x0, #240
	ldr	w1, [sp, 60]
	ldr	x0, [x0, x1, lsl 3]
	str	x0, [sp, 64]
	ldr	x0, [sp, 64]
	cmp	x0, 0
	beq	.L40
	add	x0, sp, 232
	ldrb	w2, [sp, 54]
	ldr	x1, [sp, 64]
	bl	uECC_vli_set
	ldrsb	x0, [sp, 54]
	lsl	x0, x0, 2
	ldr	x1, [sp, 64]
	add	x1, x1, x0
	add	x0, sp, 264
	ldrb	w2, [sp, 54]
	bl	uECC_vli_set
	add	x2, sp, 136
	add	x1, sp, 264
	add	x0, sp, 232
	ldr	x3, [sp, 8]
	bl	apply_z
	ldr	x0, [sp, 8]
	add	x3, x0, 4
	add	x2, sp, 232
	add	x1, sp, 168
	add	x0, sp, 296
	ldrb	w4, [sp, 54]
	bl	uECC_vli_modSub
	add	x3, sp, 200
	add	x2, sp, 168
	add	x1, sp, 264
	add	x0, sp, 232
	ldr	x4, [sp, 8]
	bl	XYcZ_add
	add	x2, sp, 296
	add	x1, sp, 136
	add	x0, sp, 136
	ldr	x3, [sp, 8]
	bl	uECC_vli_modMult_fast
.L40:
	ldrh	w0, [sp, 56]
	sub	w0, w0, #1
	and	w0, w0, 65535
	strh	w0, [sp, 56]
.L37:
	ldrsh	w0, [sp, 56]
	cmp	w0, 0
	bge	.L41
	ldr	x0, [sp, 8]
	add	x2, x0, 4
	add	x1, sp, 136
	add	x0, sp, 136
	ldrb	w3, [sp, 54]
	bl	uECC_vli_modInv
	add	x2, sp, 136
	add	x1, sp, 200
	add	x0, sp, 168
	ldr	x3, [sp, 8]
	bl	apply_z
	ldr	x0, [sp, 8]
	add	x0, x0, 36
	add	x1, sp, 168
	ldrb	w2, [sp, 55]
	bl	uECC_vli_cmp_unsafe
	sxtb	w0, w0
	cmp	w0, 1
	beq	.L42
	ldr	x0, [sp, 8]
	add	x2, x0, 36
	add	x1, sp, 168
	add	x0, sp, 168
	ldrb	w3, [sp, 55]
	bl	uECC_vli_sub
.L42:
	add	x1, sp, 360
	add	x0, sp, 168
	ldrb	w2, [sp, 54]
	bl	uECC_vli_equal
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
.L43:
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 552]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L44
	bl	__stack_chk_fail
.L44:
	mov	w0, w1
	add	sp, sp, 560
	.cfi_def_cfa_offset 32
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4:
	.size	uECC_verify, .-uECC_verify
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
