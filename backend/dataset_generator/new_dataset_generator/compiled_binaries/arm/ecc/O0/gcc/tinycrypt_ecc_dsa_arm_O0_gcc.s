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
	.file	"tinycrypt_ecc_dsa.c"
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
	.type	bits2int, %function
bits2int:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7]
	ldrsh	r3, [r3, #2]
	adds	r3, r3, #7
	adds	r2, r3, #7
	cmp	r3, #0
	ite	lt
	movlt	r3, r2
	movge	r3, r3
	asrs	r3, r3, #3
	str	r3, [r7, #24]
	ldr	r3, [r7]
	ldrsh	r3, [r3, #2]
	adds	r3, r3, #31
	add	r2, r3, #31
	cmp	r3, #0
	ite	lt
	movlt	r3, r2
	movge	r3, r3
	asrs	r3, r3, #5
	str	r3, [r7, #28]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bls	.L2
	ldr	r3, [r7, #24]
	str	r3, [r7, #4]
.L2:
	ldr	r3, [r7, #28]
	sxtb	r3, r3
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	uECC_vli_clear(PLT)
	ldr	r3, [r7, #4]
	mov	r2, r3
	ldr	r1, [r7, #8]
	ldr	r0, [r7, #12]
	bl	uECC_vli_bytesToNative(PLT)
	ldr	r3, [r7, #4]
	lsls	r3, r3, #3
	ldr	r2, [r7]
	ldrsh	r2, [r2, #2]
	cmp	r3, r2
	bls	.L7
	ldr	r3, [r7, #4]
	lsls	r3, r3, #3
	ldr	r2, [r7]
	ldrsh	r2, [r2, #2]
	subs	r3, r3, r2
	str	r3, [r7, #32]
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r3, [r7, #28]
	lsls	r3, r3, #2
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	str	r3, [r7, #20]
	b	.L5
.L6:
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	str	r3, [r7, #36]
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #32]
	lsrs	r2, r2, r3
	ldr	r3, [r7, #16]
	orrs	r2, r2, r3
	ldr	r3, [r7, #20]
	str	r2, [r3]
	ldr	r3, [r7, #32]
	rsb	r3, r3, #32
	ldr	r2, [r7, #36]
	lsl	r3, r2, r3
	str	r3, [r7, #16]
.L5:
	ldr	r3, [r7, #20]
	subs	r2, r3, #4
	str	r2, [r7, #20]
	ldr	r2, [r7, #12]
	cmp	r2, r3
	bcc	.L6
	ldr	r3, [r7]
	adds	r3, r3, #36
	ldr	r2, [r7, #28]
	sxtb	r2, r2
	ldr	r1, [r7, #12]
	mov	r0, r3
	bl	uECC_vli_cmp_unsafe(PLT)
	mov	r3, r0
	cmp	r3, #1
	beq	.L1
	ldr	r3, [r7]
	add	r2, r3, #36
	ldr	r3, [r7, #28]
	sxtb	r3, r3
	ldr	r1, [r7, #12]
	ldr	r0, [r7, #12]
	bl	uECC_vli_sub(PLT)
	b	.L1
.L7:
	nop
.L1:
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	bits2int, .-bits2int
	.align	1
	.global	uECC_sign_with_k
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_sign_with_k, %function
uECC_sign_with_k:
	@ args = 8, pretend = 0, frame = 176
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #188
	add	r7, sp, #8
	str	r0, [r7, #20]
	str	r1, [r7, #16]
	str	r2, [r7, #12]
	str	r3, [r7, #8]
	ldr	r3, [r7, #192]
	str	r3, [r7, #4]
	ldr	r3, [r7, #196]
	str	r3, [r7]
	ldr	r2, .L18
.LPIC0:
	add	r2, pc
	ldr	r3, .L18+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [r7, #172]
	mov	r3, #0
	add	r3, r7, #44
	str	r3, [r7, #36]
	add	r3, r7, #76
	str	r3, [r7, #40]
	ldr	r3, [r7]
	ldrb	r3, [r3]
	strb	r3, [r7, #28]
	ldr	r3, [r7]
	ldrsh	r3, [r3, #2]
	adds	r3, r3, #31
	add	r2, r3, #31
	cmp	r3, #0
	ite	lt
	movlt	r3, r2
	movge	r3, r3
	asrs	r3, r3, #5
	strb	r3, [r7, #29]
	ldr	r3, [r7]
	ldrh	r3, [r3, #2]	@ movhi
	strh	r3, [r7, #30]	@ movhi
	ldrsb	r3, [r7, #28]
	mov	r1, r3
	ldr	r0, [r7, #8]
	bl	uECC_vli_isZero(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L9
	ldr	r3, [r7]
	adds	r3, r3, #36
	ldrsb	r2, [r7, #29]
	ldr	r1, [r7, #8]
	mov	r0, r3
	bl	uECC_vli_cmp(PLT)
	mov	r3, r0
	cmp	r3, #1
	beq	.L10
.L9:
	movs	r3, #0
	b	.L16
.L10:
	add	r2, r7, #76
	add	r1, r7, #44
	ldr	r3, [r7]
	ldr	r0, [r7, #8]
	bl	regularize_k(PLT)
	str	r0, [r7, #32]
	ldr	r3, [r7]
	add	r1, r3, #68
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
	ldrh	r3, [r7, #30]
	adds	r3, r3, #1
	uxth	r3, r3
	sxth	r3, r3
	add	r0, r7, #108
	ldr	r2, [r7]
	str	r2, [sp, #4]
	str	r3, [sp]
	movs	r3, #0
	mov	r2, r4
	bl	EccPoint_mult(PLT)
	ldrsb	r2, [r7, #28]
	add	r3, r7, #108
	mov	r1, r2
	mov	r0, r3
	bl	uECC_vli_isZero(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L12
	movs	r3, #0
	b	.L16
.L12:
	bl	uECC_get_rng(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L13
	ldrsb	r2, [r7, #29]
	add	r3, r7, #44
	mov	r1, r2
	mov	r0, r3
	bl	uECC_vli_clear(PLT)
	movs	r3, #1
	str	r3, [r7, #44]
	b	.L14
.L13:
	ldr	r3, [r7]
	add	r1, r3, #36
	ldrsb	r2, [r7, #29]
	add	r3, r7, #44
	mov	r0, r3
	bl	uECC_generate_random_int(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L14
	movs	r3, #0
	b	.L16
.L14:
	ldr	r3, [r7]
	add	r1, r3, #36
	add	r2, r7, #44
	ldrsb	r3, [r7, #29]
	str	r3, [sp]
	mov	r3, r1
	ldr	r1, [r7, #8]
	ldr	r0, [r7, #8]
	bl	uECC_vli_modMult(PLT)
	ldr	r3, [r7]
	add	r2, r3, #36
	ldrsb	r3, [r7, #29]
	ldr	r1, [r7, #8]
	ldr	r0, [r7, #8]
	bl	uECC_vli_modInv(PLT)
	ldr	r3, [r7]
	add	r1, r3, #36
	add	r2, r7, #44
	ldrsb	r3, [r7, #29]
	str	r3, [sp]
	mov	r3, r1
	ldr	r1, [r7, #8]
	ldr	r0, [r7, #8]
	bl	uECC_vli_modMult(PLT)
	ldr	r3, [r7]
	ldrsb	r3, [r3, #1]
	mov	r1, r3
	add	r3, r7, #108
	mov	r2, r3
	ldr	r0, [r7, #4]
	bl	uECC_vli_nativeToBytes(PLT)
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
	ldr	r1, [r7, #20]
	mov	r0, r3
	bl	uECC_vli_bytesToNative(PLT)
	ldrsb	r3, [r7, #29]
	subs	r3, r3, #1
	lsls	r3, r3, #2
	adds	r3, r3, #176
	add	r3, r3, r7
	movs	r2, #0
	str	r2, [r3, #-100]
	ldrsb	r2, [r7, #28]
	add	r1, r7, #108
	add	r3, r7, #76
	mov	r0, r3
	bl	uECC_vli_set(PLT)
	ldr	r3, [r7]
	add	r4, r3, #36
	add	r2, r7, #76
	add	r1, r7, #44
	add	r0, r7, #76
	ldrsb	r3, [r7, #29]
	str	r3, [sp]
	mov	r3, r4
	bl	uECC_vli_modMult(PLT)
	add	r0, r7, #44
	ldr	r3, [r7]
	ldr	r2, [r7, #12]
	ldr	r1, [r7, #16]
	bl	bits2int(PLT)
	ldr	r3, [r7]
	add	r4, r3, #36
	add	r2, r7, #76
	add	r1, r7, #44
	add	r0, r7, #76
	ldrsb	r3, [r7, #29]
	str	r3, [sp]
	mov	r3, r4
	bl	uECC_vli_modAdd(PLT)
	ldr	r3, [r7]
	add	r2, r3, #36
	add	r1, r7, #76
	add	r0, r7, #76
	ldrsb	r3, [r7, #29]
	str	r3, [sp]
	mov	r3, r2
	ldr	r2, [r7, #8]
	bl	uECC_vli_modMult(PLT)
	ldrsb	r2, [r7, #29]
	add	r3, r7, #76
	mov	r1, r2
	mov	r0, r3
	bl	uECC_vli_numBits(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7]
	ldrsb	r3, [r3, #1]
	lsls	r3, r3, #3
	cmp	r2, r3
	ble	.L15
	movs	r3, #0
	b	.L16
.L15:
	ldr	r3, [r7]
	ldrsb	r3, [r3, #1]
	mov	r2, r3
	ldr	r3, [r7, #4]
	adds	r0, r3, r2
	ldr	r3, [r7]
	ldrsb	r3, [r3, #1]
	mov	r1, r3
	add	r3, r7, #76
	mov	r2, r3
	bl	uECC_vli_nativeToBytes(PLT)
	movs	r3, #1
.L16:
	ldr	r1, .L18+8
.LPIC1:
	add	r1, pc
	ldr	r2, .L18+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [r7, #172]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L17
	bl	__stack_chk_fail(PLT)
.L17:
	mov	r0, r3
	adds	r7, r7, #180
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L19:
	.align	2
.L18:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC1+4)
	.size	uECC_sign_with_k, .-uECC_sign_with_k
	.align	1
	.global	uECC_sign
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_sign, %function
uECC_sign:
	@ args = 4, pretend = 0, frame = 136
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #148
	add	r7, sp, #8
	str	r0, [r7, #20]
	str	r1, [r7, #16]
	str	r2, [r7, #12]
	str	r3, [r7, #8]
	ldr	r3, [r7, #152]
	str	r3, [r7, #4]
	ldr	r2, .L29
.LPIC2:
	add	r2, pc
	ldr	r3, .L29+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [r7, #132]
	mov	r3, #0
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L21
.L26:
	bl	uECC_get_rng(PLT)
	str	r0, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	beq	.L22
	add	r2, r7, #68
	ldr	r3, [r7, #32]
	movs	r1, #64
	mov	r0, r2
	blx	r3
	mov	r3, r0
	cmp	r3, #0
	bne	.L23
.L22:
	movs	r3, #0
	b	.L27
.L23:
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
	add	r1, r7, #68
	add	r0, r7, #36
	mov	r2, r4
	bl	uECC_vli_mmod(PLT)
	add	r2, r7, #36
	ldr	r3, [r7, #4]
	str	r3, [sp, #4]
	ldr	r3, [r7, #8]
	str	r3, [sp]
	mov	r3, r2
	ldr	r2, [r7, #12]
	ldr	r1, [r7, #16]
	ldr	r0, [r7, #20]
	bl	uECC_sign_with_k(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L25
	movs	r3, #1
	b	.L27
.L25:
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L21:
	ldr	r3, [r7, #28]
	cmp	r3, #63
	bls	.L26
	movs	r3, #0
.L27:
	ldr	r1, .L29+8
.LPIC3:
	add	r1, pc
	ldr	r2, .L29+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [r7, #132]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L28
	bl	__stack_chk_fail(PLT)
.L28:
	mov	r0, r3
	adds	r7, r7, #140
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L30:
	.align	2
.L29:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC2+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC3+4)
	.size	uECC_sign, .-uECC_sign
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	smax, %function
smax:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	mov	r2, r1
	strh	r3, [r7, #6]	@ movhi
	mov	r3, r2	@ movhi
	strh	r3, [r7, #4]	@ movhi
	ldrsh	r2, [r7, #4]
	ldrsh	r3, [r7, #6]
	cmp	r3, r2
	it	lt
	movlt	r3, r2
	sxth	r3, r3
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	smax, .-smax
	.align	1
	.global	uECC_verify
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_verify, %function
uECC_verify:
	@ args = 4, pretend = 0, frame = 512
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #520
	add	r7, sp, #8
	add	r4, r7, #512
	sub	r4, r4, #492
	str	r0, [r4]
	add	r0, r7, #512
	sub	r0, r0, #496
	str	r1, [r0]
	add	r1, r7, #512
	sub	r1, r1, #500
	str	r2, [r1]
	add	r2, r7, #512
	sub	r2, r2, #504
	str	r3, [r2]
	add	r3, r7, #512
	sub	r3, r3, #508
	ldr	r2, [r7, #528]
	str	r2, [r3]
	ldr	r2, .L49
.LPIC4:
	add	r2, pc
	ldr	r3, .L49+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [r7, #508]
	mov	r3, #0
	add	r3, r7, #512
	sub	r3, r3, #482
	add	r2, r7, #512
	sub	r2, r2, #508
	ldr	r2, [r2]
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #512
	sub	r3, r3, #508
	ldr	r3, [r3]
	ldrsh	r3, [r3, #2]
	adds	r3, r3, #31
	add	r2, r3, #31
	cmp	r3, #0
	ite	lt
	movlt	r3, r2
	movge	r3, r3
	asrs	r3, r3, #5
	mov	r2, r3
	add	r3, r7, #512
	subw	r3, r3, #481
	strb	r2, [r3]
	add	r3, r7, #512
	subw	r3, r3, #481
	ldrsb	r3, [r3]
	subs	r2, r3, #1
	add	r3, r7, #512
	sub	r3, r3, #356
	movs	r1, #0
	str	r1, [r3, r2, lsl #2]
	add	r3, r7, #512
	subw	r3, r3, #481
	ldrsb	r3, [r3]
	subs	r3, r3, #1
	lsls	r3, r3, #2
	add	r3, r3, #512
	add	r3, r3, r7
	movs	r2, #0
	str	r2, [r3, #-196]
	add	r3, r7, #512
	subw	r3, r3, #481
	ldrsb	r3, [r3]
	subs	r3, r3, #1
	lsls	r3, r3, #2
	add	r3, r3, #512
	add	r3, r3, r7
	movs	r2, #0
	str	r2, [r3, #-164]
	add	r3, r7, #512
	sub	r3, r3, #508
	ldr	r3, [r3]
	ldrsb	r3, [r3, #1]
	mov	r2, r3
	add	r3, r7, #512
	sub	r3, r3, #492
	add	r0, r7, #444
	ldr	r1, [r3]
	bl	uECC_vli_bytesToNative(PLT)
	add	r3, r7, #512
	sub	r3, r3, #482
	ldrsb	r3, [r3]
	lsls	r3, r3, #2
	add	r2, r7, #444
	adds	r0, r2, r3
	add	r3, r7, #512
	sub	r3, r3, #508
	ldr	r3, [r3]
	ldrsb	r3, [r3, #1]
	mov	r2, r3
	add	r3, r7, #512
	sub	r3, r3, #492
	ldr	r3, [r3]
	adds	r1, r3, r2
	add	r3, r7, #512
	sub	r3, r3, #508
	ldr	r3, [r3]
	ldrsb	r3, [r3, #1]
	mov	r2, r3
	bl	uECC_vli_bytesToNative(PLT)
	add	r3, r7, #512
	sub	r3, r3, #508
	ldr	r3, [r3]
	ldrsb	r3, [r3, #1]
	mov	r2, r3
	add	r3, r7, #512
	sub	r3, r3, #504
	add	r0, r7, #316
	ldr	r1, [r3]
	bl	uECC_vli_bytesToNative(PLT)
	add	r3, r7, #512
	sub	r3, r3, #508
	ldr	r3, [r3]
	ldrsb	r3, [r3, #1]
	mov	r2, r3
	add	r3, r7, #512
	sub	r3, r3, #504
	ldr	r3, [r3]
	adds	r1, r3, r2
	add	r3, r7, #512
	sub	r3, r3, #508
	ldr	r3, [r3]
	ldrsb	r3, [r3, #1]
	mov	r2, r3
	add	r3, r7, #348
	mov	r0, r3
	bl	uECC_vli_bytesToNative(PLT)
	add	r3, r7, #512
	sub	r3, r3, #482
	ldrsb	r2, [r3]
	add	r3, r7, #316
	mov	r1, r2
	mov	r0, r3
	bl	uECC_vli_isZero(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L34
	add	r3, r7, #512
	sub	r3, r3, #482
	ldrsb	r2, [r3]
	add	r3, r7, #348
	mov	r1, r2
	mov	r0, r3
	bl	uECC_vli_isZero(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L35
.L34:
	movs	r3, #0
	b	.L47
.L35:
	add	r3, r7, #512
	sub	r3, r3, #508
	ldr	r3, [r3]
	add	r0, r3, #36
	add	r3, r7, #512
	subw	r3, r3, #481
	ldrsb	r2, [r3]
	add	r3, r7, #316
	mov	r1, r3
	bl	uECC_vli_cmp_unsafe(PLT)
	mov	r3, r0
	cmp	r3, #1
	bne	.L37
	add	r3, r7, #512
	sub	r3, r3, #508
	ldr	r3, [r3]
	add	r0, r3, #36
	add	r3, r7, #512
	subw	r3, r3, #481
	ldrsb	r2, [r3]
	add	r3, r7, #348
	mov	r1, r3
	bl	uECC_vli_cmp_unsafe(PLT)
	mov	r3, r0
	cmp	r3, #1
	beq	.L38
.L37:
	movs	r3, #0
	b	.L47
.L38:
	add	r3, r7, #512
	sub	r3, r3, #508
	ldr	r3, [r3]
	add	r2, r3, #36
	add	r3, r7, #512
	subw	r3, r3, #481
	ldrsb	r3, [r3]
	add	r1, r7, #348
	add	r0, r7, #124
	bl	uECC_vli_modInv(PLT)
	add	r3, r7, #512
	subw	r3, r3, #481
	ldrsb	r3, [r3]
	subs	r2, r3, #1
	add	r3, r7, #512
	sub	r3, r3, #452
	movs	r1, #0
	str	r1, [r3, r2, lsl #2]
	add	r3, r7, #512
	sub	r3, r3, #508
	add	r2, r7, #512
	sub	r2, r2, #500
	add	r1, r7, #512
	sub	r1, r1, #496
	add	r0, r7, #60
	ldr	r3, [r3]
	ldr	r2, [r2]
	ldr	r1, [r1]
	bl	bits2int(PLT)
	add	r3, r7, #512
	sub	r3, r3, #508
	ldr	r3, [r3]
	add	r4, r3, #36
	add	r2, r7, #124
	add	r1, r7, #60
	add	r0, r7, #60
	add	r3, r7, #512
	subw	r3, r3, #481
	ldrsb	r3, [r3]
	str	r3, [sp]
	mov	r3, r4
	bl	uECC_vli_modMult(PLT)
	add	r3, r7, #512
	sub	r3, r3, #508
	ldr	r3, [r3]
	add	r4, r3, #36
	add	r2, r7, #124
	add	r1, r7, #316
	add	r0, r7, #92
	add	r3, r7, #512
	subw	r3, r3, #481
	ldrsb	r3, [r3]
	str	r3, [sp]
	mov	r3, r4
	bl	uECC_vli_modMult(PLT)
	add	r3, r7, #512
	sub	r3, r3, #482
	ldrsb	r2, [r3]
	add	r1, r7, #444
	add	r3, r7, #380
	mov	r0, r3
	bl	uECC_vli_set(PLT)
	add	r3, r7, #512
	sub	r3, r3, #482
	ldrsb	r3, [r3]
	lsls	r3, r3, #2
	add	r2, r7, #380
	adds	r0, r2, r3
	add	r3, r7, #512
	sub	r3, r3, #482
	ldrsb	r3, [r3]
	lsls	r3, r3, #2
	add	r2, r7, #444
	adds	r1, r2, r3
	add	r3, r7, #512
	sub	r3, r3, #482
	ldrsb	r3, [r3]
	mov	r2, r3
	bl	uECC_vli_set(PLT)
	add	r3, r7, #512
	sub	r3, r3, #508
	ldr	r3, [r3]
	add	r1, r3, #68
	add	r3, r7, #512
	sub	r3, r3, #482
	ldrsb	r2, [r3]
	add	r3, r7, #220
	mov	r0, r3
	bl	uECC_vli_set(PLT)
	add	r3, r7, #512
	sub	r3, r3, #508
	ldr	r3, [r3]
	add	r2, r3, #68
	add	r3, r7, #512
	sub	r3, r3, #482
	ldrsb	r3, [r3]
	lsls	r3, r3, #2
	adds	r1, r2, r3
	add	r3, r7, #512
	sub	r3, r3, #482
	ldrsb	r2, [r3]
	add	r3, r7, #252
	mov	r0, r3
	bl	uECC_vli_set(PLT)
	add	r3, r7, #512
	sub	r3, r3, #508
	ldr	r3, [r3]
	adds	r4, r3, #4
	add	r2, r7, #220
	add	r1, r7, #380
	add	r0, r7, #124
	add	r3, r7, #512
	sub	r3, r3, #482
	ldrsb	r3, [r3]
	str	r3, [sp]
	mov	r3, r4
	bl	uECC_vli_modSub(PLT)
	add	r3, r7, #512
	sub	r3, r3, #482
	ldrsb	r3, [r3]
	lsls	r3, r3, #2
	add	r2, r7, #380
	adds	r4, r2, r3
	add	r2, r7, #380
	add	r1, r7, #252
	add	r0, r7, #220
	add	r3, r7, #512
	sub	r3, r3, #508
	ldr	r3, [r3]
	str	r3, [sp]
	mov	r3, r4
	bl	XYcZ_add(PLT)
	add	r3, r7, #512
	sub	r3, r3, #508
	ldr	r3, [r3]
	adds	r2, r3, #4
	add	r3, r7, #512
	sub	r3, r3, #482
	ldrsb	r3, [r3]
	add	r1, r7, #124
	add	r0, r7, #124
	bl	uECC_vli_modInv(PLT)
	add	r3, r7, #512
	sub	r3, r3, #482
	ldrsb	r3, [r3]
	lsls	r3, r3, #2
	add	r2, r7, #380
	adds	r1, r2, r3
	add	r3, r7, #512
	sub	r3, r3, #508
	add	r2, r7, #124
	add	r0, r7, #380
	ldr	r3, [r3]
	bl	apply_z(PLT)
	add	r3, r7, #512
	sub	r3, r3, #468
	movs	r2, #0
	str	r2, [r3]
	add	r3, r7, #512
	sub	r3, r3, #508
	ldr	r3, [r3]
	add	r2, r3, #68
	add	r3, r7, #512
	sub	r3, r3, #468
	str	r2, [r3, #4]
	add	r3, r7, #512
	sub	r3, r3, #468
	add	r2, r7, #444
	str	r2, [r3, #8]
	add	r3, r7, #512
	sub	r3, r3, #468
	add	r2, r7, #380
	str	r2, [r3, #12]
	add	r3, r7, #512
	subw	r3, r3, #481
	ldrsb	r2, [r3]
	add	r3, r7, #60
	mov	r1, r2
	mov	r0, r3
	bl	uECC_vli_numBits(PLT)
	mov	r3, r0
	mov	r5, r3
	add	r3, r7, #512
	subw	r3, r3, #481
	ldrsb	r2, [r3]
	add	r3, r7, #92
	mov	r1, r2
	mov	r0, r3
	bl	uECC_vli_numBits(PLT)
	mov	r3, r0
	mov	r2, r3
	add	r3, r7, #512
	sub	r4, r3, #478
	mov	r1, r2
	mov	r0, r5
	bl	smax(PLT)
	mov	r3, r0
	strh	r3, [r4]	@ movhi
	add	r3, r7, #512
	sub	r3, r3, #478
	ldrh	r3, [r3]
	subs	r3, r3, #1
	uxth	r3, r3
	sxth	r2, r3
	add	r3, r7, #60
	mov	r1, r2
	mov	r0, r3
	bl	uECC_vli_testBit(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	mov	r4, r3
	add	r3, r7, #512
	sub	r3, r3, #478
	ldrh	r3, [r3]
	subs	r3, r3, #1
	uxth	r3, r3
	sxth	r2, r3
	add	r3, r7, #92
	mov	r1, r2
	mov	r0, r3
	bl	uECC_vli_testBit(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L39
	movs	r3, #2
	b	.L40
.L39:
	movs	r3, #0
.L40:
	orr	r1, r3, r4
	add	r3, r7, #512
	sub	r3, r3, #476
	add	r2, r7, #512
	sub	r2, r2, #468
	ldr	r2, [r2, r1, lsl #2]
	str	r2, [r3]
	add	r3, r7, #512
	sub	r3, r3, #482
	ldrsb	r2, [r3]
	add	r3, r7, #512
	sub	r3, r3, #476
	add	r0, r7, #156
	ldr	r1, [r3]
	bl	uECC_vli_set(PLT)
	add	r3, r7, #512
	sub	r3, r3, #482
	ldrsb	r3, [r3]
	lsls	r3, r3, #2
	add	r2, r7, #512
	sub	r2, r2, #476
	ldr	r2, [r2]
	adds	r1, r2, r3
	add	r3, r7, #512
	sub	r3, r3, #482
	ldrsb	r2, [r3]
	add	r3, r7, #188
	mov	r0, r3
	bl	uECC_vli_set(PLT)
	add	r3, r7, #512
	sub	r3, r3, #482
	ldrsb	r2, [r3]
	add	r3, r7, #124
	mov	r1, r2
	mov	r0, r3
	bl	uECC_vli_clear(PLT)
	add	r3, r7, #512
	sub	r3, r3, #388
	movs	r2, #1
	str	r2, [r3]
	add	r3, r7, #512
	sub	r3, r3, #478
	ldrh	r3, [r3]
	subs	r3, r3, #2
	uxth	r2, r3
	add	r3, r7, #512
	sub	r3, r3, #480
	strh	r2, [r3]	@ movhi
	b	.L41
.L45:
	add	r3, r7, #512
	sub	r3, r3, #508
	ldr	r3, [r3]
	ldr	r4, [r3, #164]
	add	r3, r7, #512
	sub	r3, r3, #508
	add	r2, r7, #124
	add	r1, r7, #188
	add	r0, r7, #156
	ldr	r3, [r3]
	blx	r4
	add	r3, r7, #512
	sub	r3, r3, #480
	ldrsh	r2, [r3]
	add	r3, r7, #60
	mov	r1, r2
	mov	r0, r3
	bl	uECC_vli_testBit(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	mov	r4, r3
	add	r3, r7, #512
	sub	r3, r3, #480
	ldrsh	r2, [r3]
	add	r3, r7, #92
	mov	r1, r2
	mov	r0, r3
	bl	uECC_vli_testBit(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L42
	movs	r3, #2
	b	.L43
.L42:
	movs	r3, #0
.L43:
	orr	r2, r3, r4
	add	r3, r7, #512
	sub	r3, r3, #472
	str	r2, [r3]
	add	r3, r7, #512
	sub	r3, r3, #476
	add	r2, r7, #512
	sub	r2, r2, #468
	add	r1, r7, #512
	sub	r1, r1, #472
	ldr	r1, [r1]
	ldr	r2, [r2, r1, lsl #2]
	str	r2, [r3]
	add	r3, r7, #512
	sub	r3, r3, #476
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L44
	add	r3, r7, #512
	sub	r3, r3, #482
	ldrsb	r2, [r3]
	add	r3, r7, #512
	sub	r3, r3, #476
	add	r0, r7, #220
	ldr	r1, [r3]
	bl	uECC_vli_set(PLT)
	add	r3, r7, #512
	sub	r3, r3, #482
	ldrsb	r3, [r3]
	lsls	r3, r3, #2
	add	r2, r7, #512
	sub	r2, r2, #476
	ldr	r2, [r2]
	adds	r1, r2, r3
	add	r3, r7, #512
	sub	r3, r3, #482
	ldrsb	r2, [r3]
	add	r3, r7, #252
	mov	r0, r3
	bl	uECC_vli_set(PLT)
	add	r3, r7, #512
	sub	r3, r3, #508
	add	r2, r7, #124
	add	r1, r7, #252
	add	r0, r7, #220
	ldr	r3, [r3]
	bl	apply_z(PLT)
	add	r3, r7, #512
	sub	r3, r3, #508
	ldr	r3, [r3]
	adds	r4, r3, #4
	add	r2, r7, #220
	add	r1, r7, #156
	add	r0, r7, #284
	add	r3, r7, #512
	sub	r3, r3, #482
	ldrsb	r3, [r3]
	str	r3, [sp]
	mov	r3, r4
	bl	uECC_vli_modSub(PLT)
	add	r4, r7, #188
	add	r2, r7, #156
	add	r1, r7, #252
	add	r0, r7, #220
	add	r3, r7, #512
	sub	r3, r3, #508
	ldr	r3, [r3]
	str	r3, [sp]
	mov	r3, r4
	bl	XYcZ_add(PLT)
	add	r3, r7, #512
	sub	r3, r3, #508
	add	r2, r7, #284
	add	r1, r7, #124
	add	r0, r7, #124
	ldr	r3, [r3]
	bl	uECC_vli_modMult_fast(PLT)
.L44:
	add	r3, r7, #512
	sub	r3, r3, #480
	ldrh	r3, [r3]
	subs	r3, r3, #1
	uxth	r2, r3
	add	r3, r7, #512
	sub	r3, r3, #480
	strh	r2, [r3]	@ movhi
.L41:
	add	r3, r7, #512
	sub	r3, r3, #480
	ldrsh	r3, [r3]
	cmp	r3, #0
	bge	.L45
	add	r3, r7, #512
	sub	r3, r3, #508
	ldr	r3, [r3]
	adds	r2, r3, #4
	add	r3, r7, #512
	sub	r3, r3, #482
	ldrsb	r3, [r3]
	add	r1, r7, #124
	add	r0, r7, #124
	bl	uECC_vli_modInv(PLT)
	add	r3, r7, #512
	sub	r3, r3, #508
	add	r2, r7, #124
	add	r1, r7, #188
	add	r0, r7, #156
	ldr	r3, [r3]
	bl	apply_z(PLT)
	add	r3, r7, #512
	sub	r3, r3, #508
	ldr	r3, [r3]
	add	r0, r3, #36
	add	r3, r7, #512
	subw	r3, r3, #481
	ldrsb	r2, [r3]
	add	r3, r7, #156
	mov	r1, r3
	bl	uECC_vli_cmp_unsafe(PLT)
	mov	r3, r0
	cmp	r3, #1
	beq	.L46
	add	r3, r7, #512
	sub	r3, r3, #508
	ldr	r3, [r3]
	add	r2, r3, #36
	add	r3, r7, #512
	subw	r3, r3, #481
	ldrsb	r3, [r3]
	add	r1, r7, #156
	add	r0, r7, #156
	bl	uECC_vli_sub(PLT)
.L46:
	add	r3, r7, #512
	sub	r3, r3, #482
	ldrsb	r2, [r3]
	add	r1, r7, #316
	add	r3, r7, #156
	mov	r0, r3
	bl	uECC_vli_equal(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
.L47:
	ldr	r1, .L49+8
.LPIC5:
	add	r1, pc
	ldr	r2, .L49+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [r7, #508]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L48
	bl	__stack_chk_fail(PLT)
.L48:
	mov	r0, r3
	add	r7, r7, #512
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L50:
	.align	2
.L49:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC4+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC5+4)
	.size	uECC_verify, .-uECC_verify
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
