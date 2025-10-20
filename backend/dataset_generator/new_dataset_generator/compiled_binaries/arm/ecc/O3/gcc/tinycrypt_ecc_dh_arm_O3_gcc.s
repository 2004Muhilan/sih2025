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
	.file	"tinycrypt_ecc_dh.c"
	.text
	.align	1
	.p2align 2,,3
	.global	uECC_make_key_with_d
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_make_key_with_d, %function
uECC_make_key_with_d:
	@ args = 0, pretend = 0, frame = 104
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	lr, r2
	ldr	r2, .L9
	mov	r4, r3
	ldr	r3, .L9+4
.LPIC1:
	add	r2, pc
	sub	sp, sp, #104
	add	r5, sp, #4
	mov	r6, r0
	mov	ip, r5
	ldr	r0, [lr]	@ unaligned
	ldr	r3, [r2, r3]
	mov	r7, r1
	ldr	r1, [lr, #4]	@ unaligned
	add	r8, sp, #36
	ldr	r3, [r3]
	str	r3, [sp, #100]
	mov	r3, #0
	ldr	r2, [lr, #8]	@ unaligned
	ldr	r3, [lr, #12]	@ unaligned
	stmia	ip!, {r0, r1, r2, r3}
	ldr	r0, [lr, #16]	@ unaligned
	ldr	r1, [lr, #20]	@ unaligned
	ldr	r2, [lr, #24]	@ unaligned
	ldr	r3, [lr, #28]	@ unaligned
	stmia	ip!, {r0, r1, r2, r3}
	mov	r2, r4
	mov	r1, r5
	mov	r0, r8
	bl	EccPoint_compute_public_key(PLT)
	cbnz	r0, .L7
.L1:
	ldr	r2, .L9+8
	ldr	r3, .L9+4
.LPIC0:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #100]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L8
	add	sp, sp, #104
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L7:
	ldrsh	r3, [r4, #2]
	mov	r0, r7
	mov	r2, r5
	add	r1, r3, #14
	adds	r3, r3, #7
	it	pl
	movpl	r1, r3
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
	movs	r2, #32
	movs	r1, #0
	mov	r0, r5
	bl	memset(PLT)
	movs	r0, #1
	b	.L1
.L8:
	bl	__stack_chk_fail(PLT)
.L10:
	.align	2
.L9:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC1+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+4)
	.size	uECC_make_key_with_d, .-uECC_make_key_with_d
	.align	1
	.p2align 2,,3
	.global	uECC_make_key
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_make_key, %function
uECC_make_key:
	@ args = 0, pretend = 0, frame = 168
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r6, r2
	ldr	r2, .L28
	ldr	r3, .L28+4
	sub	sp, sp, #172
.LPIC3:
	add	r2, pc
	mov	r9, r0
	mov	r10, r1
	movs	r5, #64
	add	r7, sp, #36
	add	r8, r6, #36
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [sp, #164]
	mov	r3, #0
	b	.L15
.L26:
	movs	r1, #64
	mov	r0, r7
	blx	r3
	cbz	r0, .L12
	ldrsh	ip, [r6, #2]
	add	r4, sp, #4
	mov	r2, r8
	mov	r1, r7
	add	r3, ip, #62
	adds	ip, ip, #31
	it	pl
	movpl	r3, ip
	mov	r0, r4
	add	fp, sp, #100
	sbfx	r3, r3, #5, #8
	bl	uECC_vli_mmod(PLT)
	mov	r2, r6
	mov	r1, r4
	mov	r0, fp
	bl	EccPoint_compute_public_key(PLT)
	cbnz	r0, .L25
	subs	r5, r5, #1
	beq	.L12
.L15:
	bl	uECC_get_rng(PLT)
	mov	r3, r0
	cmp	r0, #0
	bne	.L26
.L12:
	movs	r0, #0
.L11:
	ldr	r2, .L28+8
	ldr	r3, .L28+4
.LPIC2:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #164]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L27
	add	sp, sp, #172
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L25:
	ldrsh	r3, [r6, #2]
	mov	r0, r10
	mov	r2, r4
	add	r1, r3, #14
	adds	r3, r3, #7
	it	pl
	movpl	r1, r3
	asrs	r1, r1, #3
	bl	uECC_vli_nativeToBytes(PLT)
	ldrsb	r1, [r6, #1]
	mov	r2, fp
	mov	r0, r9
	bl	uECC_vli_nativeToBytes(PLT)
	ldrsb	r2, [r6]
	ldrsb	r1, [r6, #1]
	add	r2, fp, r2, lsl #2
	add	r0, r9, r1
	bl	uECC_vli_nativeToBytes(PLT)
	movs	r2, #32
	movs	r1, #0
	mov	r0, r4
	bl	memset(PLT)
	movs	r0, #1
	b	.L11
.L27:
	bl	__stack_chk_fail(PLT)
.L29:
	.align	2
.L28:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC3+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC2+4)
	.size	uECC_make_key, .-uECC_make_key
	.align	1
	.p2align 2,,3
	.global	uECC_shared_secret
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_shared_secret, %function
uECC_shared_secret:
	@ args = 0, pretend = 0, frame = 152
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r10, r2
	ldr	r2, .L40
	sub	sp, sp, #164
	mov	r4, r3
	ldr	r3, .L40+4
.LPIC5:
	add	r2, pc
	add	r6, sp, #28
	mov	fp, r0
	str	r6, [sp, #20]
	mov	r0, r6
	ldrsb	r9, [r4, #1]
	add	r7, sp, #92
	ldr	r3, [r2, r3]
	add	r8, sp, #60
	ldrsb	r5, [r4]
	ldr	r3, [r3]
	str	r3, [sp, #156]
	mov	r3, #0
	ldrsh	r3, [r4, #2]
	str	r8, [sp, #24]
	add	r2, r3, #14
	adds	r3, r3, #7
	it	pl
	movpl	r2, r3
	asrs	r2, r2, #3
	bl	uECC_vli_bytesToNative(PLT)
	mov	r1, fp
	mov	r2, r9
	mov	r0, r7
	bl	uECC_vli_bytesToNative(PLT)
	add	r1, fp, r9
	mov	r2, r9
	add	r0, r7, r5, lsl #2
	bl	uECC_vli_bytesToNative(PLT)
	mov	r3, r4
	mov	r2, r8
	mov	r1, r6
	mov	r0, r6
	bl	regularize_k(PLT)
	mov	fp, r0
	bl	uECC_get_rng(PLT)
	cmp	r0, #0
	beq	.L34
	add	r3, sp, #160
	mov	r2, r5
	add	r3, r3, fp, lsl #2
	adds	r1, r4, #4
	str	r3, [sp, #12]
	ldr	r0, [r3, #-140]
	bl	uECC_generate_random_int(PLT)
	mov	r5, r0
	cbz	r0, .L32
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #-140]
.L31:
	clz	r1, fp
	add	r2, sp, #160
	str	r4, [sp, #4]
	mov	r0, r7
	lsrs	r1, r1, #5
	add	r1, r2, r1, lsl #2
	ldr	r2, [r1, #-140]
	ldrh	r1, [r4, #2]
	adds	r1, r1, #1
	sxth	r1, r1
	str	r1, [sp]
	mov	r1, r7
	bl	EccPoint_mult(PLT)
	mov	r2, r7
	mov	r1, r9
	mov	r0, r10
	bl	uECC_vli_nativeToBytes(PLT)
	mov	r1, r4
	mov	r0, r7
	bl	EccPoint_isZero(PLT)
	clz	r5, r0
	lsrs	r5, r5, #5
.L32:
	movs	r4, #0
	add	r3, sp, #20
	str	r4, [sp, #20]
	str	r4, [sp, #24]
	movs	r2, #32
	mov	r1, r4
	mov	r0, r8
	bl	memset(PLT)
	movs	r2, #32
	mov	r1, r4
	mov	r0, r6
	bl	memset(PLT)
	ldr	r2, .L40+8
	ldr	r3, .L40+4
.LPIC4:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #156]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L39
	mov	r0, r5
	add	sp, sp, #164
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L34:
	mov	r3, r0
	b	.L31
.L39:
	bl	__stack_chk_fail(PLT)
.L41:
	.align	2
.L40:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC5+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC4+4)
	.size	uECC_shared_secret, .-uECC_shared_secret
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
