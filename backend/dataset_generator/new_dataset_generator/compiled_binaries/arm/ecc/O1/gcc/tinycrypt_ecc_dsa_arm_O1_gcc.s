	.arch armv7-a
	.fpu vfpv3-d16
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 1
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"tinycrypt_ecc_dsa.c"
	.text
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	bits2int, %function
bits2int:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, lr}
	mov	r5, r0
	mov	r9, r1
	mov	r7, r3
	ldrsh	r3, [r3, #2]
	add	r6, r3, #62
	adds	r1, r3, #31
	it	pl
	movpl	r6, r1
	asrs	r4, r6, #5
	add	r8, r3, #14
	adds	r3, r3, #7
	it	pl
	movpl	r8, r3
	asr	r8, r8, #3
	cmp	r8, r2
	it	cs
	movcs	r8, r2
	sbfx	r6, r6, #5, #8
	mov	r1, r6
	bl	uECC_vli_clear(PLT)
	mov	r2, r8
	mov	r1, r9
	mov	r0, r5
	bl	uECC_vli_bytesToNative(PLT)
	lsl	r8, r8, #3
	ldrsh	r3, [r7, #2]
	cmp	r8, r3
	bls	.L1
	sub	r3, r8, r3
	add	ip, r5, r4, lsl #2
	cmp	r5, ip
	bcs	.L3
	movs	r1, #0
	rsb	r0, r3, #32
.L4:
	ldr	r2, [ip, #-4]!
	lsr	r4, r2, r3
	orrs	r4, r4, r1
	str	r4, [ip]
	lsl	r1, r2, r0
	cmp	r5, ip
	bcc	.L4
.L3:
	adds	r7, r7, #36
	mov	r2, r6
	mov	r1, r5
	mov	r0, r7
	bl	uECC_vli_cmp_unsafe(PLT)
	cmp	r0, #1
	bne	.L7
.L1:
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
.L7:
	mov	r3, r6
	mov	r2, r7
	mov	r1, r5
	mov	r0, r5
	bl	uECC_vli_sub(PLT)
	b	.L1
	.size	bits2int, .-bits2int
	.align	1
	.global	uECC_sign_with_k
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_sign_with_k, %function
uECC_sign_with_k:
	@ args = 8, pretend = 0, frame = 160
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #172
	str	r0, [sp, #12]
	str	r1, [sp, #16]
	str	r2, [sp, #20]
	mov	r4, r3
	ldr	r9, [sp, #208]
	ldr	r6, [sp, #212]
	ldr	r2, .L22
.LPIC1:
	add	r2, pc
	ldr	r3, .L22+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [sp, #164]
	mov	r3, #0
	add	r3, sp, #36
	str	r3, [sp, #28]
	add	r3, sp, #68
	str	r3, [sp, #32]
	ldrsb	r7, [r6]
	ldrsh	r10, [r6, #2]
	mov	r1, r7
	mov	r0, r4
	bl	uECC_vli_isZero(PLT)
	cbz	r0, .L18
	movs	r0, #0
.L8:
	ldr	r2, .L22+8
.LPIC0:
	add	r2, pc
	ldr	r3, .L22+4
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #164]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L19
	add	sp, sp, #172
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L18:
	add	r5, r10, #62
	adds	r3, r10, #31
	it	pl
	movpl	r5, r3
	sbfx	r5, r5, #5, #8
	add	r8, r6, #36
	mov	r2, r5
	mov	r1, r4
	mov	r0, r8
	bl	uECC_vli_cmp(PLT)
	cmp	r0, #1
	it	ne
	movne	r0, #0
	bne	.L8
	mov	r3, r6
	add	r2, sp, #68
	add	r1, sp, #36
	mov	r0, r4
	bl	regularize_k(PLT)
	clz	r0, r0
	lsrs	r0, r0, #5
	add	r3, sp, #168
	add	r0, r3, r0, lsl #2
	str	r6, [sp, #4]
	add	r10, r10, #1
	sxth	r3, r10
	str	r3, [sp]
	movs	r3, #0
	ldr	r2, [r0, #-140]
	add	r1, r6, #68
	add	r10, sp, #100
	mov	r0, r10
	bl	EccPoint_mult(PLT)
	mov	r1, r7
	mov	r0, r10
	bl	uECC_vli_isZero(PLT)
	cbz	r0, .L20
	movs	r0, #0
	b	.L8
.L20:
	bl	uECC_get_rng(PLT)
	cmp	r0, #0
	beq	.L21
	mov	r2, r5
	mov	r1, r8
	add	r0, sp, #36
	bl	uECC_generate_random_int(PLT)
	cmp	r0, #0
	beq	.L8
.L11:
	str	r5, [sp]
	mov	r3, r8
	add	r10, sp, #36
	mov	r2, r10
	mov	r1, r4
	mov	r0, r4
	bl	uECC_vli_modMult(PLT)
	mov	r3, r5
	mov	r2, r8
	mov	r1, r4
	mov	r0, r4
	bl	uECC_vli_modInv(PLT)
	str	r5, [sp]
	mov	r3, r8
	mov	r2, r10
	mov	r1, r4
	mov	r0, r4
	bl	uECC_vli_modMult(PLT)
	add	fp, sp, #100
	mov	r2, fp
	ldrsb	r1, [r6, #1]
	mov	r0, r9
	bl	uECC_vli_nativeToBytes(PLT)
	ldrsh	r3, [r6, #2]
	add	r2, r3, #14
	adds	r3, r3, #7
	it	pl
	movpl	r2, r3
	asrs	r2, r2, #3
	ldr	r1, [sp, #12]
	mov	r0, r10
	bl	uECC_vli_bytesToNative(PLT)
	subs	r3, r5, #1
	add	r2, sp, #168
	add	r3, r2, r3, lsl #2
	movs	r2, #0
	str	r2, [r3, #-100]
	mov	r2, r7
	mov	r1, fp
	add	r7, sp, #68
	mov	r0, r7
	bl	uECC_vli_set(PLT)
	str	r5, [sp]
	mov	r3, r8
	mov	r2, r7
	mov	r1, r10
	mov	r0, r7
	bl	uECC_vli_modMult(PLT)
	mov	r3, r6
	ldr	r2, [sp, #20]
	ldr	r1, [sp, #16]
	mov	r0, r10
	bl	bits2int(PLT)
	str	r5, [sp]
	mov	r3, r8
	mov	r2, r7
	mov	r1, r10
	mov	r0, r7
	bl	uECC_vli_modAdd(PLT)
	str	r5, [sp]
	mov	r3, r8
	mov	r2, r4
	mov	r1, r7
	mov	r0, r7
	bl	uECC_vli_modMult(PLT)
	mov	r1, r5
	mov	r0, r7
	bl	uECC_vli_numBits(PLT)
	ldrsb	r1, [r6, #1]
	cmp	r0, r1, lsl #3
	it	gt
	movgt	r0, #0
	bgt	.L8
	mov	r2, r7
	add	r0, r9, r1
	bl	uECC_vli_nativeToBytes(PLT)
	movs	r0, #1
	b	.L8
.L21:
	mov	r1, r5
	add	r0, sp, #36
	bl	uECC_vli_clear(PLT)
	movs	r3, #1
	str	r3, [sp, #36]
	b	.L11
.L19:
	bl	__stack_chk_fail(PLT)
.L23:
	.align	2
.L22:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC1+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+4)
	.size	uECC_sign_with_k, .-uECC_sign_with_k
	.align	1
	.global	uECC_sign
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_sign, %function
uECC_sign:
	@ args = 4, pretend = 0, frame = 112
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #124
	mov	r10, r0
	mov	r9, r1
	str	r2, [sp, #8]
	str	r3, [sp, #12]
	ldr	r7, [sp, #160]
	ldr	r2, .L34
.LPIC3:
	add	r2, pc
	ldr	r3, .L34+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [sp, #116]
	mov	r3, #0
	movs	r5, #64
	add	r6, sp, #52
	mov	r8, r5
	add	fp, r7, #36
.L26:
	bl	uECC_get_rng(PLT)
	mov	r3, r0
	cbz	r0, .L28
	mov	r1, r8
	mov	r0, r6
	blx	r3
	mov	r3, r0
	cbz	r0, .L24
	ldrsh	r2, [r7, #2]
	add	r3, r2, #62
	adds	r2, r2, #31
	it	pl
	movpl	r3, r2
	sbfx	r3, r3, #5, #8
	mov	r2, fp
	mov	r1, r6
	add	r4, sp, #20
	mov	r0, r4
	bl	uECC_vli_mmod(PLT)
	str	r7, [sp, #4]
	ldr	r3, [sp, #12]
	str	r3, [sp]
	mov	r3, r4
	ldr	r2, [sp, #8]
	mov	r1, r9
	mov	r0, r10
	bl	uECC_sign_with_k(PLT)
	mov	r3, r0
	cbnz	r0, .L29
	subs	r5, r5, #1
	bne	.L26
	b	.L24
.L28:
	movs	r3, #0
.L24:
	ldr	r1, .L34+8
.LPIC2:
	add	r1, pc
	ldr	r2, .L34+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [sp, #116]
	eors	r1, r2, r1
	mov	r2, #0
	bne	.L33
	mov	r0, r3
	add	sp, sp, #124
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L29:
	movs	r3, #1
	b	.L24
.L33:
	bl	__stack_chk_fail(PLT)
.L35:
	.align	2
.L34:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC3+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC2+4)
	.size	uECC_sign, .-uECC_sign
	.align	1
	.global	uECC_verify
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_verify, %function
uECC_verify:
	@ args = 4, pretend = 0, frame = 504
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #516
	mov	r6, r0
	mov	r10, r1
	str	r2, [sp, #16]
	mov	r7, r3
	ldr	r4, [sp, #552]
	ldr	r2, .L53
.LPIC5:
	add	r2, pc
	ldr	r3, .L53+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [sp, #508]
	mov	r3, #0
	ldrsb	r8, [r4]
	ldrsh	r3, [r4, #2]
	add	r2, r3, #62
	adds	r3, r3, #31
	it	mi
	movmi	r3, r2
	sbfx	r3, r3, #5, #8
	str	r3, [sp, #12]
	add	fp, r3, #-1
	movs	r3, #0
	add	r2, sp, #156
	str	r3, [r2, fp, lsl #2]
	add	r1, sp, #512
	add	r2, r1, fp, lsl #2
	str	r3, [r2, #-196]
	str	r3, [r2, #-164]
	ldrsb	r2, [r4, #1]
	mov	r1, r0
	add	r5, sp, #444
	mov	r0, r5
	bl	uECC_vli_bytesToNative(PLT)
	lsl	r9, r8, #2
	add	r5, r5, r9
	ldrsb	r2, [r4, #1]
	adds	r1, r6, r2
	mov	r0, r5
	bl	uECC_vli_bytesToNative(PLT)
	ldrsb	r2, [r4, #1]
	mov	r1, r7
	add	r6, sp, #316
	mov	r0, r6
	bl	uECC_vli_bytesToNative(PLT)
	ldrsb	r2, [r4, #1]
	adds	r1, r7, r2
	add	r0, sp, #348
	bl	uECC_vli_bytesToNative(PLT)
	mov	r1, r8
	mov	r0, r6
	bl	uECC_vli_isZero(PLT)
	cbz	r0, .L49
	movs	r0, #0
.L36:
	ldr	r2, .L53+8
.LPIC4:
	add	r2, pc
	ldr	r3, .L53+4
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #508]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L50
	add	sp, sp, #516
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L49:
	mov	r1, r8
	add	r0, sp, #348
	bl	uECC_vli_isZero(PLT)
	cbz	r0, .L51
	movs	r0, #0
	b	.L36
.L51:
	add	r1, r4, #36
	mov	r0, r1
	str	r1, [sp, #20]
	ldr	r2, [sp, #12]
	mov	r1, r6
	bl	uECC_vli_cmp_unsafe(PLT)
	cmp	r0, #1
	it	ne
	movne	r0, #0
	bne	.L36
	ldr	r2, [sp, #12]
	add	r1, sp, #348
	ldr	r0, [sp, #20]
	bl	uECC_vli_cmp_unsafe(PLT)
	cmp	r0, #1
	it	ne
	movne	r0, #0
	bne	.L36
	ldr	r7, [sp, #12]
	mov	r3, r7
	ldr	r2, [sp, #20]
	add	r1, sp, #348
	add	r0, sp, #124
	str	r0, [sp, #28]
	bl	uECC_vli_modInv(PLT)
	add	r6, sp, #60
	movs	r1, #0
	str	r1, [r6, fp, lsl #2]
	mov	r3, r4
	ldr	r2, [sp, #16]
	mov	r1, r10
	mov	r0, r6
	bl	bits2int(PLT)
	str	r7, [sp]
	ldr	fp, [sp, #20]
	mov	r3, fp
	ldr	r10, [sp, #28]
	mov	r2, r10
	mov	r1, r6
	mov	r0, r6
	bl	uECC_vli_modMult(PLT)
	str	r7, [sp, #12]
	str	r7, [sp]
	mov	r3, fp
	str	r10, [sp, #28]
	mov	r2, r10
	add	r1, sp, #316
	add	r0, sp, #92
	str	r0, [sp, #32]
	bl	uECC_vli_modMult(PLT)
	mov	r2, r8
	add	r3, sp, #444
	str	r3, [sp, #36]
	mov	r1, r3
	add	fp, sp, #380
	mov	r0, fp
	bl	uECC_vli_set(PLT)
	add	r7, fp, r9
	mov	r2, r8
	mov	r1, r5
	mov	r0, r7
	bl	uECC_vli_set(PLT)
	add	r3, r4, #68
	mov	r2, r8
	mov	r5, r3
	mov	r1, r3
	add	ip, sp, #220
	str	ip, [sp, #16]
	mov	r0, ip
	bl	uECC_vli_set(PLT)
	mov	r2, r8
	add	r1, r5, r9
	add	r10, sp, #252
	mov	r0, r10
	bl	uECC_vli_set(PLT)
	adds	r3, r4, #4
	str	r8, [sp]
	str	r3, [sp, #24]
	ldr	r2, [sp, #16]
	mov	r1, fp
	ldr	r0, [sp, #28]
	bl	uECC_vli_modSub(PLT)
	str	r4, [sp]
	mov	r3, r7
	mov	r2, fp
	mov	r1, r10
	ldr	r0, [sp, #16]
	bl	XYcZ_add(PLT)
	mov	r3, r8
	ldr	r2, [sp, #24]
	ldr	r10, [sp, #28]
	mov	r1, r10
	mov	r0, r10
	bl	uECC_vli_modInv(PLT)
	mov	r3, r4
	str	r10, [sp, #28]
	mov	r2, r10
	mov	r1, r7
	mov	r0, fp
	bl	apply_z(PLT)
	add	r7, sp, #44
	mov	ip, #0
	str	ip, [sp, #44]
	str	r5, [sp, #48]
	ldr	r3, [sp, #36]
	str	r3, [sp, #52]
	str	fp, [sp, #56]
	ldr	r10, [sp, #12]
	mov	r1, r10
	mov	r0, r6
	bl	uECC_vli_numBits(PLT)
	mov	r5, r0
	mov	r1, r10
	ldr	fp, [sp, #32]
	mov	r0, fp
	bl	uECC_vli_numBits(PLT)
	cmp	r5, r0
	it	lt
	movlt	r5, r0
	uxth	r5, r5
	subs	r3, r5, #1
	sxth	r10, r3
	mov	r1, r10
	mov	r0, r6
	bl	uECC_vli_testBit(PLT)
	mov	r6, r0
	mov	r1, r10
	mov	r0, fp
	bl	uECC_vli_testBit(PLT)
	subs	r0, r0, #0
	it	ne
	movne	r0, #1
	subs	r6, r6, #0
	it	ne
	movne	r6, #1
	orr	r6, r6, r0, lsl #1
	ldr	r6, [r7, r6, lsl #2]
	mov	r2, r8
	mov	r1, r6
	add	r0, sp, #156
	bl	uECC_vli_set(PLT)
	mov	r2, r8
	add	r1, r6, r9
	add	r0, sp, #188
	bl	uECC_vli_set(PLT)
	mov	r1, r8
	ldr	r6, [sp, #28]
	mov	r0, r6
	bl	uECC_vli_clear(PLT)
	movs	r3, #1
	str	r3, [r6]
	subs	r5, r5, #2
	sxth	r5, r5
	cmp	r5, #0
	blt	.L38
	add	r7, sp, #124
	add	r3, sp, #188
	add	fp, sp, #156
	str	r9, [sp, #28]
	mov	r10, r3
	b	.L40
.L39:
	subs	r5, r5, #1
	sxth	r5, r5
	cmp	r5, #0
	blt	.L38
.L40:
	ldr	r6, [r4, #164]
	mov	r3, r4
	mov	r2, r7
	mov	r1, r10
	mov	r0, fp
	blx	r6
	mov	r1, r5
	add	r0, sp, #60
	bl	uECC_vli_testBit(PLT)
	mov	r6, r0
	mov	r1, r5
	add	r0, sp, #92
	bl	uECC_vli_testBit(PLT)
	subs	r0, r0, #0
	it	ne
	movne	r0, #1
	subs	r6, r6, #0
	it	ne
	movne	r6, #1
	orr	r6, r6, r0, lsl #1
	add	r3, sp, #44
	ldr	r9, [r3, r6, lsl #2]
	cmp	r9, #0
	beq	.L39
	mov	r2, r8
	mov	r1, r9
	add	r6, sp, #220
	mov	r0, r6
	bl	uECC_vli_set(PLT)
	mov	r2, r8
	ldr	r3, [sp, #28]
	add	r1, r9, r3
	add	r9, sp, #252
	mov	r0, r9
	bl	uECC_vli_set(PLT)
	mov	r3, r4
	mov	r2, r7
	mov	r1, r9
	mov	r0, r6
	bl	apply_z(PLT)
	str	r8, [sp]
	ldr	r3, [sp, #24]
	mov	r2, r6
	mov	r1, fp
	add	r0, sp, #284
	str	r0, [sp, #16]
	bl	uECC_vli_modSub(PLT)
	str	r4, [sp]
	mov	r3, r10
	mov	r2, fp
	mov	r1, r9
	mov	r0, r6
	bl	XYcZ_add(PLT)
	mov	r3, r4
	ldr	r2, [sp, #16]
	mov	r1, r7
	mov	r0, r7
	bl	uECC_vli_modMult_fast(PLT)
	b	.L39
.L38:
	mov	r3, r8
	ldr	r2, [sp, #24]
	add	r5, sp, #124
	mov	r1, r5
	mov	r0, r5
	bl	uECC_vli_modInv(PLT)
	mov	r3, r4
	mov	r2, r5
	add	r1, sp, #188
	add	r4, sp, #156
	mov	r0, r4
	bl	apply_z(PLT)
	ldr	r5, [sp, #12]
	mov	r2, r5
	mov	r1, r4
	ldr	r4, [sp, #20]
	mov	r0, r4
	bl	uECC_vli_cmp_unsafe(PLT)
	cmp	r0, #1
	bne	.L52
.L41:
	mov	r2, r8
	add	r1, sp, #316
	add	r0, sp, #156
	bl	uECC_vli_equal(PLT)
	clz	r0, r0
	lsrs	r0, r0, #5
	b	.L36
.L52:
	mov	r3, r5
	mov	r2, r4
	add	r0, sp, #156
	mov	r1, r0
	bl	uECC_vli_sub(PLT)
	b	.L41
.L50:
	bl	__stack_chk_fail(PLT)
.L54:
	.align	2
.L53:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC5+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC4+4)
	.size	uECC_verify, .-uECC_verify
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
