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
	.file	"tinycrypt_ecc_dh.c"
	.text
	.align	1
	.global	uECC_make_key_with_d
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_make_key_with_d, %function
uECC_make_key_with_d:
	@ args = 0, pretend = 0, frame = 104
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	sub	sp, sp, #108
	mov	r5, r0
	mov	r6, r1
	mov	lr, r2
	mov	r4, r3
	ldr	r2, .L8
.LPIC1:
	add	r2, pc
	ldr	r3, .L8+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [sp, #100]
	mov	r3, #0
	add	r7, sp, #4
	mov	ip, r7
	ldr	r0, [lr]	@ unaligned
	ldr	r1, [lr, #4]	@ unaligned
	ldr	r2, [lr, #8]	@ unaligned
	ldr	r3, [lr, #12]	@ unaligned
	stmia	ip!, {r0, r1, r2, r3}
	ldr	r0, [lr, #16]	@ unaligned
	ldr	r1, [lr, #20]	@ unaligned
	ldr	r2, [lr, #24]	@ unaligned
	ldr	r3, [lr, #28]	@ unaligned
	stmia	ip!, {r0, r1, r2, r3}
	mov	r2, r4
	mov	r1, r7
	mov	r0, ip
	bl	EccPoint_compute_public_key(PLT)
	cbnz	r0, .L6
	movs	r0, #0
.L1:
	ldr	r2, .L8+8
.LPIC0:
	add	r2, pc
	ldr	r3, .L8+4
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #100]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L7
	add	sp, sp, #108
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L6:
	ldrsh	r3, [r4, #2]
	add	r1, r3, #14
	adds	r3, r3, #7
	it	pl
	movpl	r1, r3
	mov	r2, r7
	asrs	r1, r1, #3
	mov	r0, r6
	bl	uECC_vli_nativeToBytes(PLT)
	add	r6, sp, #36
	mov	r2, r6
	ldrsb	r1, [r4, #1]
	mov	r0, r5
	bl	uECC_vli_nativeToBytes(PLT)
	ldrsb	r1, [r4, #1]
	ldrsb	r2, [r4]
	add	r2, r6, r2, lsl #2
	adds	r0, r5, r1
	bl	uECC_vli_nativeToBytes(PLT)
	movs	r2, #32
	movs	r1, #0
	mov	r0, r7
	bl	memset(PLT)
	movs	r0, #1
	b	.L1
.L7:
	bl	__stack_chk_fail(PLT)
.L9:
	.align	2
.L8:
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
	sub	sp, sp, #172
	mov	r9, r0
	mov	r10, r1
	mov	r5, r2
	ldr	r2, .L20
.LPIC3:
	add	r2, pc
	ldr	r3, .L20+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [sp, #164]
	mov	r3, #0
	movs	r4, #64
	add	r6, sp, #36
	mov	r7, r4
	add	r8, r5, #36
.L13:
	bl	uECC_get_rng(PLT)
	mov	r3, r0
	cmp	r0, #0
	beq	.L15
	mov	r1, r7
	mov	r0, r6
	blx	r3
	mov	r3, r0
	cmp	r0, #0
	beq	.L10
	ldrsh	ip, [r5, #2]
	add	r3, ip, #62
	adds	ip, ip, #31
	it	pl
	movpl	r3, ip
	sbfx	r3, r3, #5, #8
	mov	r2, r8
	mov	r1, r6
	add	fp, sp, #4
	mov	r0, fp
	bl	uECC_vli_mmod(PLT)
	mov	r2, r5
	mov	r1, fp
	add	r0, sp, #100
	bl	EccPoint_compute_public_key(PLT)
	cbnz	r0, .L18
	subs	r4, r4, #1
	bne	.L13
	movs	r3, #0
	b	.L10
.L18:
	ldrsh	r3, [r5, #2]
	add	r1, r3, #14
	adds	r3, r3, #7
	it	pl
	movpl	r1, r3
	mov	r2, fp
	asrs	r1, r1, #3
	mov	r0, r10
	bl	uECC_vli_nativeToBytes(PLT)
	add	r6, sp, #100
	mov	r2, r6
	ldrsb	r1, [r5, #1]
	mov	r0, r9
	bl	uECC_vli_nativeToBytes(PLT)
	ldrsb	r1, [r5, #1]
	ldrsb	r2, [r5]
	add	r2, r6, r2, lsl #2
	add	r0, r9, r1
	bl	uECC_vli_nativeToBytes(PLT)
	movs	r2, #32
	movs	r1, #0
	mov	r0, fp
	bl	memset(PLT)
	movs	r3, #1
	b	.L10
.L15:
	movs	r3, #0
.L10:
	ldr	r1, .L20+8
.LPIC2:
	add	r1, pc
	ldr	r2, .L20+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [sp, #164]
	eors	r1, r2, r1
	mov	r2, #0
	bne	.L19
	mov	r0, r3
	add	sp, sp, #172
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L19:
	bl	__stack_chk_fail(PLT)
.L21:
	.align	2
.L20:
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
	@ args = 0, pretend = 0, frame = 144
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #156
	mov	r8, r0
	mov	r7, r2
	mov	r4, r3
	ldr	r2, .L29
.LPIC5:
	add	r2, pc
	ldr	r3, .L29+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [sp, #148]
	mov	r3, #0
	add	r5, sp, #20
	str	r5, [sp, #12]
	add	r10, sp, #52
	str	r10, [sp, #16]
	ldrsb	r9, [r4]
	ldrsb	r6, [r4, #1]
	ldrsh	r3, [r4, #2]
	add	r2, r3, #14
	adds	r3, r3, #7
	it	pl
	movpl	r2, r3
	asrs	r2, r2, #3
	mov	r0, r5
	bl	uECC_vli_bytesToNative(PLT)
	mov	r2, r6
	mov	r1, r8
	add	fp, sp, #84
	mov	r0, fp
	bl	uECC_vli_bytesToNative(PLT)
	mov	r2, r6
	add	r1, r8, r6
	add	r0, fp, r9, lsl #2
	bl	uECC_vli_bytesToNative(PLT)
	mov	r3, r4
	mov	r2, r10
	mov	r1, r5
	mov	r0, r5
	bl	regularize_k(PLT)
	mov	r5, r0
	bl	uECC_get_rng(PLT)
	cmp	r0, #0
	beq	.L26
	mov	r2, r9
	adds	r1, r4, #4
	add	r3, sp, #152
	add	r3, r3, r5, lsl #2
	ldr	r0, [r3, #-140]
	bl	uECC_generate_random_int(PLT)
	mov	r8, r0
	cbz	r0, .L24
	add	r3, sp, #152
	add	r3, r3, r5, lsl #2
	ldr	r3, [r3, #-140]
.L23:
	clz	r0, r5
	lsrs	r0, r0, #5
	add	r2, sp, #152
	add	r0, r2, r0, lsl #2
	str	r4, [sp, #4]
	ldrh	r2, [r4, #2]
	adds	r2, r2, #1
	sxth	r2, r2
	str	r2, [sp]
	ldr	r2, [r0, #-140]
	add	r5, sp, #84
	mov	r1, r5
	mov	r0, r5
	bl	EccPoint_mult(PLT)
	mov	r2, r5
	mov	r1, r6
	mov	r0, r7
	bl	uECC_vli_nativeToBytes(PLT)
	mov	r1, r4
	mov	r0, r5
	bl	EccPoint_isZero(PLT)
	clz	r8, r0
	lsr	r8, r8, #5
.L24:
	movs	r4, #0
	str	r4, [sp, #12]
	add	r3, sp, #12
	str	r4, [sp, #16]
	movs	r6, #32
	mov	r2, r6
	mov	r1, r4
	add	r5, sp, #52
	mov	r0, r5
	bl	memset(PLT)
	mov	r2, r6
	mov	r1, r4
	add	r4, sp, #20
	mov	r0, r4
	bl	memset(PLT)
	ldr	r2, .L29+8
.LPIC4:
	add	r2, pc
	ldr	r3, .L29+4
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #148]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L28
	mov	r0, r8
	add	sp, sp, #156
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L26:
	movs	r3, #0
	b	.L23
.L28:
	bl	__stack_chk_fail(PLT)
.L30:
	.align	2
.L29:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC5+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC4+4)
	.size	uECC_shared_secret, .-uECC_shared_secret
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
