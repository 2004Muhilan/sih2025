	.arch armv8-a
	.file	"tinycrypt_ecc.c"
	.text
	.section	.data.rel.ro.local,"aw"
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
	.section	.data.rel,"aw"
	.align	3
	.type	g_rng_function, %object
	.size	g_rng_function, 8
g_rng_function:
	.xword	default_CSPRNG
	.text
	.align	2
	.global	uECC_set_rng
	.type	uECC_set_rng, %function
uECC_set_rng:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	adrp	x0, g_rng_function
	add	x0, x0, :lo12:g_rng_function
	ldr	x1, [sp, 8]
	str	x1, [x0]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	uECC_set_rng, .-uECC_set_rng
	.align	2
	.global	uECC_get_rng
	.type	uECC_get_rng, %function
uECC_get_rng:
.LFB1:
	.cfi_startproc
	adrp	x0, g_rng_function
	add	x0, x0, :lo12:g_rng_function
	ldr	x0, [x0]
	ret
	.cfi_endproc
.LFE1:
	.size	uECC_get_rng, .-uECC_get_rng
	.align	2
	.global	uECC_curve_private_key_size
	.type	uECC_curve_private_key_size, %function
uECC_curve_private_key_size:
.LFB2:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldrsh	w0, [x0, 2]
	add	w0, w0, 7
	add	w1, w0, 7
	cmp	w0, 0
	csel	w0, w1, w0, lt
	asr	w0, w0, 3
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2:
	.size	uECC_curve_private_key_size, .-uECC_curve_private_key_size
	.align	2
	.global	uECC_curve_public_key_size
	.type	uECC_curve_public_key_size, %function
uECC_curve_public_key_size:
.LFB3:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldrsb	w0, [x0, 1]
	lsl	w0, w0, 1
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	uECC_curve_public_key_size, .-uECC_curve_public_key_size
	.align	2
	.global	uECC_vli_clear
	.type	uECC_vli_clear, %function
uECC_vli_clear:
.LFB4:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	strb	w1, [sp, 7]
	strb	wzr, [sp, 31]
	b	.L9
.L10:
	ldrsb	x0, [sp, 31]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	str	wzr, [x0]
	ldrb	w0, [sp, 31]
	add	w0, w0, 1
	and	w0, w0, 255
	strb	w0, [sp, 31]
.L9:
	ldrsb	w1, [sp, 31]
	ldrsb	w0, [sp, 7]
	cmp	w1, w0
	blt	.L10
	nop
	nop
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4:
	.size	uECC_vli_clear, .-uECC_vli_clear
	.align	2
	.global	uECC_vli_isZero
	.type	uECC_vli_isZero, %function
uECC_vli_isZero:
.LFB5:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	strb	w1, [sp, 7]
	str	wzr, [sp, 28]
	strb	wzr, [sp, 27]
	b	.L12
.L13:
	ldrsb	x0, [sp, 27]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	orr	w0, w1, w0
	str	w0, [sp, 28]
	ldrb	w0, [sp, 27]
	add	w0, w0, 1
	and	w0, w0, 255
	strb	w0, [sp, 27]
.L12:
	ldrsb	w1, [sp, 27]
	ldrsb	w0, [sp, 7]
	cmp	w1, w0
	blt	.L13
	ldr	w0, [sp, 28]
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE5:
	.size	uECC_vli_isZero, .-uECC_vli_isZero
	.align	2
	.global	uECC_vli_testBit
	.type	uECC_vli_testBit, %function
uECC_vli_testBit:
.LFB6:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	strh	w1, [sp, 6]
	ldrsh	w0, [sp, 6]
	asr	w0, w0, 5
	sxth	w0, w0
	sxth	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrh	w0, [sp, 6]
	and	w0, w0, 31
	mov	w2, 1
	lsl	w0, w2, w0
	and	w0, w1, w0
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	uECC_vli_testBit, .-uECC_vli_testBit
	.align	2
	.type	vli_numDigits, %function
vli_numDigits:
.LFB7:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	strb	w1, [sp, 7]
	ldrb	w0, [sp, 7]
	sub	w0, w0, #1
	and	w0, w0, 255
	strb	w0, [sp, 31]
	b	.L18
.L20:
	ldrb	w0, [sp, 31]
	sub	w0, w0, #1
	and	w0, w0, 255
	strb	w0, [sp, 31]
.L18:
	ldrsb	w0, [sp, 31]
	cmp	w0, 0
	blt	.L19
	ldrsb	x0, [sp, 31]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w0, [x0]
	cmp	w0, 0
	beq	.L20
.L19:
	ldrb	w0, [sp, 31]
	add	w0, w0, 1
	and	w0, w0, 255
	sxtb	w0, w0
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	vli_numDigits, .-vli_numDigits
	.align	2
	.global	uECC_vli_numBits
	.type	uECC_vli_numBits, %function
uECC_vli_numBits:
.LFB8:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	strb	w1, [sp, 23]
	ldrb	w1, [sp, 23]
	ldr	x0, [sp, 24]
	bl	vli_numDigits
	strb	w0, [sp, 39]
	ldrsb	w0, [sp, 39]
	cmp	w0, 0
	bne	.L23
	mov	w0, 0
	b	.L24
.L23:
	ldrsb	x0, [sp, 39]
	lsl	x0, x0, 2
	sub	x0, x0, #4
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	w0, [x0]
	str	w0, [sp, 44]
	str	wzr, [sp, 40]
	b	.L25
.L26:
	ldr	w0, [sp, 44]
	lsr	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L25:
	ldr	w0, [sp, 44]
	cmp	w0, 0
	bne	.L26
	ldrsb	w0, [sp, 39]
	and	w0, w0, 65535
	sub	w0, w0, #1
	and	w0, w0, 65535
	ubfiz	w0, w0, 5, 11
	and	w1, w0, 65535
	ldr	w0, [sp, 40]
	and	w0, w0, 65535
	add	w0, w1, w0
	and	w0, w0, 65535
	sxth	w0, w0
.L24:
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8:
	.size	uECC_vli_numBits, .-uECC_vli_numBits
	.align	2
	.global	uECC_vli_set
	.type	uECC_vli_set, %function
uECC_vli_set:
.LFB9:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	strb	w2, [sp, 15]
	strb	wzr, [sp, 47]
	b	.L28
.L29:
	ldrsb	x0, [sp, 47]
	lsl	x0, x0, 2
	ldr	x1, [sp, 16]
	add	x1, x1, x0
	ldrsb	x0, [sp, 47]
	lsl	x0, x0, 2
	ldr	x2, [sp, 24]
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
	ldrb	w0, [sp, 47]
	add	w0, w0, 1
	and	w0, w0, 255
	strb	w0, [sp, 47]
.L28:
	ldrsb	w1, [sp, 47]
	ldrsb	w0, [sp, 15]
	cmp	w1, w0
	blt	.L29
	nop
	nop
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9:
	.size	uECC_vli_set, .-uECC_vli_set
	.align	2
	.global	uECC_vli_cmp_unsafe
	.type	uECC_vli_cmp_unsafe, %function
uECC_vli_cmp_unsafe:
.LFB10:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	strb	w2, [sp, 15]
	ldrb	w0, [sp, 15]
	sub	w0, w0, #1
	and	w0, w0, 255
	strb	w0, [sp, 47]
	b	.L31
.L35:
	ldrsb	x0, [sp, 47]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsb	x0, [sp, 47]
	lsl	x0, x0, 2
	ldr	x2, [sp, 16]
	add	x0, x2, x0
	ldr	w0, [x0]
	cmp	w1, w0
	bls	.L32
	mov	w0, 1
	b	.L33
.L32:
	ldrsb	x0, [sp, 47]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsb	x0, [sp, 47]
	lsl	x0, x0, 2
	ldr	x2, [sp, 16]
	add	x0, x2, x0
	ldr	w0, [x0]
	cmp	w1, w0
	bcs	.L34
	mov	w0, -1
	b	.L33
.L34:
	ldrb	w0, [sp, 47]
	sub	w0, w0, #1
	and	w0, w0, 255
	strb	w0, [sp, 47]
.L31:
	ldrsb	w0, [sp, 47]
	cmp	w0, 0
	bge	.L35
	mov	w0, 0
.L33:
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10:
	.size	uECC_vli_cmp_unsafe, .-uECC_vli_cmp_unsafe
	.align	2
	.global	uECC_vli_equal
	.type	uECC_vli_equal, %function
uECC_vli_equal:
.LFB11:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	strb	w2, [sp, 15]
	str	wzr, [sp, 44]
	ldrb	w0, [sp, 15]
	sub	w0, w0, #1
	and	w0, w0, 255
	strb	w0, [sp, 43]
	b	.L37
.L38:
	ldrsb	x0, [sp, 43]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsb	x0, [sp, 43]
	lsl	x0, x0, 2
	ldr	x2, [sp, 16]
	add	x0, x2, x0
	ldr	w0, [x0]
	eor	w0, w1, w0
	ldr	w1, [sp, 44]
	orr	w0, w1, w0
	str	w0, [sp, 44]
	ldrb	w0, [sp, 43]
	sub	w0, w0, #1
	and	w0, w0, 255
	strb	w0, [sp, 43]
.L37:
	ldrsb	w0, [sp, 43]
	cmp	w0, 0
	bge	.L38
	ldr	w0, [sp, 44]
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11:
	.size	uECC_vli_equal, .-uECC_vli_equal
	.align	2
	.global	cond_set
	.type	cond_set, %function
cond_set:
.LFB12:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	str	w2, [sp, 4]
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 4]
	mul	w1, w1, w0
	ldr	w0, [sp, 4]
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	mov	w2, w0
	ldr	w0, [sp, 8]
	mul	w0, w2, w0
	orr	w0, w1, w0
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE12:
	.size	cond_set, .-cond_set
	.align	2
	.global	uECC_vli_sub
	.type	uECC_vli_sub, %function
uECC_vli_sub:
.LFB13:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	strb	w3, [sp, 23]
	str	wzr, [sp, 52]
	strb	wzr, [sp, 51]
	b	.L43
.L44:
	ldrsb	x0, [sp, 51]
	lsl	x0, x0, 2
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsb	x0, [sp, 51]
	lsl	x0, x0, 2
	ldr	x2, [sp, 24]
	add	x0, x2, x0
	ldr	w0, [x0]
	sub	w1, w1, w0
	ldr	w0, [sp, 52]
	sub	w0, w1, w0
	str	w0, [sp, 56]
	ldrsb	x0, [sp, 51]
	lsl	x0, x0, 2
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [sp, 56]
	cmp	w1, w0
	cset	w0, hi
	and	w0, w0, 255
	str	w0, [sp, 60]
	ldrsb	x0, [sp, 51]
	lsl	x0, x0, 2
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [sp, 56]
	cmp	w1, w0
	cset	w0, ne
	and	w0, w0, 255
	mov	w2, w0
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 60]
	bl	cond_set
	str	w0, [sp, 52]
	ldrsb	x0, [sp, 51]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	w1, [sp, 56]
	str	w1, [x0]
	ldrb	w0, [sp, 51]
	add	w0, w0, 1
	and	w0, w0, 255
	strb	w0, [sp, 51]
.L43:
	ldrsb	w1, [sp, 51]
	ldrsb	w0, [sp, 23]
	cmp	w1, w0
	blt	.L44
	ldr	w0, [sp, 52]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE13:
	.size	uECC_vli_sub, .-uECC_vli_sub
	.align	2
	.type	uECC_vli_add, %function
uECC_vli_add:
.LFB14:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	strb	w3, [sp, 23]
	str	wzr, [sp, 52]
	strb	wzr, [sp, 51]
	b	.L47
.L48:
	ldrsb	x0, [sp, 51]
	lsl	x0, x0, 2
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsb	x0, [sp, 51]
	lsl	x0, x0, 2
	ldr	x2, [sp, 24]
	add	x0, x2, x0
	ldr	w0, [x0]
	add	w0, w1, w0
	ldr	w1, [sp, 52]
	add	w0, w1, w0
	str	w0, [sp, 56]
	ldrsb	x0, [sp, 51]
	lsl	x0, x0, 2
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [sp, 56]
	cmp	w1, w0
	cset	w0, cc
	and	w0, w0, 255
	str	w0, [sp, 60]
	ldrsb	x0, [sp, 51]
	lsl	x0, x0, 2
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [sp, 56]
	cmp	w1, w0
	cset	w0, ne
	and	w0, w0, 255
	mov	w2, w0
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 60]
	bl	cond_set
	str	w0, [sp, 52]
	ldrsb	x0, [sp, 51]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	w1, [sp, 56]
	str	w1, [x0]
	ldrb	w0, [sp, 51]
	add	w0, w0, 1
	and	w0, w0, 255
	strb	w0, [sp, 51]
.L47:
	ldrsb	w1, [sp, 51]
	ldrsb	w0, [sp, 23]
	cmp	w1, w0
	blt	.L48
	ldr	w0, [sp, 52]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE14:
	.size	uECC_vli_add, .-uECC_vli_add
	.align	2
	.global	uECC_vli_cmp
	.type	uECC_vli_cmp, %function
uECC_vli_cmp:
.LFB15:
	.cfi_startproc
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, 80]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 80
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	strb	w2, [sp, 15]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 72]
	mov	x1, 0
	add	x0, sp, 40
	ldrb	w3, [sp, 15]
	ldr	x2, [sp, 16]
	ldr	x1, [sp, 24]
	bl	uECC_vli_sub
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	str	w0, [sp, 32]
	add	x0, sp, 40
	ldrb	w1, [sp, 15]
	bl	uECC_vli_isZero
	str	w0, [sp, 36]
	ldr	w0, [sp, 36]
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, w0
	ldr	w0, [sp, 32]
	and	w0, w0, 255
	ubfiz	w0, w0, 1, 7
	and	w0, w0, 255
	sub	w0, w1, w0
	and	w0, w0, 255
	sxtb	w0, w0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 72]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L52
	bl	__stack_chk_fail
.L52:
	mov	w0, w1
	ldp	x29, x30, [sp, 80]
	add	sp, sp, 96
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE15:
	.size	uECC_vli_cmp, .-uECC_vli_cmp
	.align	2
	.type	uECC_vli_rshift1, %function
uECC_vli_rshift1:
.LFB16:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	strb	w1, [sp, 7]
	ldr	x0, [sp, 8]
	str	x0, [sp, 24]
	str	wzr, [sp, 16]
	ldrsb	x0, [sp, 7]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	str	x0, [sp, 8]
	b	.L54
.L55:
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	str	w0, [sp, 20]
	ldr	w0, [sp, 20]
	lsr	w1, w0, 1
	ldr	w0, [sp, 16]
	orr	w1, w1, w0
	ldr	x0, [sp, 8]
	str	w1, [x0]
	ldr	w0, [sp, 20]
	lsl	w0, w0, 31
	str	w0, [sp, 16]
.L54:
	ldr	x0, [sp, 8]
	sub	x1, x0, #4
	str	x1, [sp, 8]
	ldr	x1, [sp, 24]
	cmp	x1, x0
	bcc	.L55
	nop
	nop
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE16:
	.size	uECC_vli_rshift1, .-uECC_vli_rshift1
	.align	2
	.type	muladd, %function
muladd:
.LFB17:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	str	x2, [sp, 16]
	str	x3, [sp, 8]
	str	x4, [sp]
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	mul	x0, x1, x0
	str	x0, [sp, 32]
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	uxtw	x0, w0
	lsl	x1, x0, 32
	ldr	x0, [sp, 16]
	ldr	w0, [x0]
	uxtw	x0, w0
	orr	x0, x1, x0
	str	x0, [sp, 40]
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 32]
	add	x0, x1, x0
	str	x0, [sp, 40]
	ldr	x0, [sp]
	ldr	w0, [x0]
	ldr	x2, [sp, 40]
	ldr	x1, [sp, 32]
	cmp	x2, x1
	cset	w1, cc
	and	w1, w1, 255
	add	w1, w0, w1
	ldr	x0, [sp]
	str	w1, [x0]
	ldr	x0, [sp, 40]
	lsr	x0, x0, 32
	mov	w1, w0
	ldr	x0, [sp, 8]
	str	w1, [x0]
	ldr	x0, [sp, 40]
	mov	w1, w0
	ldr	x0, [sp, 16]
	str	w1, [x0]
	nop
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE17:
	.size	muladd, .-muladd
	.align	2
	.type	uECC_vli_mult, %function
uECC_vli_mult:
.LFB18:
	.cfi_startproc
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, 64]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 64
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	strb	w3, [sp, 7]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 56]
	mov	x1, 0
	str	wzr, [sp, 44]
	str	wzr, [sp, 48]
	str	wzr, [sp, 52]
	strb	wzr, [sp, 43]
	b	.L58
.L61:
	strb	wzr, [sp, 42]
	b	.L59
.L60:
	ldrsb	x0, [sp, 42]
	lsl	x0, x0, 2
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	ldr	w5, [x0]
	ldrsb	w1, [sp, 43]
	ldrsb	w0, [sp, 42]
	sub	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w0, [x0]
	add	x3, sp, 52
	add	x2, sp, 48
	add	x1, sp, 44
	mov	x4, x3
	mov	x3, x2
	mov	x2, x1
	mov	w1, w0
	mov	w0, w5
	bl	muladd
	ldrb	w0, [sp, 42]
	add	w0, w0, 1
	and	w0, w0, 255
	strb	w0, [sp, 42]
.L59:
	ldrsb	w1, [sp, 42]
	ldrsb	w0, [sp, 43]
	cmp	w1, w0
	ble	.L60
	ldrsb	x0, [sp, 43]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	w1, [sp, 44]
	str	w1, [x0]
	ldr	w0, [sp, 48]
	str	w0, [sp, 44]
	ldr	w0, [sp, 52]
	str	w0, [sp, 48]
	str	wzr, [sp, 52]
	ldrb	w0, [sp, 43]
	add	w0, w0, 1
	and	w0, w0, 255
	strb	w0, [sp, 43]
.L58:
	ldrsb	w1, [sp, 43]
	ldrsb	w0, [sp, 7]
	cmp	w1, w0
	blt	.L61
	ldrb	w0, [sp, 7]
	strb	w0, [sp, 43]
	b	.L62
.L65:
	ldrb	w1, [sp, 43]
	ldrb	w0, [sp, 7]
	sub	w0, w1, w0
	and	w0, w0, 255
	add	w0, w0, 1
	and	w0, w0, 255
	strb	w0, [sp, 42]
	b	.L63
.L64:
	ldrsb	x0, [sp, 42]
	lsl	x0, x0, 2
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	ldr	w5, [x0]
	ldrsb	w1, [sp, 43]
	ldrsb	w0, [sp, 42]
	sub	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w0, [x0]
	add	x3, sp, 52
	add	x2, sp, 48
	add	x1, sp, 44
	mov	x4, x3
	mov	x3, x2
	mov	x2, x1
	mov	w1, w0
	mov	w0, w5
	bl	muladd
	ldrb	w0, [sp, 42]
	add	w0, w0, 1
	and	w0, w0, 255
	strb	w0, [sp, 42]
.L63:
	ldrsb	w1, [sp, 42]
	ldrsb	w0, [sp, 7]
	cmp	w1, w0
	blt	.L64
	ldrsb	x0, [sp, 43]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	w1, [sp, 44]
	str	w1, [x0]
	ldr	w0, [sp, 48]
	str	w0, [sp, 44]
	ldr	w0, [sp, 52]
	str	w0, [sp, 48]
	str	wzr, [sp, 52]
	ldrb	w0, [sp, 43]
	add	w0, w0, 1
	and	w0, w0, 255
	strb	w0, [sp, 43]
.L62:
	ldrsb	w1, [sp, 43]
	ldrsb	w0, [sp, 7]
	lsl	w0, w0, 1
	sub	w0, w0, #1
	cmp	w1, w0
	blt	.L65
	ldrsb	w0, [sp, 7]
	lsl	w0, w0, 1
	sxtw	x0, w0
	lsl	x0, x0, 2
	sub	x0, x0, #4
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	w1, [sp, 44]
	str	w1, [x0]
	nop
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 56]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L66
	bl	__stack_chk_fail
.L66:
	ldp	x29, x30, [sp, 64]
	add	sp, sp, 80
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE18:
	.size	uECC_vli_mult, .-uECC_vli_mult
	.align	2
	.global	uECC_vli_modAdd
	.type	uECC_vli_modAdd, %function
uECC_vli_modAdd:
.LFB19:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	str	x3, [sp, 32]
	strb	w4, [sp, 31]
	ldrb	w3, [sp, 31]
	ldr	x2, [sp, 40]
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	bl	uECC_vli_add
	str	w0, [sp, 76]
	ldr	w0, [sp, 76]
	cmp	w0, 0
	bne	.L68
	ldrb	w2, [sp, 31]
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 32]
	bl	uECC_vli_cmp_unsafe
	sxtb	w0, w0
	cmp	w0, 1
	beq	.L70
.L68:
	ldrb	w3, [sp, 31]
	ldr	x2, [sp, 32]
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 56]
	bl	uECC_vli_sub
.L70:
	nop
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE19:
	.size	uECC_vli_modAdd, .-uECC_vli_modAdd
	.align	2
	.global	uECC_vli_modSub
	.type	uECC_vli_modSub, %function
uECC_vli_modSub:
.LFB20:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	str	x3, [sp, 32]
	strb	w4, [sp, 31]
	ldrb	w3, [sp, 31]
	ldr	x2, [sp, 40]
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	bl	uECC_vli_sub
	str	w0, [sp, 76]
	ldr	w0, [sp, 76]
	cmp	w0, 0
	beq	.L73
	ldrb	w3, [sp, 31]
	ldr	x2, [sp, 32]
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 56]
	bl	uECC_vli_add
.L73:
	nop
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE20:
	.size	uECC_vli_modSub, .-uECC_vli_modSub
	.align	2
	.global	uECC_vli_mmod
	.type	uECC_vli_mmod, %function
uECC_vli_mmod:
.LFB21:
	.cfi_startproc
	sub	sp, sp, #240
	.cfi_def_cfa_offset 240
	stp	x29, x30, [sp, 208]
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	add	x29, sp, 208
	str	x19, [sp, 224]
	.cfi_offset 19, -16
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	strb	w3, [sp, 7]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 200]
	mov	x1, 0
	add	x0, sp, 136
	str	x0, [sp, 56]
	ldr	x0, [sp, 16]
	str	x0, [sp, 64]
	ldrsb	w0, [sp, 7]
	and	w0, w0, 65535
	ubfiz	w0, w0, 6, 10
	and	w19, w0, 65535
	ldrb	w1, [sp, 7]
	ldr	x0, [sp, 8]
	bl	uECC_vli_numBits
	sxth	w0, w0
	and	w0, w0, 65535
	sub	w0, w19, w0
	and	w0, w0, 65535
	strh	w0, [sp, 38]
	ldrsh	w0, [sp, 38]
	add	w1, w0, 31
	cmp	w0, 0
	csel	w0, w1, w0, lt
	asr	w0, w0, 5
	sxth	w0, w0
	strb	w0, [sp, 36]
	ldrsh	w0, [sp, 38]
	negs	w1, w0
	and	w0, w0, 31
	and	w1, w1, 31
	csneg	w0, w0, w1, mi
	sxth	w0, w0
	strb	w0, [sp, 37]
	str	wzr, [sp, 44]
	add	x0, sp, 72
	ldrb	w1, [sp, 36]
	bl	uECC_vli_clear
	ldrsb	w0, [sp, 37]
	cmp	w0, 0
	ble	.L75
	str	wzr, [sp, 40]
	b	.L76
.L77:
	ldr	w0, [sp, 40]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsb	w0, [sp, 37]
	lsl	w1, w1, w0
	ldrsb	w2, [sp, 36]
	ldr	w0, [sp, 40]
	add	w3, w2, w0
	ldr	w0, [sp, 44]
	orr	w2, w1, w0
	uxtw	x0, w3
	lsl	x0, x0, 2
	add	x1, sp, 72
	str	w2, [x1, x0]
	ldr	w0, [sp, 40]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsb	w0, [sp, 37]
	mov	w2, 32
	sub	w0, w2, w0
	lsr	w0, w1, w0
	str	w0, [sp, 44]
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L76:
	ldrsb	w0, [sp, 7]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	bcc	.L77
	b	.L78
.L75:
	ldrsb	x0, [sp, 36]
	lsl	x0, x0, 2
	add	x1, sp, 72
	add	x0, x1, x0
	ldrb	w2, [sp, 7]
	ldr	x1, [sp, 8]
	bl	uECC_vli_set
.L78:
	mov	w0, 1
	str	w0, [sp, 40]
	b	.L79
.L83:
	str	wzr, [sp, 48]
	strb	wzr, [sp, 35]
	b	.L80
.L82:
	ldr	w0, [sp, 40]
	lsl	x0, x0, 3
	add	x1, sp, 56
	ldr	x1, [x1, x0]
	ldrsb	x0, [sp, 35]
	lsl	x0, x0, 2
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsb	w0, [sp, 35]
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x2, sp, 72
	ldr	w0, [x2, x0]
	sub	w1, w1, w0
	ldr	w0, [sp, 48]
	sub	w0, w1, w0
	str	w0, [sp, 52]
	ldr	w0, [sp, 40]
	lsl	x0, x0, 3
	add	x1, sp, 56
	ldr	x1, [x1, x0]
	ldrsb	x0, [sp, 35]
	lsl	x0, x0, 2
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [sp, 52]
	cmp	w1, w0
	beq	.L81
	ldr	w0, [sp, 40]
	lsl	x0, x0, 3
	add	x1, sp, 56
	ldr	x1, [x1, x0]
	ldrsb	x0, [sp, 35]
	lsl	x0, x0, 2
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [sp, 52]
	cmp	w1, w0
	cset	w0, hi
	and	w0, w0, 255
	str	w0, [sp, 48]
.L81:
	mov	w1, 1
	ldr	w0, [sp, 40]
	sub	w0, w1, w0
	uxtw	x0, w0
	lsl	x0, x0, 3
	add	x1, sp, 56
	ldr	x1, [x1, x0]
	ldrsb	x0, [sp, 35]
	lsl	x0, x0, 2
	add	x0, x1, x0
	ldr	w1, [sp, 52]
	str	w1, [x0]
	ldrb	w0, [sp, 35]
	add	w0, w0, 1
	and	w0, w0, 255
	strb	w0, [sp, 35]
.L80:
	ldrsb	w1, [sp, 35]
	ldrsb	w0, [sp, 7]
	lsl	w0, w0, 1
	cmp	w1, w0
	blt	.L82
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 48]
	cmp	w1, w0
	cset	w0, eq
	and	w0, w0, 255
	str	w0, [sp, 40]
	add	x0, sp, 72
	ldrb	w1, [sp, 7]
	bl	uECC_vli_rshift1
	ldrsb	w0, [sp, 7]
	sub	w0, w0, #1
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 72
	ldr	w1, [x1, x0]
	ldrsb	w0, [sp, 7]
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x2, sp, 72
	ldr	w0, [x2, x0]
	lsl	w0, w0, 31
	ldrsb	w2, [sp, 7]
	sub	w3, w2, #1
	orr	w2, w1, w0
	sxtw	x0, w3
	lsl	x0, x0, 2
	add	x1, sp, 72
	str	w2, [x1, x0]
	ldrsb	x0, [sp, 7]
	lsl	x0, x0, 2
	add	x1, sp, 72
	add	x0, x1, x0
	ldrb	w1, [sp, 7]
	bl	uECC_vli_rshift1
	ldrh	w0, [sp, 38]
	sub	w0, w0, #1
	and	w0, w0, 65535
	strh	w0, [sp, 38]
.L79:
	ldrsh	w0, [sp, 38]
	cmp	w0, 0
	bge	.L83
	ldr	w0, [sp, 40]
	lsl	x0, x0, 3
	add	x1, sp, 56
	ldr	x0, [x1, x0]
	ldrb	w2, [sp, 7]
	mov	x1, x0
	ldr	x0, [sp, 24]
	bl	uECC_vli_set
	nop
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 200]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L84
	bl	__stack_chk_fail
.L84:
	ldr	x19, [sp, 224]
	ldp	x29, x30, [sp, 208]
	add	sp, sp, 240
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE21:
	.size	uECC_vli_mmod, .-uECC_vli_mmod
	.align	2
	.global	uECC_vli_modMult
	.type	uECC_vli_modMult, %function
uECC_vli_modMult:
.LFB22:
	.cfi_startproc
	sub	sp, sp, #144
	.cfi_def_cfa_offset 144
	stp	x29, x30, [sp, 128]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 128
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	str	x3, [sp, 16]
	strb	w4, [sp, 15]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 120]
	mov	x1, 0
	add	x0, sp, 56
	ldrb	w3, [sp, 15]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	bl	uECC_vli_mult
	add	x0, sp, 56
	ldrb	w3, [sp, 15]
	ldr	x2, [sp, 16]
	mov	x1, x0
	ldr	x0, [sp, 40]
	bl	uECC_vli_mmod
	nop
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 120]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L86
	bl	__stack_chk_fail
.L86:
	ldp	x29, x30, [sp, 128]
	add	sp, sp, 144
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE22:
	.size	uECC_vli_modMult, .-uECC_vli_modMult
	.align	2
	.global	uECC_vli_modMult_fast
	.type	uECC_vli_modMult_fast, %function
uECC_vli_modMult_fast:
.LFB23:
	.cfi_startproc
	sub	sp, sp, #128
	.cfi_def_cfa_offset 128
	stp	x29, x30, [sp, 112]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 112
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	str	x3, [sp]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 104]
	mov	x1, 0
	ldr	x0, [sp]
	ldrsb	w1, [x0]
	add	x0, sp, 40
	mov	w3, w1
	ldr	x2, [sp, 8]
	ldr	x1, [sp, 16]
	bl	uECC_vli_mult
	ldr	x0, [sp]
	ldr	x2, [x0, 184]
	add	x0, sp, 40
	mov	x1, x0
	ldr	x0, [sp, 24]
	blr	x2
	nop
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 104]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L88
	bl	__stack_chk_fail
.L88:
	ldp	x29, x30, [sp, 112]
	add	sp, sp, 128
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE23:
	.size	uECC_vli_modMult_fast, .-uECC_vli_modMult_fast
	.align	2
	.type	uECC_vli_modSquare_fast, %function
uECC_vli_modSquare_fast:
.LFB24:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x3, [sp, 24]
	ldr	x2, [sp, 32]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	uECC_vli_modMult_fast
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE24:
	.size	uECC_vli_modSquare_fast, .-uECC_vli_modSquare_fast
	.align	2
	.type	vli_modInv_update, %function
vli_modInv_update:
.LFB25:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	strb	w2, [sp, 31]
	str	wzr, [sp, 60]
	ldr	x0, [sp, 40]
	ldr	w0, [x0]
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L91
	ldrb	w3, [sp, 31]
	ldr	x2, [sp, 32]
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 40]
	bl	uECC_vli_add
	str	w0, [sp, 60]
.L91:
	ldrb	w1, [sp, 31]
	ldr	x0, [sp, 40]
	bl	uECC_vli_rshift1
	ldr	w0, [sp, 60]
	cmp	w0, 0
	beq	.L93
	ldrsb	x0, [sp, 31]
	lsl	x0, x0, 2
	sub	x0, x0, #4
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsb	x0, [sp, 31]
	lsl	x0, x0, 2
	sub	x0, x0, #4
	ldr	x2, [sp, 40]
	add	x0, x2, x0
	orr	w1, w1, -2147483648
	str	w1, [x0]
.L93:
	nop
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE25:
	.size	vli_modInv_update, .-vli_modInv_update
	.align	2
	.global	uECC_vli_modInv
	.type	uECC_vli_modInv, %function
uECC_vli_modInv:
.LFB26:
	.cfi_startproc
	sub	sp, sp, #192
	.cfi_def_cfa_offset 192
	stp	x29, x30, [sp, 176]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 176
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	strb	w3, [sp, 7]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 168]
	mov	x1, 0
	ldrb	w1, [sp, 7]
	ldr	x0, [sp, 16]
	bl	uECC_vli_isZero
	cmp	w0, 0
	beq	.L95
	ldrb	w1, [sp, 7]
	ldr	x0, [sp, 24]
	bl	uECC_vli_clear
	b	.L94
.L95:
	add	x0, sp, 40
	ldrb	w2, [sp, 7]
	ldr	x1, [sp, 16]
	bl	uECC_vli_set
	add	x0, sp, 72
	ldrb	w2, [sp, 7]
	ldr	x1, [sp, 8]
	bl	uECC_vli_set
	add	x0, sp, 104
	ldrb	w1, [sp, 7]
	bl	uECC_vli_clear
	mov	w0, 1
	str	w0, [sp, 104]
	add	x0, sp, 136
	ldrb	w1, [sp, 7]
	bl	uECC_vli_clear
	b	.L97
.L104:
	ldr	w0, [sp, 40]
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L98
	add	x0, sp, 40
	ldrb	w1, [sp, 7]
	bl	uECC_vli_rshift1
	add	x0, sp, 104
	ldrb	w2, [sp, 7]
	ldr	x1, [sp, 8]
	bl	vli_modInv_update
	b	.L97
.L98:
	ldr	w0, [sp, 72]
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L100
	add	x0, sp, 72
	ldrb	w1, [sp, 7]
	bl	uECC_vli_rshift1
	add	x0, sp, 136
	ldrb	w2, [sp, 7]
	ldr	x1, [sp, 8]
	bl	vli_modInv_update
	b	.L97
.L100:
	ldrsb	w0, [sp, 39]
	cmp	w0, 0
	ble	.L101
	add	x2, sp, 72
	add	x1, sp, 40
	add	x0, sp, 40
	ldrb	w3, [sp, 7]
	bl	uECC_vli_sub
	add	x0, sp, 40
	ldrb	w1, [sp, 7]
	bl	uECC_vli_rshift1
	add	x1, sp, 136
	add	x0, sp, 104
	ldrb	w2, [sp, 7]
	bl	uECC_vli_cmp_unsafe
	sxtb	w0, w0
	cmp	w0, 0
	bge	.L102
	add	x1, sp, 104
	add	x0, sp, 104
	ldrb	w3, [sp, 7]
	ldr	x2, [sp, 8]
	bl	uECC_vli_add
.L102:
	add	x2, sp, 136
	add	x1, sp, 104
	add	x0, sp, 104
	ldrb	w3, [sp, 7]
	bl	uECC_vli_sub
	add	x0, sp, 104
	ldrb	w2, [sp, 7]
	ldr	x1, [sp, 8]
	bl	vli_modInv_update
	b	.L97
.L101:
	add	x2, sp, 40
	add	x1, sp, 72
	add	x0, sp, 72
	ldrb	w3, [sp, 7]
	bl	uECC_vli_sub
	add	x0, sp, 72
	ldrb	w1, [sp, 7]
	bl	uECC_vli_rshift1
	add	x1, sp, 104
	add	x0, sp, 136
	ldrb	w2, [sp, 7]
	bl	uECC_vli_cmp_unsafe
	sxtb	w0, w0
	cmp	w0, 0
	bge	.L103
	add	x1, sp, 136
	add	x0, sp, 136
	ldrb	w3, [sp, 7]
	ldr	x2, [sp, 8]
	bl	uECC_vli_add
.L103:
	add	x2, sp, 104
	add	x1, sp, 136
	add	x0, sp, 136
	ldrb	w3, [sp, 7]
	bl	uECC_vli_sub
	add	x0, sp, 136
	ldrb	w2, [sp, 7]
	ldr	x1, [sp, 8]
	bl	vli_modInv_update
.L97:
	add	x1, sp, 72
	add	x0, sp, 40
	ldrb	w2, [sp, 7]
	bl	uECC_vli_cmp_unsafe
	strb	w0, [sp, 39]
	ldrsb	w0, [sp, 39]
	cmp	w0, 0
	bne	.L104
	add	x0, sp, 104
	ldrb	w2, [sp, 7]
	mov	x1, x0
	ldr	x0, [sp, 24]
	bl	uECC_vli_set
.L94:
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 168]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L105
	bl	__stack_chk_fail
.L105:
	ldp	x29, x30, [sp, 176]
	add	sp, sp, 192
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE26:
	.size	uECC_vli_modInv, .-uECC_vli_modInv
	.align	2
	.global	double_jacobian_default
	.type	double_jacobian_default, %function
double_jacobian_default:
.LFB27:
	.cfi_startproc
	sub	sp, sp, #128
	.cfi_def_cfa_offset 128
	stp	x29, x30, [sp, 112]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 112
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	str	x3, [sp]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 104]
	mov	x1, 0
	ldr	x0, [sp]
	ldrb	w0, [x0]
	strb	w0, [sp, 35]
	ldrb	w1, [sp, 35]
	ldr	x0, [sp, 8]
	bl	uECC_vli_isZero
	cmp	w0, 0
	bne	.L112
	add	x0, sp, 40
	ldr	x2, [sp]
	ldr	x1, [sp, 16]
	bl	uECC_vli_modSquare_fast
	add	x1, sp, 40
	add	x0, sp, 72
	ldr	x3, [sp]
	mov	x2, x1
	ldr	x1, [sp, 24]
	bl	uECC_vli_modMult_fast
	add	x1, sp, 40
	add	x0, sp, 40
	ldr	x2, [sp]
	bl	uECC_vli_modSquare_fast
	ldr	x3, [sp]
	ldr	x2, [sp, 8]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 16]
	bl	uECC_vli_modMult_fast
	ldr	x2, [sp]
	ldr	x1, [sp, 8]
	ldr	x0, [sp, 8]
	bl	uECC_vli_modSquare_fast
	ldr	x0, [sp]
	add	x0, x0, 4
	ldrb	w4, [sp, 35]
	mov	x3, x0
	ldr	x2, [sp, 8]
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 24]
	bl	uECC_vli_modAdd
	ldr	x0, [sp]
	add	x0, x0, 4
	ldrb	w4, [sp, 35]
	mov	x3, x0
	ldr	x2, [sp, 8]
	ldr	x1, [sp, 8]
	ldr	x0, [sp, 8]
	bl	uECC_vli_modAdd
	ldr	x0, [sp]
	add	x0, x0, 4
	ldrb	w4, [sp, 35]
	mov	x3, x0
	ldr	x2, [sp, 8]
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 8]
	bl	uECC_vli_modSub
	ldr	x3, [sp]
	ldr	x2, [sp, 8]
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 24]
	bl	uECC_vli_modMult_fast
	ldr	x0, [sp]
	add	x0, x0, 4
	ldrb	w4, [sp, 35]
	mov	x3, x0
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 8]
	bl	uECC_vli_modAdd
	ldr	x0, [sp]
	add	x0, x0, 4
	ldrb	w4, [sp, 35]
	mov	x3, x0
	ldr	x2, [sp, 8]
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 24]
	bl	uECC_vli_modAdd
	mov	w1, 0
	ldr	x0, [sp, 24]
	bl	uECC_vli_testBit
	cmp	w0, 0
	beq	.L109
	ldr	x0, [sp]
	add	x0, x0, 4
	ldrb	w3, [sp, 35]
	mov	x2, x0
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 24]
	bl	uECC_vli_add
	str	w0, [sp, 36]
	ldrb	w1, [sp, 35]
	ldr	x0, [sp, 24]
	bl	uECC_vli_rshift1
	ldrsb	x0, [sp, 35]
	lsl	x0, x0, 2
	sub	x0, x0, #4
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	w2, [x0]
	ldr	w0, [sp, 36]
	lsl	w1, w0, 31
	ldrsb	x0, [sp, 35]
	lsl	x0, x0, 2
	sub	x0, x0, #4
	ldr	x3, [sp, 24]
	add	x0, x3, x0
	orr	w1, w2, w1
	str	w1, [x0]
	b	.L110
.L109:
	ldrb	w1, [sp, 35]
	ldr	x0, [sp, 24]
	bl	uECC_vli_rshift1
.L110:
	ldr	x2, [sp]
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 8]
	bl	uECC_vli_modSquare_fast
	ldr	x0, [sp]
	add	x1, x0, 4
	add	x0, sp, 72
	ldrb	w4, [sp, 35]
	mov	x3, x1
	mov	x2, x0
	ldr	x1, [sp, 8]
	ldr	x0, [sp, 8]
	bl	uECC_vli_modSub
	ldr	x0, [sp]
	add	x1, x0, 4
	add	x0, sp, 72
	ldrb	w4, [sp, 35]
	mov	x3, x1
	mov	x2, x0
	ldr	x1, [sp, 8]
	ldr	x0, [sp, 8]
	bl	uECC_vli_modSub
	ldr	x0, [sp]
	add	x2, x0, 4
	add	x1, sp, 72
	add	x0, sp, 72
	ldrb	w4, [sp, 35]
	mov	x3, x2
	ldr	x2, [sp, 8]
	bl	uECC_vli_modSub
	add	x0, sp, 72
	ldr	x3, [sp]
	mov	x2, x0
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 24]
	bl	uECC_vli_modMult_fast
	ldr	x0, [sp]
	add	x2, x0, 4
	add	x1, sp, 40
	add	x0, sp, 40
	ldrb	w4, [sp, 35]
	mov	x3, x2
	mov	x2, x1
	ldr	x1, [sp, 24]
	bl	uECC_vli_modSub
	ldrb	w2, [sp, 35]
	ldr	x1, [sp, 8]
	ldr	x0, [sp, 24]
	bl	uECC_vli_set
	ldrb	w2, [sp, 35]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 8]
	bl	uECC_vli_set
	add	x0, sp, 40
	ldrb	w2, [sp, 35]
	mov	x1, x0
	ldr	x0, [sp, 16]
	bl	uECC_vli_set
	b	.L106
.L112:
	nop
.L106:
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 104]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L111
	bl	__stack_chk_fail
.L111:
	ldp	x29, x30, [sp, 112]
	add	sp, sp, 128
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE27:
	.size	double_jacobian_default, .-double_jacobian_default
	.align	2
	.global	x_side_default
	.type	x_side_default, %function
x_side_default:
.LFB28:
	.cfi_startproc
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, 80]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 80
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 72]
	mov	x1, 0
	stp	xzr, xzr, [sp, 40]
	stp	xzr, xzr, [sp, 56]
	mov	w0, 3
	str	w0, [sp, 40]
	ldr	x0, [sp, 8]
	ldrb	w0, [x0]
	strb	w0, [sp, 39]
	ldr	x2, [sp, 8]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	uECC_vli_modSquare_fast
	ldr	x0, [sp, 8]
	add	x1, x0, 4
	add	x0, sp, 40
	ldrb	w4, [sp, 39]
	mov	x3, x1
	mov	x2, x0
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 24]
	bl	uECC_vli_modSub
	ldr	x3, [sp, 8]
	ldr	x2, [sp, 16]
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 24]
	bl	uECC_vli_modMult_fast
	ldr	x0, [sp, 8]
	add	x1, x0, 132
	ldr	x0, [sp, 8]
	add	x0, x0, 4
	ldrb	w4, [sp, 39]
	mov	x3, x0
	mov	x2, x1
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 24]
	bl	uECC_vli_modAdd
	nop
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 72]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L114
	bl	__stack_chk_fail
.L114:
	ldp	x29, x30, [sp, 80]
	add	sp, sp, 96
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE28:
	.size	x_side_default, .-x_side_default
	.align	2
	.global	uECC_secp256r1
	.type	uECC_secp256r1, %function
uECC_secp256r1:
.LFB29:
	.cfi_startproc
	adrp	x0, curve_secp256r1
	add	x0, x0, :lo12:curve_secp256r1
	ret
	.cfi_endproc
.LFE29:
	.size	uECC_secp256r1, .-uECC_secp256r1
	.align	2
	.global	vli_mmod_fast_secp256r1
	.type	vli_mmod_fast_secp256r1, %function
vli_mmod_fast_secp256r1:
.LFB30:
	.cfi_startproc
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, 64]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 64
	str	x0, [sp, 8]
	str	x1, [sp]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 56]
	mov	x1, 0
	mov	w2, 8
	ldr	x1, [sp]
	ldr	x0, [sp, 8]
	bl	uECC_vli_set
	str	wzr, [sp, 32]
	ldr	w0, [sp, 32]
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	str	w0, [sp, 24]
	ldr	x0, [sp]
	ldr	w0, [x0, 44]
	str	w0, [sp, 36]
	ldr	x0, [sp]
	ldr	w0, [x0, 48]
	str	w0, [sp, 40]
	ldr	x0, [sp]
	ldr	w0, [x0, 52]
	str	w0, [sp, 44]
	ldr	x0, [sp]
	ldr	w0, [x0, 56]
	str	w0, [sp, 48]
	ldr	x0, [sp]
	ldr	w0, [x0, 60]
	str	w0, [sp, 52]
	add	x2, sp, 24
	add	x1, sp, 24
	add	x0, sp, 24
	mov	w3, 8
	bl	uECC_vli_add
	str	w0, [sp, 20]
	add	x0, sp, 24
	mov	w3, 8
	mov	x2, x0
	ldr	x1, [sp, 8]
	ldr	x0, [sp, 8]
	bl	uECC_vli_add
	mov	w1, w0
	ldr	w0, [sp, 20]
	add	w0, w1, w0
	str	w0, [sp, 20]
	ldr	x0, [sp]
	ldr	w0, [x0, 48]
	str	w0, [sp, 36]
	ldr	x0, [sp]
	ldr	w0, [x0, 52]
	str	w0, [sp, 40]
	ldr	x0, [sp]
	ldr	w0, [x0, 56]
	str	w0, [sp, 44]
	ldr	x0, [sp]
	ldr	w0, [x0, 60]
	str	w0, [sp, 48]
	str	wzr, [sp, 52]
	add	x2, sp, 24
	add	x1, sp, 24
	add	x0, sp, 24
	mov	w3, 8
	bl	uECC_vli_add
	mov	w1, w0
	ldr	w0, [sp, 20]
	add	w0, w1, w0
	str	w0, [sp, 20]
	add	x0, sp, 24
	mov	w3, 8
	mov	x2, x0
	ldr	x1, [sp, 8]
	ldr	x0, [sp, 8]
	bl	uECC_vli_add
	mov	w1, w0
	ldr	w0, [sp, 20]
	add	w0, w1, w0
	str	w0, [sp, 20]
	ldr	x0, [sp]
	ldr	w0, [x0, 32]
	str	w0, [sp, 24]
	ldr	x0, [sp]
	ldr	w0, [x0, 36]
	str	w0, [sp, 28]
	ldr	x0, [sp]
	ldr	w0, [x0, 40]
	str	w0, [sp, 32]
	str	wzr, [sp, 44]
	ldr	w0, [sp, 44]
	str	w0, [sp, 40]
	ldr	w0, [sp, 40]
	str	w0, [sp, 36]
	ldr	x0, [sp]
	ldr	w0, [x0, 56]
	str	w0, [sp, 48]
	ldr	x0, [sp]
	ldr	w0, [x0, 60]
	str	w0, [sp, 52]
	add	x0, sp, 24
	mov	w3, 8
	mov	x2, x0
	ldr	x1, [sp, 8]
	ldr	x0, [sp, 8]
	bl	uECC_vli_add
	mov	w1, w0
	ldr	w0, [sp, 20]
	add	w0, w1, w0
	str	w0, [sp, 20]
	ldr	x0, [sp]
	ldr	w0, [x0, 36]
	str	w0, [sp, 24]
	ldr	x0, [sp]
	ldr	w0, [x0, 40]
	str	w0, [sp, 28]
	ldr	x0, [sp]
	ldr	w0, [x0, 44]
	str	w0, [sp, 32]
	ldr	x0, [sp]
	ldr	w0, [x0, 52]
	str	w0, [sp, 36]
	ldr	x0, [sp]
	ldr	w0, [x0, 56]
	str	w0, [sp, 40]
	ldr	x0, [sp]
	ldr	w0, [x0, 60]
	str	w0, [sp, 44]
	ldr	x0, [sp]
	ldr	w0, [x0, 52]
	str	w0, [sp, 48]
	ldr	x0, [sp]
	ldr	w0, [x0, 32]
	str	w0, [sp, 52]
	add	x0, sp, 24
	mov	w3, 8
	mov	x2, x0
	ldr	x1, [sp, 8]
	ldr	x0, [sp, 8]
	bl	uECC_vli_add
	mov	w1, w0
	ldr	w0, [sp, 20]
	add	w0, w1, w0
	str	w0, [sp, 20]
	ldr	x0, [sp]
	ldr	w0, [x0, 44]
	str	w0, [sp, 24]
	ldr	x0, [sp]
	ldr	w0, [x0, 48]
	str	w0, [sp, 28]
	ldr	x0, [sp]
	ldr	w0, [x0, 52]
	str	w0, [sp, 32]
	str	wzr, [sp, 44]
	ldr	w0, [sp, 44]
	str	w0, [sp, 40]
	ldr	w0, [sp, 40]
	str	w0, [sp, 36]
	ldr	x0, [sp]
	ldr	w0, [x0, 32]
	str	w0, [sp, 48]
	ldr	x0, [sp]
	ldr	w0, [x0, 40]
	str	w0, [sp, 52]
	add	x0, sp, 24
	mov	w3, 8
	mov	x2, x0
	ldr	x1, [sp, 8]
	ldr	x0, [sp, 8]
	bl	uECC_vli_sub
	mov	w1, w0
	ldr	w0, [sp, 20]
	sub	w0, w0, w1
	str	w0, [sp, 20]
	ldr	x0, [sp]
	ldr	w0, [x0, 48]
	str	w0, [sp, 24]
	ldr	x0, [sp]
	ldr	w0, [x0, 52]
	str	w0, [sp, 28]
	ldr	x0, [sp]
	ldr	w0, [x0, 56]
	str	w0, [sp, 32]
	ldr	x0, [sp]
	ldr	w0, [x0, 60]
	str	w0, [sp, 36]
	str	wzr, [sp, 44]
	ldr	w0, [sp, 44]
	str	w0, [sp, 40]
	ldr	x0, [sp]
	ldr	w0, [x0, 36]
	str	w0, [sp, 48]
	ldr	x0, [sp]
	ldr	w0, [x0, 44]
	str	w0, [sp, 52]
	add	x0, sp, 24
	mov	w3, 8
	mov	x2, x0
	ldr	x1, [sp, 8]
	ldr	x0, [sp, 8]
	bl	uECC_vli_sub
	mov	w1, w0
	ldr	w0, [sp, 20]
	sub	w0, w0, w1
	str	w0, [sp, 20]
	ldr	x0, [sp]
	ldr	w0, [x0, 52]
	str	w0, [sp, 24]
	ldr	x0, [sp]
	ldr	w0, [x0, 56]
	str	w0, [sp, 28]
	ldr	x0, [sp]
	ldr	w0, [x0, 60]
	str	w0, [sp, 32]
	ldr	x0, [sp]
	ldr	w0, [x0, 32]
	str	w0, [sp, 36]
	ldr	x0, [sp]
	ldr	w0, [x0, 36]
	str	w0, [sp, 40]
	ldr	x0, [sp]
	ldr	w0, [x0, 40]
	str	w0, [sp, 44]
	str	wzr, [sp, 48]
	ldr	x0, [sp]
	ldr	w0, [x0, 48]
	str	w0, [sp, 52]
	add	x0, sp, 24
	mov	w3, 8
	mov	x2, x0
	ldr	x1, [sp, 8]
	ldr	x0, [sp, 8]
	bl	uECC_vli_sub
	mov	w1, w0
	ldr	w0, [sp, 20]
	sub	w0, w0, w1
	str	w0, [sp, 20]
	ldr	x0, [sp]
	ldr	w0, [x0, 56]
	str	w0, [sp, 24]
	ldr	x0, [sp]
	ldr	w0, [x0, 60]
	str	w0, [sp, 28]
	str	wzr, [sp, 32]
	ldr	x0, [sp]
	ldr	w0, [x0, 36]
	str	w0, [sp, 36]
	ldr	x0, [sp]
	ldr	w0, [x0, 40]
	str	w0, [sp, 40]
	ldr	x0, [sp]
	ldr	w0, [x0, 44]
	str	w0, [sp, 44]
	str	wzr, [sp, 48]
	ldr	x0, [sp]
	ldr	w0, [x0, 52]
	str	w0, [sp, 52]
	add	x0, sp, 24
	mov	w3, 8
	mov	x2, x0
	ldr	x1, [sp, 8]
	ldr	x0, [sp, 8]
	bl	uECC_vli_sub
	mov	w1, w0
	ldr	w0, [sp, 20]
	sub	w0, w0, w1
	str	w0, [sp, 20]
	ldr	w0, [sp, 20]
	cmp	w0, 0
	bge	.L121
.L119:
	mov	w3, 8
	adrp	x0, curve_secp256r1+4
	add	x2, x0, :lo12:curve_secp256r1+4
	ldr	x1, [sp, 8]
	ldr	x0, [sp, 8]
	bl	uECC_vli_add
	mov	w1, w0
	ldr	w0, [sp, 20]
	add	w0, w1, w0
	str	w0, [sp, 20]
	ldr	w0, [sp, 20]
	cmp	w0, 0
	blt	.L119
	b	.L124
.L122:
	mov	w3, 8
	adrp	x0, curve_secp256r1+4
	add	x2, x0, :lo12:curve_secp256r1+4
	ldr	x1, [sp, 8]
	ldr	x0, [sp, 8]
	bl	uECC_vli_sub
	mov	w1, w0
	ldr	w0, [sp, 20]
	sub	w0, w0, w1
	str	w0, [sp, 20]
.L121:
	ldr	w0, [sp, 20]
	cmp	w0, 0
	bne	.L122
	mov	w2, 8
	ldr	x1, [sp, 8]
	adrp	x0, curve_secp256r1+4
	add	x0, x0, :lo12:curve_secp256r1+4
	bl	uECC_vli_cmp_unsafe
	sxtb	w0, w0
	cmp	w0, 1
	bne	.L122
.L124:
	nop
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 56]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L123
	bl	__stack_chk_fail
.L123:
	ldp	x29, x30, [sp, 64]
	add	sp, sp, 80
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE30:
	.size	vli_mmod_fast_secp256r1, .-vli_mmod_fast_secp256r1
	.align	2
	.global	EccPoint_isZero
	.type	EccPoint_isZero, %function
EccPoint_isZero:
.LFB31:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 16]
	ldrsb	w0, [x0]
	and	w0, w0, 255
	ubfiz	w0, w0, 1, 7
	and	w0, w0, 255
	sxtb	w0, w0
	mov	w1, w0
	ldr	x0, [sp, 24]
	bl	uECC_vli_isZero
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE31:
	.size	EccPoint_isZero, .-EccPoint_isZero
	.align	2
	.global	apply_z
	.type	apply_z, %function
apply_z:
.LFB32:
	.cfi_startproc
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, 80]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 80
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	str	x3, [sp]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 72]
	mov	x1, 0
	add	x0, sp, 40
	ldr	x2, [sp]
	ldr	x1, [sp, 8]
	bl	uECC_vli_modSquare_fast
	add	x0, sp, 40
	ldr	x3, [sp]
	mov	x2, x0
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 24]
	bl	uECC_vli_modMult_fast
	add	x1, sp, 40
	add	x0, sp, 40
	ldr	x3, [sp]
	ldr	x2, [sp, 8]
	bl	uECC_vli_modMult_fast
	add	x0, sp, 40
	ldr	x3, [sp]
	mov	x2, x0
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 16]
	bl	uECC_vli_modMult_fast
	nop
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 72]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L128
	bl	__stack_chk_fail
.L128:
	ldp	x29, x30, [sp, 80]
	add	sp, sp, 96
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE32:
	.size	apply_z, .-apply_z
	.align	2
	.type	XYcZ_initial_double, %function
XYcZ_initial_double:
.LFB33:
	.cfi_startproc
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, 96]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 96
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	str	x3, [sp, 16]
	str	x4, [sp, 8]
	str	x5, [sp]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 88]
	mov	x1, 0
	ldr	x0, [sp]
	ldrb	w0, [x0]
	strb	w0, [sp, 55]
	ldr	x0, [sp, 8]
	cmp	x0, 0
	beq	.L130
	add	x0, sp, 56
	ldrb	w2, [sp, 55]
	ldr	x1, [sp, 8]
	bl	uECC_vli_set
	b	.L131
.L130:
	add	x0, sp, 56
	ldrb	w1, [sp, 55]
	bl	uECC_vli_clear
	mov	w0, 1
	str	w0, [sp, 56]
.L131:
	ldrb	w2, [sp, 55]
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 24]
	bl	uECC_vli_set
	ldrb	w2, [sp, 55]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 16]
	bl	uECC_vli_set
	add	x0, sp, 56
	ldr	x3, [sp]
	mov	x2, x0
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	apply_z
	ldr	x0, [sp]
	ldr	x4, [x0, 168]
	add	x0, sp, 56
	ldr	x3, [sp]
	mov	x2, x0
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	blr	x4
	add	x0, sp, 56
	ldr	x3, [sp]
	mov	x2, x0
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	apply_z
	nop
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 88]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L132
	bl	__stack_chk_fail
.L132:
	ldp	x29, x30, [sp, 96]
	add	sp, sp, 112
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE33:
	.size	XYcZ_initial_double, .-XYcZ_initial_double
	.align	2
	.global	XYcZ_add
	.type	XYcZ_add, %function
XYcZ_add:
.LFB34:
	.cfi_startproc
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, 96]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 96
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	str	x3, [sp, 16]
	str	x4, [sp, 8]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 88]
	mov	x1, 0
	ldr	x0, [sp, 8]
	ldrb	w0, [x0]
	strb	w0, [sp, 55]
	ldr	x0, [sp, 8]
	add	x1, x0, 4
	add	x0, sp, 56
	ldrb	w4, [sp, 55]
	mov	x3, x1
	ldr	x2, [sp, 40]
	ldr	x1, [sp, 24]
	bl	uECC_vli_modSub
	add	x1, sp, 56
	add	x0, sp, 56
	ldr	x2, [sp, 8]
	bl	uECC_vli_modSquare_fast
	add	x0, sp, 56
	ldr	x3, [sp, 8]
	mov	x2, x0
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 40]
	bl	uECC_vli_modMult_fast
	add	x0, sp, 56
	ldr	x3, [sp, 8]
	mov	x2, x0
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 24]
	bl	uECC_vli_modMult_fast
	ldr	x0, [sp, 8]
	add	x0, x0, 4
	ldrb	w4, [sp, 55]
	mov	x3, x0
	ldr	x2, [sp, 32]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 16]
	bl	uECC_vli_modSub
	add	x0, sp, 56
	ldr	x2, [sp, 8]
	ldr	x1, [sp, 16]
	bl	uECC_vli_modSquare_fast
	ldr	x0, [sp, 8]
	add	x2, x0, 4
	add	x1, sp, 56
	add	x0, sp, 56
	ldrb	w4, [sp, 55]
	mov	x3, x2
	ldr	x2, [sp, 40]
	bl	uECC_vli_modSub
	ldr	x0, [sp, 8]
	add	x2, x0, 4
	add	x1, sp, 56
	add	x0, sp, 56
	ldrb	w4, [sp, 55]
	mov	x3, x2
	ldr	x2, [sp, 24]
	bl	uECC_vli_modSub
	ldr	x0, [sp, 8]
	add	x0, x0, 4
	ldrb	w4, [sp, 55]
	mov	x3, x0
	ldr	x2, [sp, 40]
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 24]
	bl	uECC_vli_modSub
	ldr	x3, [sp, 8]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 32]
	bl	uECC_vli_modMult_fast
	ldr	x0, [sp, 8]
	add	x1, x0, 4
	add	x0, sp, 56
	ldrb	w4, [sp, 55]
	mov	x3, x1
	mov	x2, x0
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 24]
	bl	uECC_vli_modSub
	ldr	x3, [sp, 8]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 16]
	bl	uECC_vli_modMult_fast
	ldr	x0, [sp, 8]
	add	x0, x0, 4
	ldrb	w4, [sp, 55]
	mov	x3, x0
	ldr	x2, [sp, 32]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 16]
	bl	uECC_vli_modSub
	add	x0, sp, 56
	ldrb	w2, [sp, 55]
	mov	x1, x0
	ldr	x0, [sp, 24]
	bl	uECC_vli_set
	nop
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 88]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L134
	bl	__stack_chk_fail
.L134:
	ldp	x29, x30, [sp, 96]
	add	sp, sp, 112
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE34:
	.size	XYcZ_add, .-XYcZ_add
	.align	2
	.type	XYcZ_addC, %function
XYcZ_addC:
.LFB35:
	.cfi_startproc
	sub	sp, sp, #176
	.cfi_def_cfa_offset 176
	stp	x29, x30, [sp, 160]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 160
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	str	x3, [sp, 16]
	str	x4, [sp, 8]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 152]
	mov	x1, 0
	ldr	x0, [sp, 8]
	ldrb	w0, [x0]
	strb	w0, [sp, 55]
	ldr	x0, [sp, 8]
	add	x1, x0, 4
	add	x0, sp, 56
	ldrb	w4, [sp, 55]
	mov	x3, x1
	ldr	x2, [sp, 40]
	ldr	x1, [sp, 24]
	bl	uECC_vli_modSub
	add	x1, sp, 56
	add	x0, sp, 56
	ldr	x2, [sp, 8]
	bl	uECC_vli_modSquare_fast
	add	x0, sp, 56
	ldr	x3, [sp, 8]
	mov	x2, x0
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 40]
	bl	uECC_vli_modMult_fast
	add	x0, sp, 56
	ldr	x3, [sp, 8]
	mov	x2, x0
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 24]
	bl	uECC_vli_modMult_fast
	ldr	x0, [sp, 8]
	add	x1, x0, 4
	add	x0, sp, 56
	ldrb	w4, [sp, 55]
	mov	x3, x1
	ldr	x2, [sp, 32]
	ldr	x1, [sp, 16]
	bl	uECC_vli_modAdd
	ldr	x0, [sp, 8]
	add	x0, x0, 4
	ldrb	w4, [sp, 55]
	mov	x3, x0
	ldr	x2, [sp, 32]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 16]
	bl	uECC_vli_modSub
	ldr	x0, [sp, 8]
	add	x1, x0, 4
	add	x0, sp, 88
	ldrb	w4, [sp, 55]
	mov	x3, x1
	ldr	x2, [sp, 40]
	ldr	x1, [sp, 24]
	bl	uECC_vli_modSub
	add	x0, sp, 88
	ldr	x3, [sp, 8]
	mov	x2, x0
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 32]
	bl	uECC_vli_modMult_fast
	ldr	x0, [sp, 8]
	add	x1, x0, 4
	add	x0, sp, 88
	ldrb	w4, [sp, 55]
	mov	x3, x1
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 40]
	bl	uECC_vli_modAdd
	ldr	x2, [sp, 8]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	uECC_vli_modSquare_fast
	ldr	x0, [sp, 8]
	add	x1, x0, 4
	add	x0, sp, 88
	ldrb	w4, [sp, 55]
	mov	x3, x1
	mov	x2, x0
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 24]
	bl	uECC_vli_modSub
	ldr	x0, [sp, 8]
	add	x1, x0, 4
	add	x0, sp, 120
	ldrb	w4, [sp, 55]
	mov	x3, x1
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 40]
	bl	uECC_vli_modSub
	add	x0, sp, 120
	ldr	x3, [sp, 8]
	mov	x2, x0
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 16]
	bl	uECC_vli_modMult_fast
	ldr	x0, [sp, 8]
	add	x0, x0, 4
	ldrb	w4, [sp, 55]
	mov	x3, x0
	ldr	x2, [sp, 32]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 16]
	bl	uECC_vli_modSub
	add	x1, sp, 56
	add	x0, sp, 120
	ldr	x2, [sp, 8]
	bl	uECC_vli_modSquare_fast
	ldr	x0, [sp, 8]
	add	x3, x0, 4
	add	x2, sp, 88
	add	x1, sp, 120
	add	x0, sp, 120
	ldrb	w4, [sp, 55]
	bl	uECC_vli_modSub
	ldr	x0, [sp, 8]
	add	x2, x0, 4
	add	x1, sp, 120
	add	x0, sp, 88
	ldrb	w4, [sp, 55]
	mov	x3, x2
	ldr	x2, [sp, 40]
	bl	uECC_vli_modSub
	add	x2, sp, 56
	add	x1, sp, 88
	add	x0, sp, 88
	ldr	x3, [sp, 8]
	bl	uECC_vli_modMult_fast
	ldr	x0, [sp, 8]
	add	x1, x0, 4
	add	x0, sp, 88
	ldrb	w4, [sp, 55]
	mov	x3, x1
	ldr	x2, [sp, 32]
	mov	x1, x0
	ldr	x0, [sp, 32]
	bl	uECC_vli_modSub
	add	x0, sp, 120
	ldrb	w2, [sp, 55]
	mov	x1, x0
	ldr	x0, [sp, 40]
	bl	uECC_vli_set
	nop
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 152]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L136
	bl	__stack_chk_fail
.L136:
	ldp	x29, x30, [sp, 160]
	add	sp, sp, 176
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE35:
	.size	XYcZ_addC, .-XYcZ_addC
	.align	2
	.global	EccPoint_mult
	.type	EccPoint_mult, %function
EccPoint_mult:
.LFB36:
	.cfi_startproc
	sub	sp, sp, #240
	.cfi_def_cfa_offset 240
	stp	x29, x30, [sp, 224]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 224
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	str	x3, [sp, 16]
	strh	w4, [sp, 14]
	str	x5, [sp]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 216]
	mov	x1, 0
	ldr	x0, [sp]
	ldrb	w0, [x0]
	strb	w0, [sp, 49]
	add	x0, sp, 88
	add	x0, x0, 32
	ldrb	w2, [sp, 49]
	ldr	x1, [sp, 32]
	bl	uECC_vli_set
	ldrsb	x0, [sp, 49]
	lsl	x0, x0, 2
	ldr	x1, [sp, 32]
	add	x1, x1, x0
	add	x0, sp, 152
	add	x0, x0, 32
	ldrb	w2, [sp, 49]
	bl	uECC_vli_set
	add	x3, sp, 152
	add	x2, sp, 88
	add	x0, sp, 152
	add	x1, x0, 32
	add	x0, sp, 88
	add	x0, x0, 32
	ldr	x5, [sp]
	ldr	x4, [sp, 16]
	bl	XYcZ_initial_double
	ldrh	w0, [sp, 14]
	sub	w0, w0, #2
	and	w0, w0, 65535
	strh	w0, [sp, 50]
	b	.L138
.L139:
	ldrh	w1, [sp, 50]
	ldr	x0, [sp, 24]
	bl	uECC_vli_testBit
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	str	w0, [sp, 52]
	mov	w1, 1
	ldr	w0, [sp, 52]
	sub	w0, w1, w0
	add	x1, sp, 88
	uxtw	x0, w0
	lsl	x0, x0, 5
	add	x5, x1, x0
	mov	w1, 1
	ldr	w0, [sp, 52]
	sub	w0, w1, w0
	add	x1, sp, 152
	uxtw	x0, w0
	lsl	x0, x0, 5
	add	x6, x1, x0
	add	x1, sp, 88
	ldr	w0, [sp, 52]
	lsl	x0, x0, 5
	add	x2, x1, x0
	add	x1, sp, 152
	ldr	w0, [sp, 52]
	lsl	x0, x0, 5
	add	x0, x1, x0
	ldr	x4, [sp]
	mov	x3, x0
	mov	x1, x6
	mov	x0, x5
	bl	XYcZ_addC
	add	x1, sp, 88
	ldr	w0, [sp, 52]
	lsl	x0, x0, 5
	add	x5, x1, x0
	add	x1, sp, 152
	ldr	w0, [sp, 52]
	lsl	x0, x0, 5
	add	x6, x1, x0
	mov	w1, 1
	ldr	w0, [sp, 52]
	sub	w0, w1, w0
	add	x1, sp, 88
	uxtw	x0, w0
	lsl	x0, x0, 5
	add	x2, x1, x0
	mov	w1, 1
	ldr	w0, [sp, 52]
	sub	w0, w1, w0
	add	x1, sp, 152
	uxtw	x0, w0
	lsl	x0, x0, 5
	add	x0, x1, x0
	ldr	x4, [sp]
	mov	x3, x0
	mov	x1, x6
	mov	x0, x5
	bl	XYcZ_add
	ldrh	w0, [sp, 50]
	sub	w0, w0, #1
	and	w0, w0, 65535
	strh	w0, [sp, 50]
.L138:
	ldrsh	w0, [sp, 50]
	cmp	w0, 0
	bgt	.L139
	mov	w1, 0
	ldr	x0, [sp, 24]
	bl	uECC_vli_testBit
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	str	w0, [sp, 52]
	mov	w1, 1
	ldr	w0, [sp, 52]
	sub	w0, w1, w0
	add	x1, sp, 88
	uxtw	x0, w0
	lsl	x0, x0, 5
	add	x5, x1, x0
	mov	w1, 1
	ldr	w0, [sp, 52]
	sub	w0, w1, w0
	add	x1, sp, 152
	uxtw	x0, w0
	lsl	x0, x0, 5
	add	x6, x1, x0
	add	x1, sp, 88
	ldr	w0, [sp, 52]
	lsl	x0, x0, 5
	add	x2, x1, x0
	add	x1, sp, 152
	ldr	w0, [sp, 52]
	lsl	x0, x0, 5
	add	x0, x1, x0
	ldr	x4, [sp]
	mov	x3, x0
	mov	x1, x6
	mov	x0, x5
	bl	XYcZ_addC
	ldr	x0, [sp]
	add	x3, x0, 4
	add	x2, sp, 88
	add	x0, sp, 88
	add	x1, x0, 32
	add	x0, sp, 56
	ldrb	w4, [sp, 49]
	bl	uECC_vli_modSub
	mov	w1, 1
	ldr	w0, [sp, 52]
	sub	w0, w1, w0
	add	x1, sp, 152
	uxtw	x0, w0
	lsl	x0, x0, 5
	add	x2, x1, x0
	add	x1, sp, 56
	add	x0, sp, 56
	ldr	x3, [sp]
	bl	uECC_vli_modMult_fast
	add	x1, sp, 56
	add	x0, sp, 56
	ldr	x3, [sp]
	ldr	x2, [sp, 32]
	bl	uECC_vli_modMult_fast
	ldr	x0, [sp]
	add	x2, x0, 4
	add	x1, sp, 56
	add	x0, sp, 56
	ldrb	w3, [sp, 49]
	bl	uECC_vli_modInv
	ldrsb	x0, [sp, 49]
	lsl	x0, x0, 2
	ldr	x1, [sp, 32]
	add	x2, x1, x0
	add	x1, sp, 56
	add	x0, sp, 56
	ldr	x3, [sp]
	bl	uECC_vli_modMult_fast
	mov	w1, 1
	ldr	w0, [sp, 52]
	sub	w0, w1, w0
	add	x1, sp, 88
	uxtw	x0, w0
	lsl	x0, x0, 5
	add	x2, x1, x0
	add	x1, sp, 56
	add	x0, sp, 56
	ldr	x3, [sp]
	bl	uECC_vli_modMult_fast
	add	x1, sp, 88
	ldr	w0, [sp, 52]
	lsl	x0, x0, 5
	add	x5, x1, x0
	add	x1, sp, 152
	ldr	w0, [sp, 52]
	lsl	x0, x0, 5
	add	x6, x1, x0
	mov	w1, 1
	ldr	w0, [sp, 52]
	sub	w0, w1, w0
	add	x1, sp, 88
	uxtw	x0, w0
	lsl	x0, x0, 5
	add	x2, x1, x0
	mov	w1, 1
	ldr	w0, [sp, 52]
	sub	w0, w1, w0
	add	x1, sp, 152
	uxtw	x0, w0
	lsl	x0, x0, 5
	add	x0, x1, x0
	ldr	x4, [sp]
	mov	x3, x0
	mov	x1, x6
	mov	x0, x5
	bl	XYcZ_add
	add	x2, sp, 56
	add	x1, sp, 152
	add	x0, sp, 88
	ldr	x3, [sp]
	bl	apply_z
	add	x0, sp, 88
	ldrb	w2, [sp, 49]
	mov	x1, x0
	ldr	x0, [sp, 40]
	bl	uECC_vli_set
	ldrsb	x0, [sp, 49]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	add	x1, sp, 152
	ldrb	w2, [sp, 49]
	bl	uECC_vli_set
	nop
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 216]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L140
	bl	__stack_chk_fail
.L140:
	ldp	x29, x30, [sp, 224]
	add	sp, sp, 240
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE36:
	.size	EccPoint_mult, .-EccPoint_mult
	.align	2
	.global	regularize_k
	.type	regularize_k, %function
regularize_k:
.LFB37:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	str	x3, [sp, 16]
	ldr	x0, [sp, 16]
	ldrsh	w0, [x0, 2]
	add	w0, w0, 31
	add	w1, w0, 31
	cmp	w0, 0
	csel	w0, w1, w0, lt
	asr	w0, w0, 5
	strb	w0, [sp, 57]
	ldr	x0, [sp, 16]
	ldrh	w0, [x0, 2]
	strh	w0, [sp, 58]
	ldr	x0, [sp, 16]
	add	x0, x0, 36
	ldrb	w3, [sp, 57]
	mov	x2, x0
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 32]
	bl	uECC_vli_add
	cmp	w0, 0
	bne	.L142
	ldrsh	w1, [sp, 58]
	ldrsb	w0, [sp, 57]
	lsl	w0, w0, 5
	cmp	w1, w0
	bge	.L143
	ldrh	w1, [sp, 58]
	ldr	x0, [sp, 32]
	bl	uECC_vli_testBit
	cmp	w0, 0
	beq	.L143
.L142:
	mov	w0, 1
	b	.L144
.L143:
	mov	w0, 0
.L144:
	str	w0, [sp, 60]
	ldr	x0, [sp, 16]
	add	x0, x0, 36
	ldrb	w3, [sp, 57]
	mov	x2, x0
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 24]
	bl	uECC_vli_add
	ldr	w0, [sp, 60]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE37:
	.size	regularize_k, .-regularize_k
	.align	2
	.global	EccPoint_compute_public_key
	.type	EccPoint_compute_public_key, %function
EccPoint_compute_public_key:
.LFB38:
	.cfi_startproc
	sub	sp, sp, #144
	.cfi_def_cfa_offset 144
	stp	x29, x30, [sp, 128]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 128
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 120]
	mov	x1, 0
	add	x0, sp, 56
	str	x0, [sp, 40]
	add	x0, sp, 88
	str	x0, [sp, 48]
	add	x1, sp, 88
	add	x0, sp, 56
	ldr	x3, [sp, 8]
	mov	x2, x1
	mov	x1, x0
	ldr	x0, [sp, 16]
	bl	regularize_k
	str	w0, [sp, 36]
	ldr	x0, [sp, 8]
	add	x6, x0, 68
	ldr	w0, [sp, 36]
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	sxtw	x0, w0
	lsl	x0, x0, 3
	add	x1, sp, 40
	ldr	x1, [x1, x0]
	ldr	x0, [sp, 8]
	ldrsh	w0, [x0, 2]
	and	w0, w0, 65535
	add	w0, w0, 1
	and	w0, w0, 65535
	sxth	w0, w0
	ldr	x5, [sp, 8]
	mov	w4, w0
	mov	x3, 0
	mov	x2, x1
	mov	x1, x6
	ldr	x0, [sp, 24]
	bl	EccPoint_mult
	ldr	x1, [sp, 8]
	ldr	x0, [sp, 24]
	bl	EccPoint_isZero
	cmp	w0, 0
	beq	.L147
	mov	w0, 0
	b	.L149
.L147:
	mov	w0, 1
.L149:
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 120]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L150
	bl	__stack_chk_fail
.L150:
	mov	w0, w1
	ldp	x29, x30, [sp, 128]
	add	sp, sp, 144
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE38:
	.size	EccPoint_compute_public_key, .-EccPoint_compute_public_key
	.align	2
	.global	uECC_vli_nativeToBytes
	.type	uECC_vli_nativeToBytes, %function
uECC_vli_nativeToBytes:
.LFB39:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	str	x2, [sp, 8]
	strb	wzr, [sp, 43]
	b	.L152
.L153:
	ldr	w0, [sp, 20]
	sub	w1, w0, #1
	ldrsb	w0, [sp, 43]
	sub	w0, w1, w0
	str	w0, [sp, 44]
	ldr	w0, [sp, 44]
	lsr	w0, w0, 2
	uxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldr	w0, [sp, 44]
	and	w0, w0, 3
	lsl	w0, w0, 3
	lsr	w2, w1, w0
	ldrsb	x0, [sp, 43]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	and	w1, w2, 255
	strb	w1, [x0]
	ldrb	w0, [sp, 43]
	add	w0, w0, 1
	and	w0, w0, 255
	strb	w0, [sp, 43]
.L152:
	ldrsb	w0, [sp, 43]
	ldr	w1, [sp, 20]
	cmp	w1, w0
	bgt	.L153
	nop
	nop
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE39:
	.size	uECC_vli_nativeToBytes, .-uECC_vli_nativeToBytes
	.align	2
	.global	uECC_vli_bytesToNative
	.type	uECC_vli_bytesToNative, %function
uECC_vli_bytesToNative:
.LFB40:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	w2, [sp, 28]
	ldr	w0, [sp, 28]
	add	w0, w0, 3
	add	w1, w0, 3
	cmp	w0, 0
	csel	w0, w1, w0, lt
	asr	w0, w0, 2
	sxtb	w0, w0
	mov	w1, w0
	ldr	x0, [sp, 40]
	bl	uECC_vli_clear
	strb	wzr, [sp, 59]
	b	.L155
.L156:
	ldr	w0, [sp, 28]
	sub	w1, w0, #1
	ldrsb	w0, [sp, 59]
	sub	w0, w1, w0
	str	w0, [sp, 60]
	ldr	w0, [sp, 60]
	lsr	w3, w0, 2
	uxtw	x0, w3
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	w2, [x0]
	ldrsb	x0, [sp, 59]
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldrb	w0, [x0]
	mov	w1, w0
	ldr	w0, [sp, 60]
	and	w0, w0, 3
	lsl	w0, w0, 3
	lsl	w1, w1, w0
	uxtw	x0, w3
	lsl	x0, x0, 2
	ldr	x3, [sp, 40]
	add	x0, x3, x0
	orr	w1, w2, w1
	str	w1, [x0]
	ldrb	w0, [sp, 59]
	add	w0, w0, 1
	and	w0, w0, 255
	strb	w0, [sp, 59]
.L155:
	ldrsb	w0, [sp, 59]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	bgt	.L156
	nop
	nop
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE40:
	.size	uECC_vli_bytesToNative, .-uECC_vli_bytesToNative
	.align	2
	.global	uECC_generate_random_int
	.type	uECC_generate_random_int, %function
uECC_generate_random_int:
.LFB41:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	strb	w2, [sp, 31]
	mov	w0, -1
	str	w0, [sp, 60]
	ldrb	w1, [sp, 31]
	ldr	x0, [sp, 32]
	bl	uECC_vli_numBits
	strh	w0, [sp, 54]
	adrp	x0, g_rng_function
	add	x0, x0, :lo12:g_rng_function
	ldr	x0, [x0]
	cmp	x0, 0
	bne	.L158
	mov	w0, 0
	b	.L159
.L158:
	str	wzr, [sp, 56]
	b	.L160
.L163:
	adrp	x0, g_rng_function
	add	x0, x0, :lo12:g_rng_function
	ldr	x2, [x0]
	ldrsb	w0, [sp, 31]
	lsl	w0, w0, 2
	mov	w1, w0
	ldr	x0, [sp, 40]
	blr	x2
	cmp	w0, 0
	bne	.L161
	mov	w0, 0
	b	.L159
.L161:
	ldrsb	x0, [sp, 31]
	lsl	x0, x0, 2
	sub	x0, x0, #4
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	w2, [x0]
	ldrsb	w0, [sp, 31]
	and	w0, w0, 65535
	ubfiz	w0, w0, 5, 11
	and	w1, w0, 65535
	ldrh	w0, [sp, 54]
	sub	w0, w1, w0
	and	w0, w0, 65535
	sxth	w0, w0
	mov	w1, w0
	ldr	w0, [sp, 60]
	lsr	w1, w0, w1
	ldrsb	x0, [sp, 31]
	lsl	x0, x0, 2
	sub	x0, x0, #4
	ldr	x3, [sp, 40]
	add	x0, x3, x0
	and	w1, w2, w1
	str	w1, [x0]
	ldrb	w1, [sp, 31]
	ldr	x0, [sp, 40]
	bl	uECC_vli_isZero
	cmp	w0, 0
	bne	.L162
	ldrb	w2, [sp, 31]
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 32]
	bl	uECC_vli_cmp
	sxtb	w0, w0
	cmp	w0, 1
	bne	.L162
	mov	w0, 1
	b	.L159
.L162:
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
.L160:
	ldr	w0, [sp, 56]
	cmp	w0, 63
	bls	.L163
	mov	w0, 0
.L159:
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE41:
	.size	uECC_generate_random_int, .-uECC_generate_random_int
	.align	2
	.global	uECC_valid_point
	.type	uECC_valid_point, %function
uECC_valid_point:
.LFB42:
	.cfi_startproc
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, 96]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 96
	str	x0, [sp, 8]
	str	x1, [sp]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 88]
	mov	x1, 0
	ldr	x0, [sp]
	ldrb	w0, [x0]
	strb	w0, [sp, 23]
	ldr	x1, [sp]
	ldr	x0, [sp, 8]
	bl	EccPoint_isZero
	cmp	w0, 0
	beq	.L165
	mov	w0, -1
	b	.L170
.L165:
	ldr	x0, [sp]
	add	x0, x0, 4
	ldrb	w2, [sp, 23]
	ldr	x1, [sp, 8]
	bl	uECC_vli_cmp_unsafe
	sxtb	w0, w0
	cmp	w0, 1
	bne	.L167
	ldr	x0, [sp]
	add	x3, x0, 4
	ldrsb	x0, [sp, 23]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldrb	w2, [sp, 23]
	mov	x1, x0
	mov	x0, x3
	bl	uECC_vli_cmp_unsafe
	sxtb	w0, w0
	cmp	w0, 1
	beq	.L168
.L167:
	mov	w0, -2
	b	.L170
.L168:
	ldrsb	x0, [sp, 23]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x1, x1, x0
	add	x0, sp, 24
	ldr	x2, [sp]
	bl	uECC_vli_modSquare_fast
	ldr	x0, [sp]
	ldr	x3, [x0, 176]
	add	x0, sp, 56
	ldr	x2, [sp]
	ldr	x1, [sp, 8]
	blr	x3
	add	x1, sp, 56
	add	x0, sp, 24
	ldrb	w2, [sp, 23]
	bl	uECC_vli_equal
	cmp	w0, 0
	beq	.L169
	mov	w0, -3
	b	.L170
.L169:
	mov	w0, 0
.L170:
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 88]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L171
	bl	__stack_chk_fail
.L171:
	mov	w0, w1
	ldp	x29, x30, [sp, 96]
	add	sp, sp, 112
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE42:
	.size	uECC_valid_point, .-uECC_valid_point
	.align	2
	.global	uECC_valid_public_key
	.type	uECC_valid_public_key, %function
uECC_valid_public_key:
.LFB43:
	.cfi_startproc
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, 96]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 96
	str	x0, [sp, 8]
	str	x1, [sp]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 88]
	mov	x1, 0
	ldr	x0, [sp]
	ldrsb	w0, [x0, 1]
	mov	w1, w0
	add	x0, sp, 24
	mov	w2, w1
	ldr	x1, [sp, 8]
	bl	uECC_vli_bytesToNative
	ldr	x0, [sp]
	ldrsb	w0, [x0]
	sxtb	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 24
	add	x3, x1, x0
	ldr	x0, [sp]
	ldrsb	w0, [x0, 1]
	sxtb	x0, w0
	ldr	x1, [sp, 8]
	add	x1, x1, x0
	ldr	x0, [sp]
	ldrsb	w0, [x0, 1]
	mov	w2, w0
	mov	x0, x3
	bl	uECC_vli_bytesToNative
	ldr	x0, [sp]
	add	x1, x0, 68
	add	x0, sp, 24
	mov	w2, 16
	bl	uECC_vli_cmp_unsafe
	sxtb	w0, w0
	cmp	w0, 0
	bne	.L173
	mov	w0, -4
	b	.L175
.L173:
	add	x0, sp, 24
	ldr	x1, [sp]
	bl	uECC_valid_point
.L175:
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 88]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L176
	bl	__stack_chk_fail
.L176:
	mov	w0, w1
	ldp	x29, x30, [sp, 96]
	add	sp, sp, 112
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE43:
	.size	uECC_valid_public_key, .-uECC_valid_public_key
	.align	2
	.global	uECC_compute_public_key
	.type	uECC_compute_public_key, %function
uECC_compute_public_key:
.LFB44:
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
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 136]
	mov	x1, 0
	ldr	x0, [sp, 8]
	ldrsh	w0, [x0, 2]
	add	w0, w0, 7
	add	w1, w0, 7
	cmp	w0, 0
	csel	w0, w1, w0, lt
	asr	w0, w0, 3
	mov	w1, w0
	add	x0, sp, 40
	mov	w2, w1
	ldr	x1, [sp, 24]
	bl	uECC_vli_bytesToNative
	ldr	x0, [sp, 8]
	ldrsh	w0, [x0, 2]
	add	w0, w0, 31
	add	w1, w0, 31
	cmp	w0, 0
	csel	w0, w1, w0, lt
	asr	w0, w0, 5
	sxtb	w1, w0
	add	x0, sp, 40
	bl	uECC_vli_isZero
	cmp	w0, 0
	beq	.L178
	mov	w0, 0
	b	.L182
.L178:
	ldr	x0, [sp, 8]
	add	x3, x0, 36
	ldr	x0, [sp, 8]
	ldrsh	w0, [x0, 2]
	add	w0, w0, 31
	add	w1, w0, 31
	cmp	w0, 0
	csel	w0, w1, w0, lt
	asr	w0, w0, 5
	sxtb	w1, w0
	add	x0, sp, 40
	mov	w2, w1
	mov	x1, x0
	mov	x0, x3
	bl	uECC_vli_cmp
	sxtb	w0, w0
	cmp	w0, 1
	beq	.L180
	mov	w0, 0
	b	.L182
.L180:
	add	x1, sp, 40
	add	x0, sp, 72
	ldr	x2, [sp, 8]
	bl	EccPoint_compute_public_key
	cmp	w0, 0
	bne	.L181
	mov	w0, 0
	b	.L182
.L181:
	ldr	x0, [sp, 8]
	ldrsb	w0, [x0, 1]
	mov	w1, w0
	add	x0, sp, 72
	mov	x2, x0
	ldr	x0, [sp, 16]
	bl	uECC_vli_nativeToBytes
	ldr	x0, [sp, 8]
	ldrsb	w0, [x0, 1]
	sxtb	x0, w0
	ldr	x1, [sp, 16]
	add	x3, x1, x0
	ldr	x0, [sp, 8]
	ldrsb	w0, [x0, 1]
	mov	w4, w0
	ldr	x0, [sp, 8]
	ldrsb	w0, [x0]
	sxtb	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 72
	add	x0, x1, x0
	mov	x2, x0
	mov	w1, w4
	mov	x0, x3
	bl	uECC_vli_nativeToBytes
	mov	w0, 1
.L182:
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 136]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L183
	bl	__stack_chk_fail
.L183:
	mov	w0, w1
	ldp	x29, x30, [sp, 144]
	add	sp, sp, 160
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE44:
	.size	uECC_compute_public_key, .-uECC_compute_public_key
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
