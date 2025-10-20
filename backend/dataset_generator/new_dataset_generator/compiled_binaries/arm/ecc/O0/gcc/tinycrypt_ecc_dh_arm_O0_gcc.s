	.arch armv7-a
	.fpu vfpv3-d16
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"tinycrypt_ecc_dh.c"
	.text
	.section	.data.rel.ro,"aw"
	.align	2
	.type	curve_secp256r1, %object
	.size	curve_secp256r1, 176
curve_secp256r1:
	.byte	8
	.byte	32
	.short	256
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
	.word	double_jacobian_default
	.word	x_side_default
	.word	vli_mmod_fast_secp256r1
	.text
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	_set_secure, %function
_set_secure:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	mov	r3, r1
	str	r2, [r7, #4]
	strb	r3, [r7, #11]
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	ldr	r2, [r7, #4]
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	memset(PLT)
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	_set_secure, .-_set_secure
	.align	1
	.global	uECC_make_key_with_d
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_make_key_with_d, %function
uECC_make_key_with_d:
	@ args = 0, pretend = 0, frame = 120
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #120
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r2, .L7
.LPIC0:
	add	r2, pc
	ldr	r3, .L7+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [r7, #116]
	mov	r3, #0
	add	r3, r7, #20
	movs	r2, #32
	ldr	r1, [r7, #4]
	mov	r0, r3
	bl	memcpy(PLT)
	add	r1, r7, #20
	add	r3, r7, #52
	ldr	r2, [r7]
	mov	r0, r3
	bl	EccPoint_compute_public_key(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L3
	ldr	r3, [r7]
	ldrsh	r3, [r3, #2]
	adds	r3, r3, #7
	adds	r2, r3, #7
	cmp	r3, #0
	ite	lt
	movlt	r3, r2
	movge	r3, r3
	asrs	r3, r3, #3
	mov	r1, r3
	add	r3, r7, #20
	mov	r2, r3
	ldr	r0, [r7, #8]
	bl	uECC_vli_nativeToBytes(PLT)
	ldr	r3, [r7]
	ldrsb	r3, [r3, #1]
	mov	r1, r3
	add	r3, r7, #52
	mov	r2, r3
	ldr	r0, [r7, #12]
	bl	uECC_vli_nativeToBytes(PLT)
	ldr	r3, [r7]
	ldrsb	r3, [r3, #1]
	mov	r2, r3
	ldr	r3, [r7, #12]
	adds	r0, r3, r2
	ldr	r3, [r7]
	ldrsb	r3, [r3, #1]
	mov	r1, r3
	ldr	r3, [r7]
	ldrsb	r3, [r3]
	lsls	r3, r3, #2
	add	r2, r7, #52
	add	r3, r3, r2
	mov	r2, r3
	bl	uECC_vli_nativeToBytes(PLT)
	add	r3, r7, #20
	movs	r2, #32
	movs	r1, #0
	mov	r0, r3
	bl	_set_secure(PLT)
	movs	r3, #1
	b	.L5
.L3:
	movs	r3, #0
.L5:
	ldr	r1, .L7+8
.LPIC1:
	add	r1, pc
	ldr	r2, .L7+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [r7, #116]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L6
	bl	__stack_chk_fail(PLT)
.L6:
	mov	r0, r3
	adds	r7, r7, #120
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L8:
	.align	2
.L7:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC1+4)
	.size	uECC_make_key_with_d, .-uECC_make_key_with_d
	.align	1
	.global	uECC_make_key
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_make_key, %function
uECC_make_key:
	@ args = 0, pretend = 0, frame = 192
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #196
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r2, .L18
.LPIC2:
	add	r2, pc
	ldr	r3, .L18+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [r7, #188]
	mov	r3, #0
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L10
.L15:
	bl	uECC_get_rng(PLT)
	str	r0, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L11
	add	r2, r7, #60
	ldr	r3, [r7, #24]
	movs	r1, #64
	mov	r0, r2
	blx	r3
	mov	r3, r0
	cmp	r3, #0
	bne	.L12
.L11:
	movs	r3, #0
	b	.L16
.L12:
	ldr	r3, [r7, #4]
	add	r4, r3, #36
	ldr	r3, [r7, #4]
	ldrsh	r3, [r3, #2]
	adds	r3, r3, #31
	add	r2, r3, #31
	cmp	r3, #0
	ite	lt
	movlt	r3, r2
	movge	r3, r3
	asrs	r3, r3, #5
	sxtb	r3, r3
	add	r1, r7, #60
	add	r0, r7, #28
	mov	r2, r4
	bl	uECC_vli_mmod(PLT)
	add	r1, r7, #28
	add	r3, r7, #124
	ldr	r2, [r7, #4]
	mov	r0, r3
	bl	EccPoint_compute_public_key(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L14
	ldr	r3, [r7, #4]
	ldrsh	r3, [r3, #2]
	adds	r3, r3, #7
	adds	r2, r3, #7
	cmp	r3, #0
	ite	lt
	movlt	r3, r2
	movge	r3, r3
	asrs	r3, r3, #3
	mov	r1, r3
	add	r3, r7, #28
	mov	r2, r3
	ldr	r0, [r7, #8]
	bl	uECC_vli_nativeToBytes(PLT)
	ldr	r3, [r7, #4]
	ldrsb	r3, [r3, #1]
	mov	r1, r3
	add	r3, r7, #124
	mov	r2, r3
	ldr	r0, [r7, #12]
	bl	uECC_vli_nativeToBytes(PLT)
	ldr	r3, [r7, #4]
	ldrsb	r3, [r3, #1]
	mov	r2, r3
	ldr	r3, [r7, #12]
	adds	r0, r3, r2
	ldr	r3, [r7, #4]
	ldrsb	r3, [r3, #1]
	mov	r1, r3
	ldr	r3, [r7, #4]
	ldrsb	r3, [r3]
	lsls	r3, r3, #2
	add	r2, r7, #124
	add	r3, r3, r2
	mov	r2, r3
	bl	uECC_vli_nativeToBytes(PLT)
	add	r3, r7, #28
	movs	r2, #32
	movs	r1, #0
	mov	r0, r3
	bl	_set_secure(PLT)
	movs	r3, #1
	b	.L16
.L14:
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L10:
	ldr	r3, [r7, #20]
	cmp	r3, #63
	bls	.L15
	movs	r3, #0
.L16:
	ldr	r1, .L18+8
.LPIC3:
	add	r1, pc
	ldr	r2, .L18+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [r7, #188]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L17
	bl	__stack_chk_fail(PLT)
.L17:
	mov	r0, r3
	adds	r7, r7, #196
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L19:
	.align	2
.L18:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC2+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC3+4)
	.size	uECC_make_key, .-uECC_make_key
	.align	1
	.global	uECC_shared_secret
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_shared_secret, %function
uECC_shared_secret:
	@ args = 0, pretend = 0, frame = 176
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #188
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r2, .L26
.LPIC4:
	add	r2, pc
	ldr	r3, .L26+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [r7, #172]
	mov	r3, #0
	add	r3, r7, #44
	str	r3, [r7, #36]
	add	r3, r7, #76
	str	r3, [r7, #40]
	movs	r3, #0
	str	r3, [r7, #24]
	ldr	r3, [r7]
	ldrb	r3, [r3]
	strb	r3, [r7, #22]
	ldr	r3, [r7]
	ldrb	r3, [r3, #1]
	strb	r3, [r7, #23]
	ldr	r3, [r7]
	ldrsh	r3, [r3, #2]
	adds	r3, r3, #7
	adds	r2, r3, #7
	cmp	r3, #0
	ite	lt
	movlt	r3, r2
	movge	r3, r3
	asrs	r3, r3, #3
	mov	r2, r3
	add	r3, r7, #44
	ldr	r1, [r7, #8]
	mov	r0, r3
	bl	uECC_vli_bytesToNative(PLT)
	ldrsb	r2, [r7, #23]
	add	r3, r7, #108
	ldr	r1, [r7, #12]
	mov	r0, r3
	bl	uECC_vli_bytesToNative(PLT)
	ldrsb	r3, [r7, #22]
	lsls	r3, r3, #2
	add	r2, r7, #108
	adds	r0, r2, r3
	ldrsb	r3, [r7, #23]
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldrsb	r2, [r7, #23]
	mov	r1, r3
	bl	uECC_vli_bytesToNative(PLT)
	add	r2, r7, #76
	add	r1, r7, #44
	add	r0, r7, #44
	ldr	r3, [r7]
	bl	regularize_k(PLT)
	str	r0, [r7, #32]
	bl	uECC_get_rng(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L21
	ldr	r3, [r7, #32]
	lsls	r3, r3, #2
	adds	r3, r3, #176
	add	r3, r3, r7
	ldr	r0, [r3, #-140]
	ldr	r3, [r7]
	adds	r3, r3, #4
	ldrsb	r2, [r7, #22]
	mov	r1, r3
	bl	uECC_generate_random_int(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L22
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L23
.L22:
	ldr	r3, [r7, #32]
	lsls	r3, r3, #2
	adds	r3, r3, #176
	add	r3, r3, r7
	ldr	r3, [r3, #-140]
	str	r3, [r7, #24]
.L21:
	ldr	r3, [r7, #32]
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	lsls	r3, r3, #2
	adds	r3, r3, #176
	add	r3, r3, r7
	ldr	r4, [r3, #-140]
	ldr	r3, [r7]
	ldrsh	r3, [r3, #2]
	uxth	r3, r3
	adds	r3, r3, #1
	uxth	r3, r3
	sxth	r3, r3
	add	r1, r7, #108
	add	r0, r7, #108
	ldr	r2, [r7]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r3, [r7, #24]
	mov	r2, r4
	bl	EccPoint_mult(PLT)
	ldrsb	r3, [r7, #23]
	add	r2, r7, #108
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	uECC_vli_nativeToBytes(PLT)
	add	r3, r7, #108
	ldr	r1, [r7]
	mov	r0, r3
	bl	EccPoint_isZero(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #28]
.L23:
	add	r3, r7, #36
	movs	r2, #8
	movs	r1, #0
	mov	r0, r3
	bl	_set_secure(PLT)
	add	r3, r7, #76
	movs	r2, #32
	movs	r1, #0
	mov	r0, r3
	bl	_set_secure(PLT)
	add	r3, r7, #44
	movs	r2, #32
	movs	r1, #0
	mov	r0, r3
	bl	_set_secure(PLT)
	ldr	r3, [r7, #28]
	ldr	r1, .L26+8
.LPIC5:
	add	r1, pc
	ldr	r2, .L26+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [r7, #172]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L25
	bl	__stack_chk_fail(PLT)
.L25:
	mov	r0, r3
	adds	r7, r7, #180
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L27:
	.align	2
.L26:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC4+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC5+4)
	.size	uECC_shared_secret, .-uECC_shared_secret
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
