	.arch armv7-a
	.fpu vfpv3-d16
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 4
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
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r7, r3
	ldrsh	r3, [r3, #2]
	mov	r6, r0
	mov	r8, r1
	adds	r4, r3, #31
	it	mi
	addmi	r4, r3, #62
	asrs	r5, r4, #5
	adds	r4, r3, #7
	it	mi
	addmi	r4, r3, #14
	sxtb	r9, r5
	asrs	r4, r4, #3
	mov	r1, r9
	cmp	r4, r2
	it	cs
	movcs	r4, r2
	bl	uECC_vli_clear(PLT)
	mov	r2, r4
	mov	r1, r8
	mov	r0, r6
	bl	uECC_vli_bytesToNative(PLT)
	ldrsh	r2, [r7, #2]
	lsls	r3, r4, #3
	cmp	r2, r4, lsl #3
	bcs	.L1
	subs	r3, r3, r2
	add	r4, r6, r5, lsl #2
	movs	r1, #0
	rsb	r5, r3, #32
.L6:
	cmp	r6, r4
	bcc	.L7
	adds	r7, r7, #36
	mov	r2, r9
	mov	r1, r6
	mov	r0, r7
	bl	uECC_vli_cmp_unsafe(PLT)
	cmp	r0, #1
	beq	.L1
	mov	r3, r9
	mov	r2, r7
	mov	r1, r6
	mov	r0, r6
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	uECC_vli_sub(PLT)
.L7:
	ldr	r0, [r4, #-4]!
	lsr	r2, r0, r3
	orrs	r2, r2, r1
	lsl	r1, r0, r5
	str	r2, [r4]
	b	.L6
.L1:
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
	.size	bits2int, .-bits2int
	.align	1
	.global	uECC_sign_with_k
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_sign_with_k, %function
uECC_sign_with_k:
	@ args = 8, pretend = 0, frame = 168
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r5, r3
	sub	sp, sp, #180
	add	r10, sp, #44
	str	r2, [sp, #28]
	ldr	r3, [sp, #216]
	ldr	r2, .L24
	str	r3, [sp, #12]
	ldr	r7, [sp, #220]
.LPIC1:
	add	r2, pc
	ldr	r3, .L24+4
	strd	r0, r1, [sp, #20]
	mov	r0, r5
	ldrsb	fp, [r7]
	ldrsh	r9, [r7, #2]
	ldr	r3, [r2, r3]
	mov	r1, fp
	ldr	r3, [r3]
	str	r3, [sp, #172]
	mov	r3, #0
	add	r3, sp, #76
	str	r10, [sp, #36]
	str	r3, [sp, #40]
	bl	uECC_vli_isZero(PLT)
	cbz	r0, .L13
.L16:
	movs	r0, #0
.L12:
	ldr	r2, .L24+8
	ldr	r3, .L24+4
.LPIC0:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #172]
	eors	r2, r3, r2
	mov	r3, #0
	beq	.L20
	bl	__stack_chk_fail(PLT)
.L13:
	adds	r4, r9, #31
	add	r8, r7, #36
	it	mi
	addmi	r4, r9, #62
	mov	r1, r5
	mov	r0, r8
	sbfx	r4, r4, #5, #8
	mov	r2, r4
	bl	uECC_vli_cmp(PLT)
	cmp	r0, #1
	str	r0, [sp, #16]
	bne	.L16
	add	r6, sp, #76
	mov	r3, r7
	mov	r2, r6
	mov	r1, r10
	mov	r0, r5
	add	r9, r9, #1
	bl	regularize_k(PLT)
	clz	r0, r0
	add	r3, sp, #176
	str	r7, [sp, #4]
	lsrs	r0, r0, #5
	add	r1, r7, #68
	add	r0, r3, r0, lsl #2
	sxth	r3, r9
	str	r3, [sp]
	add	r9, sp, #108
	movs	r3, #0
	ldr	r2, [r0, #-140]
	mov	r0, r9
	bl	EccPoint_mult(PLT)
	mov	r1, fp
	mov	r0, r9
	bl	uECC_vli_isZero(PLT)
	cmp	r0, #0
	bne	.L16
	bl	uECC_get_rng(PLT)
	cmp	r0, #0
	bne	.L17
	mov	r1, r4
	mov	r0, r10
	bl	uECC_vli_clear(PLT)
	ldr	r3, [sp, #16]
	str	r3, [sp, #44]
.L18:
	add	r9, sp, #44
	mov	r3, r8
	mov	r2, r9
	mov	r1, r5
	mov	r0, r5
	str	r4, [sp]
	bl	uECC_vli_modMult(PLT)
	mov	r3, r4
	mov	r2, r8
	mov	r1, r5
	mov	r0, r5
	bl	uECC_vli_modInv(PLT)
	mov	r3, r8
	mov	r2, r9
	mov	r1, r5
	mov	r0, r5
	str	r4, [sp]
	bl	uECC_vli_modMult(PLT)
	ldrsb	r1, [r7, #1]
	ldr	r0, [sp, #12]
	add	r2, sp, #108
	bl	uECC_vli_nativeToBytes(PLT)
	ldrsh	r3, [r7, #2]
	ldr	r1, [sp, #20]
	mov	r0, r9
	adds	r2, r3, #7
	it	mi
	addmi	r2, r3, #14
	asrs	r2, r2, #3
	bl	uECC_vli_bytesToNative(PLT)
	subs	r3, r4, #1
	add	r2, sp, #176
	add	r1, sp, #108
	add	r3, r2, r3, lsl #2
	mov	r0, r6
	movs	r2, #0
	str	r2, [r3, #-100]
	mov	r2, fp
	bl	uECC_vli_set(PLT)
	mov	r3, r8
	mov	r2, r6
	mov	r1, r9
	mov	r0, r6
	str	r4, [sp]
	bl	uECC_vli_modMult(PLT)
	mov	r3, r7
	ldrd	r1, r2, [sp, #24]
	mov	r0, r9
	bl	bits2int(PLT)
	mov	r3, r8
	mov	r2, r6
	mov	r1, r9
	mov	r0, r6
	str	r4, [sp]
	bl	uECC_vli_modAdd(PLT)
	mov	r3, r8
	mov	r2, r5
	mov	r1, r6
	mov	r0, r6
	str	r4, [sp]
	bl	uECC_vli_modMult(PLT)
	mov	r1, r4
	mov	r0, r6
	bl	uECC_vli_numBits(PLT)
	ldrsb	r1, [r7, #1]
	cmp	r0, r1, lsl #3
	bgt	.L16
	ldr	r0, [sp, #12]
	mov	r2, r6
	add	r0, r0, r1
	bl	uECC_vli_nativeToBytes(PLT)
	movs	r0, #1
	b	.L12
.L17:
	mov	r2, r4
	mov	r1, r8
	mov	r0, r10
	bl	uECC_generate_random_int(PLT)
	cmp	r0, #0
	bne	.L18
	b	.L16
.L20:
	add	sp, sp, #180
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L25:
	.align	2
.L24:
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
	mov	r7, r2
	ldr	r2, .L40
	mov	r8, r3
	ldr	r3, .L40+4
	sub	sp, sp, #124
.LPIC3:
	add	r2, pc
	mov	r5, r0
	mov	r6, r1
	movs	r4, #64
	add	r10, sp, #52
	ldr	r9, [sp, #160]
	ldr	r3, [r2, r3]
	add	fp, r9, #36
	ldr	r3, [r3]
	str	r3, [sp, #116]
	mov	r3, #0
.L30:
	bl	uECC_get_rng(PLT)
	mov	r3, r0
	cbz	r0, .L27
	movs	r1, #64
	mov	r0, r10
	blx	r3
	cbz	r0, .L27
	ldrsh	r2, [r9, #2]
	add	r0, sp, #20
	mov	r1, r10
	str	r0, [sp, #12]
	adds	r3, r2, #31
	it	mi
	addmi	r3, r2, #62
	mov	r2, fp
	sbfx	r3, r3, #5, #8
	bl	uECC_vli_mmod(PLT)
	ldr	r0, [sp, #12]
	mov	r2, r7
	mov	r1, r6
	mov	r3, r0
	strd	r8, r9, [sp]
	mov	r0, r5
	bl	uECC_sign_with_k(PLT)
	cbnz	r0, .L32
	subs	r4, r4, #1
	bne	.L30
.L27:
	movs	r0, #0
.L26:
	ldr	r2, .L40+8
	ldr	r3, .L40+4
.LPIC2:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #116]
	eors	r2, r3, r2
	mov	r3, #0
	beq	.L31
	bl	__stack_chk_fail(PLT)
.L32:
	movs	r0, #1
	b	.L26
.L31:
	add	sp, sp, #124
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L41:
	.align	2
.L40:
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
	@ args = 4, pretend = 0, frame = 512
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r8, r3
	ldr	r3, .L59
	sub	sp, sp, #524
	mov	r6, r0
	add	fp, sp, #164
	add	r7, sp, #356
	strd	r1, r2, [sp, #24]
	mov	r1, r0
	ldr	r2, .L59+4
	ldr	r5, [sp, #560]
.LPIC5:
	add	r2, pc
	ldrsb	r4, [r5]
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [sp, #516]
	mov	r3, #0
	ldrsh	r3, [r5, #2]
	adds	r2, r3, #31
	it	mi
	addmi	r2, r3, #62
	sbfx	r3, r2, #5, #8
	add	r2, sp, #520
	add	r9, r3, #-1
	str	r3, [sp, #8]
	movs	r3, #0
	add	r2, r2, r9, lsl #2
	str	r3, [fp, r9, lsl #2]
	str	r3, [r2, #-196]
	str	r3, [r2, #-164]
	add	r3, sp, #452
	mov	r0, r3
	ldrsb	r2, [r5, #1]
	str	r3, [sp, #16]
	bl	uECC_vli_bytesToNative(PLT)
	lsls	r3, r4, #2
	str	r3, [sp, #44]
	ldr	r3, [sp, #16]
	ldrsb	r2, [r5, #1]
	add	r10, r3, r4, lsl #2
	adds	r1, r6, r2
	mov	r0, r10
	add	r6, sp, #324
	bl	uECC_vli_bytesToNative(PLT)
	ldrsb	r2, [r5, #1]
	mov	r1, r8
	mov	r0, r6
	bl	uECC_vli_bytesToNative(PLT)
	ldrsb	r2, [r5, #1]
	mov	r0, r7
	add	r1, r8, r2
	bl	uECC_vli_bytesToNative(PLT)
	mov	r1, r4
	mov	r0, r6
	bl	uECC_vli_isZero(PLT)
	cbz	r0, .L44
.L46:
	movs	r0, #0
.L42:
	ldr	r2, .L59+8
	ldr	r3, .L59
.LPIC4:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #516]
	eors	r2, r3, r2
	mov	r3, #0
	beq	.L51
	bl	__stack_chk_fail(PLT)
.L44:
	mov	r1, r4
	mov	r0, r7
	bl	uECC_vli_isZero(PLT)
	str	r0, [sp, #20]
	cmp	r0, #0
	bne	.L46
	add	r3, r5, #36
	ldr	r2, [sp, #8]
	mov	r1, r6
	mov	r0, r3
	str	r3, [sp, #12]
	bl	uECC_vli_cmp_unsafe(PLT)
	cmp	r0, #1
	bne	.L46
	ldr	r2, [sp, #8]
	mov	r1, r7
	ldr	r0, [sp, #12]
	bl	uECC_vli_cmp_unsafe(PLT)
	cmp	r0, #1
	str	r0, [sp, #36]
	bne	.L46
	add	r8, sp, #132
	mov	r1, r7
	add	r7, sp, #68
	mov	r0, r8
	ldrd	r3, r2, [sp, #8]
	bl	uECC_vli_modInv(PLT)
	ldr	r3, [sp, #20]
	mov	r0, r7
	str	r3, [r7, r9, lsl #2]
	mov	r3, r5
	ldrd	r1, r2, [sp, #24]
	bl	bits2int(PLT)
	ldr	r3, [sp, #8]
	mov	r1, r7
	mov	r0, r7
	mov	r2, r8
	str	r3, [sp]
	add	r9, sp, #228
	ldr	r3, [sp, #12]
	bl	uECC_vli_modMult(PLT)
	ldr	r3, [sp, #8]
	mov	r1, r6
	add	r0, sp, #100
	add	r6, sp, #388
	mov	r2, r8
	str	r3, [sp]
	ldr	r3, [sp, #12]
	str	r0, [sp, #28]
	bl	uECC_vli_modMult(PLT)
	mov	r0, r6
	ldr	r1, [sp, #16]
	mov	r2, r4
	bl	uECC_vli_set(PLT)
	lsls	r3, r4, #2
	adds	r3, r6, r3
	mov	r1, r10
	mov	r0, r3
	mov	r2, r4
	str	r3, [sp, #24]
	bl	uECC_vli_set(PLT)
	add	r3, r5, #68
	mov	r0, r9
	mov	r1, r3
	mov	r2, r4
	mov	r10, r3
	bl	uECC_vli_set(PLT)
	lsls	r3, r4, #2
	mov	r2, r4
	add	r1, r10, r3
	add	r3, sp, #260
	mov	r0, r3
	str	r3, [sp, #40]
	bl	uECC_vli_set(PLT)
	adds	r3, r5, #4
	mov	r2, r9
	mov	r1, r6
	mov	r0, r8
	str	r4, [sp]
	str	r3, [sp, #32]
	bl	uECC_vli_modSub(PLT)
	mov	r2, r6
	mov	r0, r9
	ldr	r3, [sp, #24]
	add	r9, sp, #52
	ldr	r1, [sp, #40]
	str	r5, [sp]
	bl	XYcZ_add(PLT)
	mov	r3, r4
	adds	r2, r5, #4
	mov	r1, r8
	mov	r0, r8
	bl	uECC_vli_modInv(PLT)
	mov	r2, r8
	mov	r0, r6
	ldr	r1, [sp, #24]
	mov	r3, r5
	bl	apply_z(PLT)
	ldr	r3, [sp, #20]
	strd	r3, r10, [sp, #52]
	mov	r0, r7
	ldr	r3, [sp, #16]
	ldr	r1, [sp, #8]
	strd	r3, r6, [sp, #60]
	bl	uECC_vli_numBits(PLT)
	ldr	r1, [sp, #8]
	mov	r6, r0
	ldr	r0, [sp, #28]
	bl	uECC_vli_numBits(PLT)
	cmp	r6, r0
	it	lt
	movlt	r6, r0
	mov	r0, r7
	uxth	r6, r6
	add	r10, r6, #-1
	subs	r6, r6, #2
	sxth	r10, r10
	mov	r1, r10
	bl	uECC_vli_testBit(PLT)
	mov	r1, r10
	mov	r7, r0
	ldr	r0, [sp, #28]
	bl	uECC_vli_testBit(PLT)
	subs	r0, r0, #0
	it	ne
	movne	r0, #1
	subs	r7, r7, #0
	it	ne
	movne	r7, #1
	mov	r2, r4
	orr	r7, r7, r0, lsl #1
	mov	r0, fp
	add	r10, sp, #196
	ldr	r7, [r9, r7, lsl #2]
	mov	r1, r7
	bl	uECC_vli_set(PLT)
	lsls	r3, r4, #2
	adds	r1, r7, r3
	mov	r2, r4
	mov	r0, r10
	bl	uECC_vli_set(PLT)
	mov	r1, r4
	mov	r0, r8
	bl	uECC_vli_clear(PLT)
	ldr	r3, [sp, #36]
	str	r3, [r8]
.L58:
	sxth	r6, r6
	cmp	r6, #0
	bge	.L49
	ldr	r2, [sp, #32]
	mov	r3, r4
	mov	r1, r8
	mov	r0, r8
	bl	uECC_vli_modInv(PLT)
	mov	r3, r5
	mov	r2, r8
	mov	r1, r10
	mov	r0, fp
	bl	apply_z(PLT)
	ldr	r2, [sp, #8]
	ldr	r0, [sp, #12]
	mov	r1, fp
	bl	uECC_vli_cmp_unsafe(PLT)
	cmp	r0, #1
	beq	.L50
	ldrd	r3, r2, [sp, #8]
	mov	r1, fp
	mov	r0, fp
	bl	uECC_vli_sub(PLT)
.L50:
	mov	r2, r4
	add	r1, sp, #324
	mov	r0, fp
	bl	uECC_vli_equal(PLT)
	clz	r0, r0
	lsrs	r0, r0, #5
	b	.L42
.L49:
	mov	r3, r5
	mov	r2, r8
	ldr	r7, [r5, #164]
	mov	r1, r10
	mov	r0, fp
	blx	r7
	mov	r1, r6
	add	r0, sp, #68
	bl	uECC_vli_testBit(PLT)
	mov	r1, r6
	mov	r7, r0
	add	r0, sp, #100
	bl	uECC_vli_testBit(PLT)
	subs	r0, r0, #0
	it	ne
	movne	r0, #1
	subs	r7, r7, #0
	it	ne
	movne	r7, #1
	add	r3, sp, #52
	orr	r7, r7, r0, lsl #1
	ldr	r9, [r3, r7, lsl #2]
	cmp	r9, #0
	beq	.L48
	add	r7, sp, #228
	mov	r1, r9
	mov	r2, r4
	mov	r0, r7
	bl	uECC_vli_set(PLT)
	ldr	r3, [sp, #44]
	mov	r2, r4
	add	r1, r9, r3
	add	r9, sp, #260
	mov	r0, r9
	bl	uECC_vli_set(PLT)
	mov	r3, r5
	mov	r2, r8
	mov	r1, r9
	mov	r0, r7
	bl	apply_z(PLT)
	add	r0, sp, #292
	ldr	r3, [sp, #32]
	mov	r2, r7
	mov	r1, fp
	str	r4, [sp]
	str	r0, [sp, #16]
	bl	uECC_vli_modSub(PLT)
	mov	r3, r10
	mov	r2, fp
	mov	r1, r9
	mov	r0, r7
	str	r5, [sp]
	bl	XYcZ_add(PLT)
	ldr	r2, [sp, #16]
	mov	r3, r5
	mov	r1, r8
	mov	r0, r8
	bl	uECC_vli_modMult_fast(PLT)
.L48:
	subs	r6, r6, #1
	b	.L58
.L51:
	add	sp, sp, #524
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L60:
	.align	2
.L59:
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC5+4)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC4+4)
	.size	uECC_verify, .-uECC_verify
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
