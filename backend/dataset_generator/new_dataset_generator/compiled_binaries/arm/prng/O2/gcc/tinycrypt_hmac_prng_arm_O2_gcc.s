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
	.file	"tinycrypt_hmac_prng.c"
	.text
	.align	1
	.p2align 2,,3
	.syntax unified
	.thumb
	.thumb_func
	.type	update, %function
update:
	@ args = 4, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r6, r2
	ldr	r2, .L17
	mov	r10, r3
	ldr	r3, .L17+4
.LPIC1:
	add	r2, pc
	sub	sp, sp, #12
	add	r8, r0, #240
	mov	r4, r0
	mov	r5, r1
	mov	r1, r8
	ldr	r3, [r2, r3]
	movs	r2, #32
	mov	r9, #1
	add	r7, r4, #272
	ldr	r3, [r3]
	str	r3, [sp, #4]
	mov	r3, #0
	movs	r3, #0
	strb	r9, [sp, #3]
	strb	r3, [sp, #2]
	bl	tc_hmac_set_key(PLT)
	mov	r0, r4
	bl	tc_hmac_init(PLT)
	movs	r2, #32
	mov	r1, r7
	mov	r0, r4
	bl	tc_hmac_update(PLT)
	mov	r2, r9
	add	r1, sp, #2
	mov	r0, r4
	bl	tc_hmac_update(PLT)
	ldr	r3, [sp, #48]
	cmp	r10, #0
	it	ne
	cmpne	r3, #0
	ite	ne
	movne	fp, #1
	moveq	fp, #0
	cmp	r5, #0
	it	ne
	cmpne	r6, #0
	bne	.L14
	cmp	fp, #0
	bne	.L5
.L4:
	mov	r2, r4
	movs	r1, #32
	mov	r0, r8
	bl	tc_hmac_final(PLT)
	movs	r2, #32
	mov	r1, r8
	mov	r0, r4
	bl	tc_hmac_set_key(PLT)
	mov	r0, r4
	bl	tc_hmac_init(PLT)
	movs	r2, #32
	mov	r1, r7
	mov	r0, r4
	bl	tc_hmac_update(PLT)
	mov	r2, r4
	movs	r1, #32
	mov	r0, r7
	bl	tc_hmac_final(PLT)
	cmp	r6, #0
	it	ne
	cmpne	r5, #0
	bne	.L15
.L1:
	ldr	r2, .L17+8
	ldr	r3, .L17+4
.LPIC0:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #4]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L16
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L5:
	ldr	r2, [sp, #48]
	mov	r1, r10
	mov	r0, r4
	bl	tc_hmac_update(PLT)
	b	.L4
.L14:
	mov	r2, r6
	mov	r1, r5
	mov	r0, r4
	bl	tc_hmac_update(PLT)
	cmp	fp, #0
	bne	.L5
	mov	r2, r4
	movs	r1, #32
	mov	r0, r8
	bl	tc_hmac_final(PLT)
	movs	r2, #32
	mov	r1, r8
	mov	r0, r4
	bl	tc_hmac_set_key(PLT)
	mov	r0, r4
	bl	tc_hmac_init(PLT)
	movs	r2, #32
	mov	r1, r7
	mov	r0, r4
	bl	tc_hmac_update(PLT)
	mov	r2, r4
	movs	r1, #32
	mov	r0, r7
	bl	tc_hmac_final(PLT)
	movs	r2, #32
	mov	r1, r8
	mov	r0, r4
	bl	tc_hmac_set_key(PLT)
	mov	r0, r4
	bl	tc_hmac_init(PLT)
	movs	r2, #32
	mov	r1, r7
	mov	r0, r4
	bl	tc_hmac_update(PLT)
	mov	r2, r9
	add	r1, sp, #3
	mov	r0, r4
	bl	tc_hmac_update(PLT)
	mov	r2, r6
	mov	r1, r5
	mov	r0, r4
	bl	tc_hmac_update(PLT)
.L7:
	mov	r2, r4
	movs	r1, #32
	mov	r0, r8
	bl	tc_hmac_final(PLT)
	mov	r1, r8
	movs	r2, #32
	mov	r0, r4
	bl	tc_hmac_set_key(PLT)
	mov	r0, r4
	bl	tc_hmac_init(PLT)
	mov	r1, r7
	movs	r2, #32
	mov	r0, r4
	bl	tc_hmac_update(PLT)
	mov	r2, r4
	movs	r1, #32
	mov	r0, r7
	bl	tc_hmac_final(PLT)
	b	.L1
.L15:
	movs	r2, #32
	mov	r1, r8
	mov	r0, r4
	bl	tc_hmac_set_key(PLT)
	mov	r0, r4
	bl	tc_hmac_init(PLT)
	movs	r2, #32
	mov	r1, r7
	mov	r0, r4
	bl	tc_hmac_update(PLT)
	movs	r2, #1
	add	r1, sp, #3
	mov	r0, r4
	bl	tc_hmac_update(PLT)
	mov	r2, r6
	mov	r1, r5
	mov	r0, r4
	bl	tc_hmac_update(PLT)
	cmp	fp, #0
	beq	.L7
	ldr	r2, [sp, #48]
	mov	r1, r10
	mov	r0, r4
	bl	tc_hmac_update(PLT)
	b	.L7
.L16:
	bl	__stack_chk_fail(PLT)
.L18:
	.align	2
.L17:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC1+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+4)
	.size	update, .-update
	.align	1
	.p2align 2,,3
	.global	tc_hmac_prng_init
	.syntax unified
	.thumb
	.thumb_func
	.type	tc_hmac_prng_init, %function
tc_hmac_prng_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	cmp	r1, #0
	it	ne
	cmpne	r0, #0
	it	eq
	moveq	r7, #1
	sub	sp, sp, #12
	ite	ne
	movne	r7, #0
	moveq	r0, #0
	beq	.L19
	mov	r4, r0
	mov	r6, r2
	mov	r5, r1
	movs	r2, #32
	mov	r1, r7
	adds	r0, r0, #240
	bl	_set(PLT)
	movs	r2, #32
	movs	r1, #1
	add	r0, r4, #272
	bl	_set(PLT)
	mov	r0, r4
	mov	r3, r7
	mov	r2, r6
	mov	r1, r5
	str	r7, [sp]
	bl	update(PLT)
	movs	r0, #1
	str	r7, [r4, #304]
.L19:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
	.size	tc_hmac_prng_init, .-tc_hmac_prng_init
	.align	1
	.p2align 2,,3
	.global	tc_hmac_prng_reseed
	.syntax unified
	.thumb
	.thumb_func
	.type	tc_hmac_prng_reseed, %function
tc_hmac_prng_reseed:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	cmp	r1, #0
	it	ne
	cmpne	r2, #31
	ite	ls
	movls	r4, #1
	movhi	r4, #0
	sub	sp, sp, #8
	cmp	r0, #0
	it	eq
	orreq	r4, r4, #1
	cbz	r4, .L30
	movs	r0, #0
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, pc}
.L30:
	mov	r5, r0
	cbz	r3, .L25
	ldr	r4, [sp, #24]
	cbnz	r4, .L31
	ldr	r0, [sp, #24]
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, pc}
.L31:
	str	r4, [sp]
	bl	update(PLT)
.L26:
	mov	r3, #-1
	movs	r0, #1
	str	r3, [r5, #304]
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, pc}
.L25:
	str	r3, [sp]
	bl	update(PLT)
	b	.L26
	.size	tc_hmac_prng_reseed, .-tc_hmac_prng_reseed
	.align	1
	.p2align 2,,3
	.global	tc_hmac_prng_generate
	.syntax unified
	.thumb
	.thumb_func
	.type	tc_hmac_prng_generate, %function
tc_hmac_prng_generate:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	cmp	r2, #0
	it	ne
	cmpne	r0, #0
	mov	r8, r0
	sub	sp, sp, #12
	itet	eq
	moveq	r0, #1
	movne	r0, #0
	moveq	r0, #0
	beq	.L32
	subs	r3, r1, #1
	mov	r4, r1
	cmp	r3, #524288
	bcs	.L32
	ldr	r3, [r2, #304]
	mov	r5, r2
	mov	r0, #-1
	cbz	r3, .L32
	add	r9, r2, #240
	add	r7, r2, #272
	subs	r3, r3, #1
	str	r3, [r2, #304]
.L34:
	movs	r2, #32
	mov	r1, r9
	mov	r0, r5
	mov	r6, r4
	bl	tc_hmac_set_key(PLT)
	mov	r0, r5
	bl	tc_hmac_init(PLT)
	movs	r2, #32
	mov	r1, r7
	mov	r0, r5
	bl	tc_hmac_update(PLT)
	mov	r2, r5
	movs	r1, #32
	mov	r0, r7
	bl	tc_hmac_final(PLT)
	cmp	r4, #32
	it	cs
	movcs	r6, #32
	mov	r0, r8
	mov	r3, r6
	mov	r2, r7
	mov	r1, r6
	add	r8, r8, r6
	bl	_copy(PLT)
	cmp	r4, #32
	it	cc
	movcc	r4, #32
	subs	r4, r4, #32
	bne	.L34
	mov	r0, r5
	mov	r3, r4
	mov	r2, r4
	mov	r1, r4
	str	r4, [sp]
	bl	update(PLT)
	movs	r0, #1
.L32:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
	.size	tc_hmac_prng_generate, .-tc_hmac_prng_generate
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
