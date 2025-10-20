	.arch armv7-a
	.fpu vfpv3-d16
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"tinycrypt_ecc_dsa.c"
	.text
	.align	1
	.p2align 2,,3
	.syntax unified
	.thumb
	.thumb_func
	.type	bits2int, %function
bits2int:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r7, r3
	ldrsh	r3, [r3, #2]
	mov	r8, r1
	mov	r5, r0
	adds	r1, r3, #31
	add	ip, r3, #62
	add	r4, r3, #14
	it	pl
	movpl	ip, r1
	adds	r3, r3, #7
	it	pl
	movpl	r4, r3
	sbfx	r6, ip, #5, #8
	mov	r1, r6
	asr	r9, ip, #5
	asrs	r4, r4, #3
	cmp	r4, r2
	it	cs
	movcs	r4, r2
	bl	uECC_vli_clear(PLT)
	mov	r2, r4
	mov	r1, r8
	mov	r0, r5
	lsls	r4, r4, #3
	bl	uECC_vli_bytesToNative(PLT)
	ldrsh	r3, [r7, #2]
	cmp	r4, r3
	bls	.L1
	add	ip, r5, r9, lsl #2
	sub	lr, r4, r3
	cmp	r5, ip
	itt	cc
	rsbcc	r0, lr, #32
	movcc	r1, #0
	bcs	.L8
.L7:
	ldr	r3, [ip, #-4]!
	cmp	r5, ip
	lsr	r2, r3, lr
	orr	r2, r2, r1
	lsl	r1, r3, r0
	str	r2, [ip]
	bcc	.L7
.L8:
	adds	r7, r7, #36
	mov	r2, r6
	mov	r1, r5
	mov	r0, r7
	bl	uECC_vli_cmp_unsafe(PLT)
	cmp	r0, #1
	bne	.L12
.L1:
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L12:
	mov	r3, r6
	mov	r2, r7
	mov	r1, r5
	mov	r0, r5
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	uECC_vli_sub(PLT)
	.size	bits2int, .-bits2int
	.align	1
	.p2align 2,,3
	.global	uECC_sign_with_k
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_sign_with_k, %function
uECC_sign_with_k:
	@ args = 8, pretend = 0, frame = 168
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, r3
	sub	sp, sp, #180
	add	r9, sp, #44
	add	r8, sp, #76
	strd	r1, r2, [sp, #16]
	ldr	r3, [sp, #216]
	ldr	r2, .L26
	strd	r3, r0, [sp, #8]
	mov	r0, r4
	ldr	r5, [sp, #220]
.LPIC1:
	add	r2, pc
	ldr	r3, .L26+4
	ldrsb	r10, [r5]
	ldrsh	r7, [r5, #2]
	ldr	r3, [r2, r3]
	mov	r1, r10
	ldr	r3, [r3]
	str	r3, [sp, #172]
	mov	r3, #0
	str	r9, [sp, #36]
	str	r8, [sp, #40]
	bl	uECC_vli_isZero(PLT)
	cbz	r0, .L14
.L16:
	movs	r0, #0
.L13:
	ldr	r2, .L26+8
	ldr	r3, .L26+4
.LPIC0:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #172]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L24
	add	sp, sp, #180
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L14:
	adds	r2, r7, #31
	add	r3, r7, #62
	it	pl
	movpl	r3, r2
	mov	r6, r0
	mov	r1, r4
	sbfx	fp, r3, #5, #8
	add	r3, r5, #36
	mov	r2, fp
	mov	r0, r3
	str	r3, [sp, #24]
	bl	uECC_vli_cmp(PLT)
	cmp	r0, #1
	str	r0, [sp, #28]
	bne	.L16
	mov	r3, r5
	mov	r2, r8
	mov	r1, r9
	mov	r0, r4
	bl	regularize_k(PLT)
	clz	r0, r0
	add	r2, sp, #176
	adds	r7, r7, #1
	lsrs	r0, r0, #5
	str	r5, [sp, #4]
	sxth	r7, r7
	str	r7, [sp]
	add	r0, r2, r0, lsl #2
	mov	r3, r6
	add	r6, sp, #108
	add	r1, r5, #68
	ldr	r2, [r0, #-140]
	mov	r0, r6
	bl	EccPoint_mult(PLT)
	mov	r1, r10
	mov	r0, r6
	bl	uECC_vli_isZero(PLT)
	cmp	r0, #0
	bne	.L16
	bl	uECC_get_rng(PLT)
	cmp	r0, #0
	beq	.L25
	ldr	r1, [sp, #24]
	mov	r2, fp
	mov	r0, r9
	bl	uECC_generate_random_int(PLT)
	cmp	r0, #0
	beq	.L16
.L18:
	ldr	r7, [sp, #24]
	mov	r2, r9
	mov	r1, r4
	mov	r0, r4
	mov	r3, r7
	str	fp, [sp]
	bl	uECC_vli_modMult(PLT)
	mov	r3, fp
	mov	r2, r7
	mov	r1, r4
	mov	r0, r4
	bl	uECC_vli_modInv(PLT)
	mov	r3, r7
	mov	r2, r9
	mov	r1, r4
	mov	r0, r4
	str	fp, [sp]
	bl	uECC_vli_modMult(PLT)
	mov	r2, r6
	ldrsb	r1, [r5, #1]
	ldr	r0, [sp, #8]
	bl	uECC_vli_nativeToBytes(PLT)
	ldrsh	r3, [r5, #2]
	ldr	r1, [sp, #12]
	mov	r0, r9
	add	r2, r3, #14
	adds	r3, r3, #7
	it	pl
	movpl	r2, r3
	asrs	r2, r2, #3
	bl	uECC_vli_bytesToNative(PLT)
	add	r3, fp, #-1
	mov	r1, r6
	add	r6, sp, #176
	add	r3, r6, r3, lsl #2
	mov	r2, r10
	mov	r0, r8
	movs	r6, #0
	str	r6, [r3, #-100]
	bl	uECC_vli_set(PLT)
	mov	r3, r7
	mov	r2, r8
	mov	r1, r9
	mov	r0, r8
	str	fp, [sp]
	bl	uECC_vli_modMult(PLT)
	mov	r3, r5
	ldrd	r1, r2, [sp, #16]
	mov	r0, r9
	bl	bits2int(PLT)
	mov	r1, r9
	mov	r3, r7
	mov	r2, r8
	mov	r0, r8
	str	fp, [sp]
	bl	uECC_vli_modAdd(PLT)
	mov	r3, r7
	mov	r2, r4
	mov	r1, r8
	mov	r0, r8
	str	fp, [sp]
	bl	uECC_vli_modMult(PLT)
	mov	r1, fp
	mov	r0, r8
	bl	uECC_vli_numBits(PLT)
	ldrsb	r1, [r5, #1]
	cmp	r0, r1, lsl #3
	bgt	.L16
	ldr	r0, [sp, #8]
	mov	r2, r8
	add	r0, r0, r1
	bl	uECC_vli_nativeToBytes(PLT)
	movs	r0, #1
	b	.L13
.L25:
	mov	r1, fp
	mov	r0, r9
	bl	uECC_vli_clear(PLT)
	ldr	r3, [sp, #28]
	str	r3, [sp, #44]
	b	.L18
.L24:
	bl	__stack_chk_fail(PLT)
.L27:
	.align	2
.L26:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC1+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+4)
	.size	uECC_sign_with_k, .-uECC_sign_with_k
	.align	1
	.p2align 2,,3
	.global	uECC_sign
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_sign, %function
uECC_sign:
	@ args = 4, pretend = 0, frame = 272
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	lr, r3
	ldr	r3, .L50
	sub	sp, sp, #284
	mov	r8, #64
	str	r2, [sp, #36]
	ldr	r2, .L50+4
	strd	r0, r1, [sp, #28]
.LPIC3:
	add	r2, pc
	ldr	r10, [sp, #320]
	mov	r6, r10
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [sp, #276]
	mov	r3, #0
	add	r3, sp, #148
	str	lr, [sp, #24]
	str	r3, [sp, #12]
	add	r3, r10, #36
	mov	r10, r8
	str	r3, [sp, #8]
	b	.L31
.L32:
	subs	r10, r10, #1
	beq	.L29
.L31:
	bl	uECC_get_rng(PLT)
	mov	r3, r0
	cmp	r0, #0
	beq	.L29
	ldr	r4, [sp, #12]
	movs	r1, #64
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	beq	.L29
	ldrsh	r0, [r6, #2]
	add	r5, sp, #52
	mov	r1, r4
	ldr	r2, [sp, #8]
	add	r3, r0, #62
	adds	r0, r0, #31
	it	pl
	movpl	r3, r0
	mov	r0, r5
	add	r8, sp, #84
	add	fp, sp, #116
	sbfx	r3, r3, #5, #8
	bl	uECC_vli_mmod(PLT)
	ldrsb	r9, [r6]
	mov	r0, r5
	ldrsh	r7, [r6, #2]
	mov	r1, r9
	strd	r8, fp, [sp, #44]
	bl	uECC_vli_isZero(PLT)
	mov	r4, r0
	cmp	r0, #0
	bne	.L32
	adds	r2, r7, #31
	add	r3, r7, #62
	it	pl
	movpl	r3, r2
	ldr	r0, [sp, #8]
	mov	r1, r5
	sbfx	r3, r3, #5, #8
	str	r3, [sp, #16]
	mov	r2, r3
	bl	uECC_vli_cmp(PLT)
	cmp	r0, #1
	str	r0, [sp, #20]
	bne	.L32
	mov	r3, r6
	mov	r2, fp
	mov	r1, r8
	mov	r0, r5
	bl	regularize_k(PLT)
	clz	r0, r0
	add	r2, sp, #280
	adds	r7, r7, #1
	lsrs	r0, r0, #5
	str	r6, [sp, #4]
	sxth	r7, r7
	str	r7, [sp]
	add	r0, r2, r0, lsl #2
	mov	r3, r4
	add	r4, sp, #212
	add	r1, r6, #68
	ldr	r2, [r0, #-236]
	mov	r0, r4
	bl	EccPoint_mult(PLT)
	mov	r1, r9
	mov	r0, r4
	bl	uECC_vli_isZero(PLT)
	cmp	r0, #0
	bne	.L32
	bl	uECC_get_rng(PLT)
	cmp	r0, #0
	beq	.L48
	ldr	r2, [sp, #16]
	mov	r0, r8
	ldr	r1, [sp, #8]
	bl	uECC_generate_random_int(PLT)
	cmp	r0, #0
	beq	.L32
.L34:
	ldr	r7, [sp, #16]
	mov	r2, r8
	ldr	r3, [sp, #8]
	mov	r1, r5
	mov	r0, r5
	str	r7, [sp]
	bl	uECC_vli_modMult(PLT)
	ldr	r2, [sp, #8]
	mov	r3, r7
	mov	r1, r5
	mov	r0, r5
	bl	uECC_vli_modInv(PLT)
	ldr	r3, [sp, #8]
	mov	r2, r8
	mov	r1, r5
	mov	r0, r5
	str	r7, [sp]
	bl	uECC_vli_modMult(PLT)
	mov	r2, r4
	ldrsb	r1, [r6, #1]
	ldr	r0, [sp, #24]
	bl	uECC_vli_nativeToBytes(PLT)
	ldrsh	r3, [r6, #2]
	ldr	r1, [sp, #28]
	mov	r0, r8
	add	r2, r3, #14
	adds	r3, r3, #7
	it	pl
	movpl	r2, r3
	asrs	r2, r2, #3
	bl	uECC_vli_bytesToNative(PLT)
	subs	r3, r7, #1
	add	ip, sp, #280
	mov	r1, r4
	add	r3, ip, r3, lsl #2
	mov	r2, r9
	mov	r0, fp
	movs	r4, #0
	str	r4, [r3, #-164]
	bl	uECC_vli_set(PLT)
	ldr	r4, [sp, #8]
	mov	r2, fp
	mov	r1, r8
	mov	r0, fp
	mov	r3, r4
	str	r7, [sp]
	bl	uECC_vli_modMult(PLT)
	mov	r3, r6
	ldrd	r1, r2, [sp, #32]
	mov	r0, r8
	bl	bits2int(PLT)
	mov	r1, r8
	mov	r3, r4
	mov	r2, fp
	mov	r0, fp
	str	r7, [sp]
	bl	uECC_vli_modAdd(PLT)
	mov	r2, r5
	mov	r3, r4
	mov	r1, fp
	mov	r0, fp
	str	r7, [sp]
	bl	uECC_vli_modMult(PLT)
	mov	r1, r7
	mov	r0, fp
	bl	uECC_vli_numBits(PLT)
	ldrsb	r1, [r6, #1]
	cmp	r0, r1, lsl #3
	bgt	.L32
	ldr	lr, [sp, #24]
	mov	r2, fp
	add	r0, lr, r1
	bl	uECC_vli_nativeToBytes(PLT)
	movs	r0, #1
	b	.L28
.L29:
	movs	r0, #0
.L28:
	ldr	r2, .L50+8
	ldr	r3, .L50
.LPIC2:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #276]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L49
	add	sp, sp, #284
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L48:
	ldr	r1, [sp, #16]
	mov	r0, r8
	bl	uECC_vli_clear(PLT)
	ldr	r3, [sp, #20]
	str	r3, [sp, #84]
	b	.L34
.L49:
	bl	__stack_chk_fail(PLT)
.L51:
	.align	2
.L50:
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC3+4)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC2+4)
	.size	uECC_sign, .-uECC_sign
	.align	1
	.p2align 2,,3
	.global	uECC_verify
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_verify, %function
uECC_verify:
	@ args = 4, pretend = 0, frame = 528
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r5, r3
	ldr	r3, .L70
	sub	sp, sp, #540
	mov	fp, r0
	add	r6, sp, #536
	add	r9, sp, #180
	add	r7, sp, #468
	add	r10, sp, #340
	strd	r1, r2, [sp, #16]
	ldr	r2, .L70+4
	ldr	r4, [sp, #576]
.LPIC5:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldrsb	r2, [r4, #1]
	ldr	r3, [r3]
	str	r3, [sp, #532]
	mov	r3, #0
	ldrsh	r3, [r4, #2]
	add	r1, r3, #62
	adds	r3, r3, #31
	it	mi
	movmi	r3, r1
	mov	r1, r0
	mov	r0, r7
	sbfx	r3, r3, #5, #8
	str	r3, [sp, #8]
	add	r8, r3, #-1
	movs	r3, #0
	add	r6, r6, r8, lsl #2
	str	r3, [r9, r8, lsl #2]
	str	r3, [r6, #-196]
	str	r3, [r6, #-164]
	ldrsb	r6, [r4]
	bl	uECC_vli_bytesToNative(PLT)
	ldrsb	r2, [r4, #1]
	add	r1, fp, r2
	lsl	fp, r6, #2
	add	r3, r7, fp
	str	r3, [sp, #12]
	mov	r0, r3
	bl	uECC_vli_bytesToNative(PLT)
	mov	r1, r5
	ldrsb	r2, [r4, #1]
	mov	r0, r10
	bl	uECC_vli_bytesToNative(PLT)
	ldrsb	r2, [r4, #1]
	adds	r1, r5, r2
	add	r5, sp, #372
	mov	r0, r5
	bl	uECC_vli_bytesToNative(PLT)
	mov	r1, r6
	mov	r0, r10
	bl	uECC_vli_isZero(PLT)
	cbz	r0, .L53
.L55:
	movs	r0, #0
.L52:
	ldr	r2, .L70+8
	ldr	r3, .L70
.LPIC4:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #532]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L69
	add	sp, sp, #540
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L53:
	mov	r1, r6
	mov	r0, r5
	bl	uECC_vli_isZero(PLT)
	str	r0, [sp, #24]
	cmp	r0, #0
	bne	.L55
	add	r3, r4, #36
	ldr	r2, [sp, #8]
	mov	r1, r10
	mov	r0, r3
	str	r3, [sp, #28]
	bl	uECC_vli_cmp_unsafe(PLT)
	cmp	r0, #1
	bne	.L55
	ldr	r2, [sp, #8]
	mov	r1, r5
	ldr	r0, [sp, #28]
	bl	uECC_vli_cmp_unsafe(PLT)
	cmp	r0, #1
	str	r0, [sp, #36]
	bne	.L55
	mov	r1, r5
	add	r3, sp, #148
	add	r5, sp, #84
	mov	r0, r3
	ldr	r2, [sp, #28]
	ldr	r3, [sp, #8]
	str	r0, [sp, #32]
	bl	uECC_vli_modInv(PLT)
	ldr	r3, [sp, #24]
	mov	r0, r5
	ldrd	r1, r2, [sp, #16]
	str	r3, [r5, r8, lsl #2]
	mov	r3, r4
	str	r5, [sp, #16]
	bl	bits2int(PLT)
	ldr	r1, [sp, #16]
	ldrd	r3, r8, [sp, #28]
	mov	r0, r1
	ldr	r5, [sp, #8]
	mov	r2, r8
	str	r5, [sp]
	bl	uECC_vli_modMult(PLT)
	ldr	r3, [sp, #28]
	add	r0, sp, #116
	mov	r2, r8
	mov	r1, r10
	str	r5, [sp, #8]
	str	r5, [sp]
	add	r5, sp, #404
	str	r8, [sp, #32]
	str	r0, [sp, #20]
	bl	uECC_vli_modMult(PLT)
	mov	r1, r7
	mov	r0, r5
	mov	r2, r6
	bl	uECC_vli_set(PLT)
	add	r3, r5, fp
	ldr	r1, [sp, #12]
	mov	r0, r3
	mov	r2, r6
	str	r3, [sp, #12]
	bl	uECC_vli_set(PLT)
	add	r3, r4, #68
	add	r2, sp, #244
	mov	r1, r3
	mov	r0, r2
	mov	r2, r6
	mov	r8, r3
	str	r0, [sp, #56]
	bl	uECC_vli_set(PLT)
	add	ip, sp, #276
	mov	r0, ip
	add	r1, r8, fp
	mov	r2, r6
	str	ip, [sp, #44]
	bl	uECC_vli_set(PLT)
	adds	r3, r4, #4
	mov	r1, r5
	ldr	r2, [sp, #56]
	ldr	r0, [sp, #32]
	str	r6, [sp]
	str	r3, [sp, #40]
	bl	uECC_vli_modSub(PLT)
	mov	r2, r5
	ldr	r3, [sp, #12]
	ldr	r1, [sp, #44]
	ldr	r0, [sp, #56]
	str	r4, [sp]
	bl	XYcZ_add(PLT)
	ldr	ip, [sp, #32]
	ldr	r2, [sp, #40]
	mov	r3, r6
	mov	r1, ip
	mov	r0, ip
	bl	uECC_vli_modInv(PLT)
	ldr	r2, [sp, #32]
	mov	r0, r5
	ldr	r1, [sp, #12]
	mov	r3, r4
	bl	apply_z(PLT)
	ldr	r1, [sp, #24]
	strd	r1, r8, [sp, #68]
	add	r3, sp, #68
	ldr	r8, [sp, #8]
	str	r7, [sp, #76]
	ldr	r7, [sp, #16]
	mov	r1, r8
	str	r3, [sp, #24]
	mov	r0, r7
	str	r5, [sp, #80]
	bl	uECC_vli_numBits(PLT)
	mov	r1, r8
	mov	r5, r0
	ldr	r0, [sp, #20]
	bl	uECC_vli_numBits(PLT)
	cmp	r5, r0
	it	lt
	movlt	r5, r0
	mov	r0, r7
	uxth	r5, r5
	add	r8, r5, #-1
	subs	r5, r5, #2
	sxth	r8, r8
	mov	r1, r8
	bl	uECC_vli_testBit(PLT)
	mov	r1, r8
	mov	r7, r0
	ldr	r0, [sp, #20]
	bl	uECC_vli_testBit(PLT)
	subs	r0, r0, #0
	it	ne
	movne	r0, #1
	subs	r7, r7, #0
	it	ne
	movne	r7, #1
	ldr	r3, [sp, #24]
	orr	r7, r7, r0, lsl #1
	mov	r2, r6
	mov	r0, r9
	ldr	r7, [r3, r7, lsl #2]
	mov	r1, r7
	bl	uECC_vli_set(PLT)
	add	r1, r7, fp
	add	r7, sp, #212
	mov	r2, r6
	mov	r0, r7
	bl	uECC_vli_set(PLT)
	ldr	r8, [sp, #32]
	mov	r1, r6
	mov	r0, r8
	bl	uECC_vli_clear(PLT)
	ldr	r2, [sp, #36]
	mov	r3, r8
	str	r2, [r8]
	sxth	r8, r5
	cmp	r8, #0
	blt	.L56
	str	r10, [sp, #60]
	mov	r5, r3
	ldr	r10, [sp, #56]
	add	r2, sp, #308
	str	r7, [sp, #12]
	strd	r2, fp, [sp, #48]
.L58:
	mov	r3, r4
	mov	r2, r5
	ldr	r1, [sp, #12]
	mov	r0, r9
	ldr	r7, [r4, #164]
	blx	r7
	mov	r1, r8
	ldr	r0, [sp, #16]
	bl	uECC_vli_testBit(PLT)
	mov	r1, r8
	mov	fp, r0
	ldr	r0, [sp, #20]
	bl	uECC_vli_testBit(PLT)
	subs	r0, r0, #0
	it	ne
	movne	r0, #1
	subs	r3, fp, #0
	it	ne
	movne	r3, #1
	ldr	r2, [sp, #24]
	orr	r3, r3, r0, lsl #1
	ldr	r1, [r2, r3, lsl #2]
	cbz	r1, .L57
	mov	r2, r6
	mov	r0, r10
	str	r1, [sp, #36]
	bl	uECC_vli_set(PLT)
	ldr	r7, [sp, #44]
	mov	r2, r6
	ldr	r3, [sp, #52]
	ldr	r1, [sp, #36]
	mov	r0, r7
	add	r1, r1, r3
	bl	uECC_vli_set(PLT)
	mov	r3, r4
	mov	r2, r5
	mov	r1, r7
	mov	r0, r10
	bl	apply_z(PLT)
	ldr	fp, [sp, #48]
	ldr	r3, [sp, #40]
	mov	r2, r10
	mov	r1, r9
	mov	r0, fp
	str	r6, [sp]
	bl	uECC_vli_modSub(PLT)
	ldr	r3, [sp, #12]
	mov	r2, r9
	mov	r1, r7
	mov	r0, r10
	str	r4, [sp]
	bl	XYcZ_add(PLT)
	mov	r3, r4
	mov	r2, fp
	mov	r1, r5
	mov	r0, r5
	bl	uECC_vli_modMult_fast(PLT)
.L57:
	add	r8, r8, #-1
	sxth	r8, r8
	cmp	r8, #-1
	bne	.L58
	ldr	r7, [sp, #12]
	ldr	r10, [sp, #60]
.L56:
	ldr	r5, [sp, #32]
	mov	r3, r6
	ldr	r2, [sp, #40]
	mov	r1, r5
	mov	r0, r5
	bl	uECC_vli_modInv(PLT)
	mov	r3, r4
	mov	r2, r5
	mov	r1, r7
	mov	r0, r9
	bl	apply_z(PLT)
	ldr	r5, [sp, #8]
	ldr	r4, [sp, #28]
	mov	r1, r9
	mov	r2, r5
	mov	r0, r4
	bl	uECC_vli_cmp_unsafe(PLT)
	cmp	r0, #1
	beq	.L59
	mov	r3, r5
	mov	r2, r4
	mov	r1, r9
	mov	r0, r9
	bl	uECC_vli_sub(PLT)
.L59:
	mov	r2, r6
	mov	r1, r10
	mov	r0, r9
	bl	uECC_vli_equal(PLT)
	clz	r0, r0
	lsrs	r0, r0, #5
	b	.L52
.L69:
	bl	__stack_chk_fail(PLT)
.L71:
	.align	2
.L70:
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC5+4)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC4+4)
	.size	uECC_verify, .-uECC_verify
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
