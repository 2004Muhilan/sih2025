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
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #12
	mov	r4, r0
	mov	r5, r1
	mov	r6, r2
	mov	r9, r3
	ldr	r10, [sp, #48]
	ldr	r2, .L14
.LPIC1:
	add	r2, pc
	ldr	r3, .L14+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [sp, #4]
	mov	r3, #0
	movs	r3, #0
	strb	r3, [sp, #2]
	mov	fp, #1
	strb	fp, [sp, #3]
	add	r8, r0, #240
	movs	r2, #32
	mov	r1, r8
	bl	tc_hmac_set_key(PLT)
	mov	r0, r4
	bl	tc_hmac_init(PLT)
	add	r7, r4, #272
	movs	r2, #32
	mov	r1, r7
	mov	r0, r4
	bl	tc_hmac_update(PLT)
	mov	r2, fp
	add	r1, sp, #2
	mov	r0, r4
	bl	tc_hmac_update(PLT)
	cmp	r5, #0
	it	ne
	cmpne	r6, #0
	bne	.L11
	cmp	r9, #0
	it	ne
	cmpne	r10, #0
	ite	ne
	movne	fp, #1
	moveq	fp, #0
	bne	.L3
.L5:
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
	bne	.L12
.L1:
	ldr	r2, .L14+8
.LPIC0:
	add	r2, pc
	ldr	r3, .L14+4
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #4]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L13
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L11:
	mov	r2, r6
	mov	r1, r5
	mov	r0, r4
	bl	tc_hmac_update(PLT)
	cmp	r9, #0
	it	ne
	cmpne	r10, #0
	bne	.L3
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
	movs	r2, #1
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
	b	.L1
.L3:
	mov	r2, r10
	mov	r1, r9
	mov	r0, r4
	bl	tc_hmac_update(PLT)
	mov	fp, #1
	b	.L5
.L12:
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
	mov	r2, r10
	mov	r1, r9
	mov	r0, r4
	bl	tc_hmac_update(PLT)
	b	.L7
.L13:
	bl	__stack_chk_fail(PLT)
.L15:
	.align	2
.L14:
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
	cmp	r1, #0
	it	ne
	cmpne	r0, #0
	bne	.L23
	movs	r0, #0
	bx	lr
.L23:
	push	{r4, r5, r6, r7, lr}
	sub	sp, sp, #12
	mov	r4, r2
	mov	r5, r0
	mov	r7, r1
	movs	r2, #32
	movs	r1, #0
	adds	r0, r0, #240
	bl	_set(PLT)
	movs	r2, #32
	movs	r1, #1
	add	r0, r5, #272
	bl	_set(PLT)
	movs	r6, #0
	str	r6, [sp]
	mov	r3, r6
	mov	r2, r4
	mov	r1, r7
	mov	r0, r5
	bl	update(PLT)
	str	r6, [r5, #304]
	movs	r0, #1
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
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
	push	{r4, r5, lr}
	sub	sp, sp, #12
	cmp	r1, #0
	it	ne
	cmpne	r2, #31
	ite	ls
	movls	r4, #1
	movhi	r4, #0
	cmp	r0, #0
	it	eq
	orreq	r4, r4, #1
	cbz	r4, .L31
	movs	r0, #0
.L24:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, pc}
.L31:
	mov	ip, r1
	mov	r5, r0
	cbz	r3, .L26
	ldr	r1, [sp, #24]
	movs	r0, #0
	cmp	r1, #0
	beq	.L24
	str	r1, [sp]
	mov	r1, ip
	mov	r0, r5
	bl	update(PLT)
.L27:
	mov	r3, #-1
	str	r3, [r5, #304]
	movs	r0, #1
	b	.L24
.L26:
	movs	r3, #0
	str	r3, [sp]
	bl	update(PLT)
	b	.L27
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
	cmp	r2, #0
	it	ne
	cmpne	r0, #0
	beq	.L35
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	sub	sp, sp, #8
	mov	r4, r1
	mov	r9, r0
	mov	r8, r2
	subs	r3, r1, #1
	cmp	r3, #524288
	it	cs
	movcs	r0, #0
	bcs	.L32
	ldr	r3, [r2, #304]
	mov	r0, #-1
	cbz	r3, .L32
	subs	r3, r3, #1
	str	r3, [r2, #304]
	add	r10, r2, #240
	movs	r7, #32
	add	r6, r2, #272
.L34:
	mov	r2, r7
	mov	r1, r10
	mov	r0, r8
	bl	tc_hmac_set_key(PLT)
	mov	r0, r8
	bl	tc_hmac_init(PLT)
	mov	r2, r7
	mov	r1, r6
	mov	r0, r8
	bl	tc_hmac_update(PLT)
	mov	r2, r8
	mov	r1, r7
	mov	r0, r6
	bl	tc_hmac_final(PLT)
	mov	r5, r4
	cmp	r4, #32
	it	cs
	movcs	r5, #32
	mov	r3, r5
	mov	r2, r6
	mov	r1, r5
	mov	r0, r9
	bl	_copy(PLT)
	add	r9, r9, r5
	cmp	r4, #32
	it	cc
	movcc	r4, #32
	subs	r4, r4, #32
	bne	.L34
	movs	r1, #0
	str	r1, [sp]
	mov	r3, r1
	mov	r2, r1
	mov	r0, r8
	bl	update(PLT)
	movs	r0, #1
.L32:
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L35:
	movs	r0, #0
	bx	lr
	.size	tc_hmac_prng_generate, .-tc_hmac_prng_generate
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
