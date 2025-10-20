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
	.file	"tinycrypt_hmac_prng.c"
	.text
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	update, %function
update:
	@ args = 4, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r9, r2
	ldr	r2, .L31
	mov	r7, r3
	ldr	r3, .L31+4
.LPIC1:
	add	r2, pc
	add	r6, r0, #240
	mov	r4, r0
	mov	r8, r1
	mov	r1, r6
	mov	fp, #1
	ldr	r3, [r2, r3]
	movs	r2, #32
	ldr	r10, [sp, #48]
	add	r5, r4, #272
	ldr	r3, [r3]
	str	r3, [sp, #4]
	mov	r3, #0
	movs	r3, #0
	strb	fp, [sp, #3]
	strb	r3, [sp, #2]
	bl	tc_hmac_set_key(PLT)
	mov	r0, r4
	bl	tc_hmac_init(PLT)
	movs	r2, #32
	mov	r1, r5
	mov	r0, r4
	bl	tc_hmac_update(PLT)
	mov	r2, fp
	add	r1, sp, #2
	mov	r0, r4
	bl	tc_hmac_update(PLT)
	cmp	r8, #0
	beq	.L2
	cmp	r9, #0
	beq	.L2
	mov	r2, r9
	mov	r1, r8
	mov	r0, r4
	bl	tc_hmac_update(PLT)
.L2:
	cbz	r7, .L3
	cmp	r10, #0
	beq	.L3
	mov	r2, r10
	mov	r1, r7
	mov	r0, r4
	bl	tc_hmac_update(PLT)
.L3:
	mov	r2, r4
	movs	r1, #32
	mov	r0, r6
	bl	tc_hmac_final(PLT)
	movs	r2, #32
	mov	r1, r6
	mov	r0, r4
	bl	tc_hmac_set_key(PLT)
	mov	r0, r4
	bl	tc_hmac_init(PLT)
	movs	r2, #32
	mov	r1, r5
	mov	r0, r4
	bl	tc_hmac_update(PLT)
	mov	r2, r4
	movs	r1, #32
	mov	r0, r5
	bl	tc_hmac_final(PLT)
	cmp	r8, #0
	beq	.L1
	cmp	r9, #0
	beq	.L1
	movs	r2, #32
	mov	r1, r6
	mov	r0, r4
	bl	tc_hmac_set_key(PLT)
	mov	r0, r4
	bl	tc_hmac_init(PLT)
	movs	r2, #32
	mov	r1, r5
	mov	r0, r4
	bl	tc_hmac_update(PLT)
	movs	r2, #1
	add	r1, sp, #3
	mov	r0, r4
	bl	tc_hmac_update(PLT)
	mov	r2, r9
	mov	r1, r8
	mov	r0, r4
	bl	tc_hmac_update(PLT)
	cbz	r7, .L5
	cmp	r10, #0
	beq	.L5
	mov	r2, r10
	mov	r1, r7
	mov	r0, r4
	bl	tc_hmac_update(PLT)
.L5:
	mov	r2, r4
	movs	r1, #32
	mov	r0, r6
	bl	tc_hmac_final(PLT)
	movs	r2, #32
	mov	r1, r6
	mov	r0, r4
	bl	tc_hmac_set_key(PLT)
	mov	r0, r4
	bl	tc_hmac_init(PLT)
	movs	r2, #32
	mov	r1, r5
	mov	r0, r4
	bl	tc_hmac_update(PLT)
	mov	r2, r4
	movs	r1, #32
	mov	r0, r5
	bl	tc_hmac_final(PLT)
.L1:
	ldr	r2, .L31+8
	ldr	r3, .L31+4
.LPIC0:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #4]
	eors	r2, r3, r2
	mov	r3, #0
	beq	.L6
	bl	__stack_chk_fail(PLT)
.L6:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L32:
	.align	2
.L31:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC1+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+4)
	.size	update, .-update
	.align	1
	.global	tc_hmac_prng_init
	.syntax unified
	.thumb
	.thumb_func
	.type	tc_hmac_prng_init, %function
tc_hmac_prng_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r4, r5, r6, r7, lr}
	mov	r4, r1
	mov	r7, r2
	mov	r5, r0
	cbz	r0, .L33
	cbz	r1, .L36
	movs	r2, #32
	movs	r1, #0
	adds	r0, r0, #240
	movs	r6, #0
	bl	_set(PLT)
	movs	r2, #32
	movs	r1, #1
	add	r0, r5, #272
	bl	_set(PLT)
	mov	r0, r5
	mov	r3, r6
	mov	r2, r7
	mov	r1, r4
	str	r6, [sp]
	bl	update(PLT)
	movs	r0, #1
	str	r6, [r5, #304]
.L33:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L36:
	mov	r0, r1
	b	.L33
	.size	tc_hmac_prng_init, .-tc_hmac_prng_init
	.align	1
	.global	tc_hmac_prng_reseed
	.syntax unified
	.thumb
	.thumb_func
	.type	tc_hmac_prng_reseed, %function
tc_hmac_prng_reseed:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r4, r5, r6, r7, lr}
	mov	r5, r0
	ldr	r4, [sp, #32]
	cbz	r0, .L43
	cbz	r1, .L43
	cmp	r2, #31
	bls	.L43
	cbz	r3, .L39
	cbz	r4, .L44
	str	r4, [sp]
.L45:
	bl	update(PLT)
	movs	r0, #1
	mov	r3, #-1
	str	r3, [r5, #304]
.L37:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L39:
	str	r3, [sp]
	b	.L45
.L43:
	movs	r0, #0
	b	.L37
.L44:
	mov	r0, r4
	b	.L37
	.size	tc_hmac_prng_reseed, .-tc_hmac_prng_reseed
	.align	1
	.global	tc_hmac_prng_generate
	.syntax unified
	.thumb
	.thumb_func
	.type	tc_hmac_prng_generate, %function
tc_hmac_prng_generate:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
	mov	r5, r1
	mov	r4, r2
	mov	r8, r0
	cbz	r0, .L51
	cbz	r2, .L51
	subs	r3, r1, #1
	cmp	r3, #524288
	bcs	.L51
	ldr	r3, [r2, #304]
	cbz	r3, .L52
	add	r9, r2, #240
	add	r7, r2, #272
	subs	r3, r3, #1
	str	r3, [r2, #304]
.L48:
	movs	r2, #32
	mov	r1, r9
	mov	r0, r4
	mov	r6, r5
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
	cmp	r5, #32
	it	cs
	movcs	r6, #32
	mov	r0, r8
	mov	r3, r6
	mov	r2, r7
	mov	r1, r6
	add	r8, r8, r6
	bl	_copy(PLT)
	cmp	r5, #32
	it	cc
	movcc	r5, #32
	subs	r5, r5, #32
	bne	.L48
	mov	r0, r4
	mov	r3, r5
	mov	r2, r5
	mov	r1, r5
	str	r5, [sp]
	bl	update(PLT)
	movs	r0, #1
.L46:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L51:
	movs	r0, #0
	b	.L46
.L52:
	mov	r0, #-1
	b	.L46
	.size	tc_hmac_prng_generate, .-tc_hmac_prng_generate
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
