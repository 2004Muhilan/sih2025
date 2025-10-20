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
	.file	"tinycrypt_hmac_prng.c"
	.text
	.section	.rodata
	.align	2
	.type	MIN_SLEN, %object
	.size	MIN_SLEN, 4
MIN_SLEN:
	.word	32
	.align	2
	.type	MAX_SLEN, %object
	.size	MAX_SLEN, 4
MAX_SLEN:
	.word	-1
	.align	2
	.type	MAX_PLEN, %object
	.size	MAX_PLEN, 4
MAX_PLEN:
	.word	-1
	.align	2
	.type	MAX_ALEN, %object
	.size	MAX_ALEN, 4
MAX_ALEN:
	.word	-1
	.align	2
	.type	MAX_GENS, %object
	.size	MAX_GENS, 4
MAX_GENS:
	.word	-1
	.align	2
	.type	MAX_OUT, %object
	.size	MAX_OUT, 4
MAX_OUT:
	.word	524288
	.text
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	update, %function
update:
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r2, .L10
.LPIC0:
	add	r2, pc
	ldr	r3, .L10+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [r7, #20]
	mov	r3, #0
	movs	r3, #0
	strb	r3, [r7, #18]
	movs	r3, #1
	strb	r3, [r7, #19]
	ldr	r0, [r7, #12]
	ldr	r3, [r7, #12]
	adds	r3, r3, #240
	movs	r2, #32
	mov	r1, r3
	bl	tc_hmac_set_key(PLT)
	ldr	r3, [r7, #12]
	mov	r0, r3
	bl	tc_hmac_init(PLT)
	ldr	r0, [r7, #12]
	ldr	r3, [r7, #12]
	add	r3, r3, #272
	movs	r2, #32
	mov	r1, r3
	bl	tc_hmac_update(PLT)
	ldr	r3, [r7, #12]
	add	r1, r7, #18
	movs	r2, #1
	mov	r0, r3
	bl	tc_hmac_update(PLT)
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L2
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L2
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	ldr	r1, [r7, #8]
	mov	r0, r3
	bl	tc_hmac_update(PLT)
.L2:
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L3
	ldr	r3, [r7, #32]
	cmp	r3, #0
	beq	.L3
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #32]
	ldr	r1, [r7]
	mov	r0, r3
	bl	tc_hmac_update(PLT)
.L3:
	ldr	r3, [r7, #12]
	adds	r3, r3, #240
	ldr	r2, [r7, #12]
	movs	r1, #32
	mov	r0, r3
	bl	tc_hmac_final(PLT)
	ldr	r0, [r7, #12]
	ldr	r3, [r7, #12]
	adds	r3, r3, #240
	movs	r2, #32
	mov	r1, r3
	bl	tc_hmac_set_key(PLT)
	ldr	r3, [r7, #12]
	mov	r0, r3
	bl	tc_hmac_init(PLT)
	ldr	r0, [r7, #12]
	ldr	r3, [r7, #12]
	add	r3, r3, #272
	movs	r2, #32
	mov	r1, r3
	bl	tc_hmac_update(PLT)
	ldr	r3, [r7, #12]
	add	r3, r3, #272
	ldr	r2, [r7, #12]
	movs	r1, #32
	mov	r0, r3
	bl	tc_hmac_final(PLT)
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L9
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L9
	ldr	r0, [r7, #12]
	ldr	r3, [r7, #12]
	adds	r3, r3, #240
	movs	r2, #32
	mov	r1, r3
	bl	tc_hmac_set_key(PLT)
	ldr	r3, [r7, #12]
	mov	r0, r3
	bl	tc_hmac_init(PLT)
	ldr	r0, [r7, #12]
	ldr	r3, [r7, #12]
	add	r3, r3, #272
	movs	r2, #32
	mov	r1, r3
	bl	tc_hmac_update(PLT)
	ldr	r3, [r7, #12]
	add	r1, r7, #19
	movs	r2, #1
	mov	r0, r3
	bl	tc_hmac_update(PLT)
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	ldr	r1, [r7, #8]
	mov	r0, r3
	bl	tc_hmac_update(PLT)
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L7
	ldr	r3, [r7, #32]
	cmp	r3, #0
	beq	.L7
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #32]
	ldr	r1, [r7]
	mov	r0, r3
	bl	tc_hmac_update(PLT)
.L7:
	ldr	r3, [r7, #12]
	adds	r3, r3, #240
	ldr	r2, [r7, #12]
	movs	r1, #32
	mov	r0, r3
	bl	tc_hmac_final(PLT)
	ldr	r0, [r7, #12]
	ldr	r3, [r7, #12]
	adds	r3, r3, #240
	movs	r2, #32
	mov	r1, r3
	bl	tc_hmac_set_key(PLT)
	ldr	r3, [r7, #12]
	mov	r0, r3
	bl	tc_hmac_init(PLT)
	ldr	r0, [r7, #12]
	ldr	r3, [r7, #12]
	add	r3, r3, #272
	movs	r2, #32
	mov	r1, r3
	bl	tc_hmac_update(PLT)
	ldr	r3, [r7, #12]
	add	r3, r3, #272
	ldr	r2, [r7, #12]
	movs	r1, #32
	mov	r0, r3
	bl	tc_hmac_final(PLT)
	b	.L1
.L9:
	nop
.L1:
	ldr	r2, .L10+8
.LPIC1:
	add	r2, pc
	ldr	r3, .L10+4
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #20]
	eors	r2, r3, r2
	mov	r3, #0
	beq	.L8
	bl	__stack_chk_fail(PLT)
.L8:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L11:
	.align	2
.L10:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC1+4)
	.size	update, .-update
	.align	1
	.global	tc_hmac_prng_init
	.syntax unified
	.thumb
	.thumb_func
	.type	tc_hmac_prng_init, %function
tc_hmac_prng_init:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L13
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L13
	mov	r2, #-1
	ldr	r3, [r7, #4]
	cmp	r3, r2
	bls	.L14
.L13:
	movs	r3, #0
	b	.L15
.L14:
	ldr	r3, [r7, #12]
	adds	r3, r3, #240
	movs	r2, #32
	movs	r1, #0
	mov	r0, r3
	bl	_set(PLT)
	ldr	r3, [r7, #12]
	add	r3, r3, #272
	movs	r2, #32
	movs	r1, #1
	mov	r0, r3
	bl	_set(PLT)
	movs	r3, #0
	str	r3, [sp]
	movs	r3, #0
	ldr	r2, [r7, #4]
	ldr	r1, [r7, #8]
	ldr	r0, [r7, #12]
	bl	update(PLT)
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #304]
	movs	r3, #1
.L15:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	tc_hmac_prng_init, .-tc_hmac_prng_init
	.align	1
	.global	tc_hmac_prng_reseed
	.syntax unified
	.thumb
	.thumb_func
	.type	tc_hmac_prng_reseed, %function
tc_hmac_prng_reseed:
	@ args = 4, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L17
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L17
	movs	r2, #32
	ldr	r3, [r7, #4]
	cmp	r3, r2
	bcc	.L17
	mov	r2, #-1
	ldr	r3, [r7, #4]
	cmp	r3, r2
	bls	.L18
.L17:
	movs	r3, #0
	b	.L19
.L18:
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L20
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L21
	mov	r2, #-1
	ldr	r3, [r7, #24]
	cmp	r3, r2
	bls	.L22
.L21:
	movs	r3, #0
	b	.L19
.L22:
	ldr	r3, [r7, #24]
	str	r3, [sp]
	ldr	r3, [r7]
	ldr	r2, [r7, #4]
	ldr	r1, [r7, #8]
	ldr	r0, [r7, #12]
	bl	update(PLT)
	b	.L23
.L20:
	movs	r3, #0
	str	r3, [sp]
	movs	r3, #0
	ldr	r2, [r7, #4]
	ldr	r1, [r7, #8]
	ldr	r0, [r7, #12]
	bl	update(PLT)
.L23:
	mov	r2, #-1
	ldr	r3, [r7, #12]
	str	r2, [r3, #304]
	movs	r3, #1
.L19:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	tc_hmac_prng_reseed, .-tc_hmac_prng_reseed
	.align	1
	.global	tc_hmac_prng_generate
	.syntax unified
	.thumb
	.thumb_func
	.type	tc_hmac_prng_generate, %function
tc_hmac_prng_generate:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L25
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L25
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L25
	mov	r2, #524288
	ldr	r3, [r7, #8]
	cmp	r3, r2
	bls	.L26
.L25:
	movs	r3, #0
	b	.L27
.L26:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #304]
	cmp	r3, #0
	bne	.L28
	mov	r3, #-1
	b	.L27
.L28:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #304]
	subs	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #304]
	b	.L29
.L30:
	ldr	r0, [r7, #4]
	ldr	r3, [r7, #4]
	adds	r3, r3, #240
	movs	r2, #32
	mov	r1, r3
	bl	tc_hmac_set_key(PLT)
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	tc_hmac_init(PLT)
	ldr	r0, [r7, #4]
	ldr	r3, [r7, #4]
	add	r3, r3, #272
	movs	r2, #32
	mov	r1, r3
	bl	tc_hmac_update(PLT)
	ldr	r3, [r7, #4]
	add	r3, r3, #272
	ldr	r2, [r7, #4]
	movs	r1, #32
	mov	r0, r3
	bl	tc_hmac_final(PLT)
	ldr	r3, [r7, #8]
	cmp	r3, #32
	it	cs
	movcs	r3, #32
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	add	r2, r3, #272
	ldr	r3, [r7, #20]
	ldr	r1, [r7, #20]
	ldr	r0, [r7, #12]
	bl	_copy(PLT)
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #8]
	cmp	r3, #32
	it	cc
	movcc	r3, #32
	subs	r3, r3, #32
	str	r3, [r7, #8]
.L29:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L30
	movs	r3, #0
	str	r3, [sp]
	movs	r3, #0
	movs	r2, #0
	movs	r1, #0
	ldr	r0, [r7, #4]
	bl	update(PLT)
	movs	r3, #1
.L27:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	tc_hmac_prng_generate, .-tc_hmac_prng_generate
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
