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
	.file	"tinycrypt_ecc_dh.c"
	.text
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	_set_secure.constprop.0, %function
_set_secure.constprop.0:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, r1
	push	{r4, lr}
	movs	r1, #0
	mov	r4, r0
	bl	memset(PLT)
	pop	{r4, pc}
	.size	_set_secure.constprop.0, .-_set_secure.constprop.0
	.align	1
	.global	uECC_make_key_with_d
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_make_key_with_d, %function
uECC_make_key_with_d:
	@ args = 0, pretend = 0, frame = 104
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r7, r1
	ldr	r1, .L9
	mov	r4, r3
	ldr	r3, .L9+4
.LPIC1:
	add	r1, pc
	sub	sp, sp, #104
	add	r5, sp, #4
	mov	r6, r0
	mov	ip, r5
	add	lr, r2, #32
	ldr	r3, [r1, r3]
	ldr	r3, [r3]
	str	r3, [sp, #100]
	mov	r3, #0
.L3:
	mov	r3, ip
	ldr	r0, [r2]	@ unaligned
	ldr	r1, [r2, #4]	@ unaligned
	adds	r2, r2, #8
	cmp	r2, lr
	stmia	r3!, {r0, r1}
	mov	ip, r3
	bne	.L3
	add	r8, sp, #36
	mov	r2, r4
	mov	r1, r5
	mov	r0, r8
	bl	EccPoint_compute_public_key(PLT)
	cbz	r0, .L2
	ldrsh	r3, [r4, #2]
	mov	r2, r5
	mov	r0, r7
	adds	r1, r3, #7
	it	mi
	addmi	r1, r3, #14
	asrs	r1, r1, #3
	bl	uECC_vli_nativeToBytes(PLT)
	ldrsb	r1, [r4, #1]
	mov	r2, r8
	mov	r0, r6
	bl	uECC_vli_nativeToBytes(PLT)
	ldrsb	r2, [r4]
	ldrsb	r1, [r4, #1]
	add	r2, r8, r2, lsl #2
	adds	r0, r6, r1
	bl	uECC_vli_nativeToBytes(PLT)
	mov	r0, r5
	movs	r1, #32
	bl	_set_secure.constprop.0(PLT)
	movs	r0, #1
.L2:
	ldr	r2, .L9+8
	ldr	r3, .L9+4
.LPIC0:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #100]
	eors	r2, r3, r2
	mov	r3, #0
	beq	.L6
	bl	__stack_chk_fail(PLT)
.L6:
	add	sp, sp, #104
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L10:
	.align	2
.L9:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC1+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+4)
	.size	uECC_make_key_with_d, .-uECC_make_key_with_d
	.align	1
	.global	uECC_make_key
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_make_key, %function
uECC_make_key:
	@ args = 0, pretend = 0, frame = 168
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, r2
	ldr	r2, .L26
	ldr	r3, .L26+4
	sub	sp, sp, #172
.LPIC3:
	add	r2, pc
	mov	r5, r0
	mov	r8, r1
	movs	r7, #64
	add	r9, sp, #36
	add	r10, r4, #36
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [sp, #164]
	mov	r3, #0
.L17:
	bl	uECC_get_rng(PLT)
	mov	r3, r0
	cmp	r0, #0
	beq	.L12
	movs	r1, #64
	mov	r0, r9
	blx	r3
	cmp	r0, #0
	beq	.L12
	ldrsh	r2, [r4, #2]
	add	r6, sp, #4
	mov	r1, r9
	mov	r0, r6
	adds	r3, r2, #31
	add	fp, sp, #100
	it	mi
	addmi	r3, r2, #62
	mov	r2, r10
	sbfx	r3, r3, #5, #8
	bl	uECC_vli_mmod(PLT)
	mov	r2, r4
	mov	r1, r6
	mov	r0, fp
	bl	EccPoint_compute_public_key(PLT)
	cbz	r0, .L14
	ldrsh	r3, [r4, #2]
	mov	r2, r6
	mov	r0, r8
	adds	r1, r3, #7
	it	mi
	addmi	r1, r3, #14
	asrs	r1, r1, #3
	bl	uECC_vli_nativeToBytes(PLT)
	ldrsb	r1, [r4, #1]
	mov	r2, fp
	mov	r0, r5
	bl	uECC_vli_nativeToBytes(PLT)
	ldrsb	r2, [r4]
	ldrsb	r1, [r4, #1]
	add	r2, fp, r2, lsl #2
	adds	r0, r5, r1
	bl	uECC_vli_nativeToBytes(PLT)
	mov	r0, r6
	movs	r1, #32
	bl	_set_secure.constprop.0(PLT)
	movs	r0, #1
.L11:
	ldr	r2, .L26+8
	ldr	r3, .L26+4
.LPIC2:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #164]
	eors	r2, r3, r2
	mov	r3, #0
	beq	.L18
	bl	__stack_chk_fail(PLT)
.L14:
	subs	r7, r7, #1
	bne	.L17
.L12:
	movs	r0, #0
	b	.L11
.L18:
	add	sp, sp, #172
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L27:
	.align	2
.L26:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC3+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC2+4)
	.size	uECC_make_key, .-uECC_make_key
	.align	1
	.global	uECC_shared_secret
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_shared_secret, %function
uECC_shared_secret:
	@ args = 0, pretend = 0, frame = 152
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, r3
	ldr	r3, .L37
	sub	sp, sp, #164
	mov	r5, r0
	ldrsb	r8, [r4, #1]
	add	r7, sp, #28
	ldrsb	fp, [r4]
	mov	r0, r7
	str	r2, [sp, #12]
	add	r6, sp, #92
	ldr	r2, .L37+4
	add	r9, sp, #60
.LPIC5:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [sp, #156]
	mov	r3, #0
	ldrsh	r3, [r4, #2]
	str	r7, [sp, #20]
	adds	r2, r3, #7
	str	r9, [sp, #24]
	it	mi
	addmi	r2, r3, #14
	asrs	r2, r2, #3
	bl	uECC_vli_bytesToNative(PLT)
	mov	r1, r5
	mov	r2, r8
	mov	r0, r6
	bl	uECC_vli_bytesToNative(PLT)
	add	r1, r5, r8
	mov	r2, r8
	add	r0, r6, fp, lsl #2
	bl	uECC_vli_bytesToNative(PLT)
	mov	r3, r4
	mov	r2, r9
	mov	r1, r7
	mov	r0, r7
	bl	regularize_k(PLT)
	mov	r5, r0
	bl	uECC_get_rng(PLT)
	mov	r3, r0
	cbz	r0, .L30
	add	r3, sp, #160
	mov	r2, fp
	add	r10, r3, r5, lsl #2
	adds	r1, r4, #4
	ldr	r0, [r10, #-140]
	bl	uECC_generate_random_int(PLT)
	mov	fp, r0
	cbz	r0, .L31
	ldr	r3, [r10, #-140]
.L30:
	clz	r5, r5
	str	r4, [sp, #4]
	add	r2, sp, #160
	mov	r1, r6
	lsrs	r5, r5, #5
	mov	r0, r6
	add	r5, r2, r5, lsl #2
	ldrh	r2, [r4, #2]
	adds	r2, r2, #1
	sxth	r2, r2
	str	r2, [sp]
	ldr	r2, [r5, #-140]
	bl	EccPoint_mult(PLT)
	ldr	r0, [sp, #12]
	mov	r2, r6
	mov	r1, r8
	bl	uECC_vli_nativeToBytes(PLT)
	mov	r1, r4
	mov	r0, r6
	bl	EccPoint_isZero(PLT)
	clz	fp, r0
	lsr	fp, fp, #5
.L31:
	movs	r1, #8
	add	r0, sp, #20
	bl	_set_secure.constprop.0(PLT)
	movs	r1, #32
	mov	r0, r9
	bl	_set_secure.constprop.0(PLT)
	movs	r1, #32
	mov	r0, r7
	bl	_set_secure.constprop.0(PLT)
	ldr	r2, .L37+8
	ldr	r3, .L37
.LPIC4:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #156]
	eors	r2, r3, r2
	mov	r3, #0
	beq	.L32
	bl	__stack_chk_fail(PLT)
.L32:
	mov	r0, fp
	add	sp, sp, #164
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L38:
	.align	2
.L37:
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC5+4)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC4+4)
	.size	uECC_shared_secret, .-uECC_shared_secret
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
