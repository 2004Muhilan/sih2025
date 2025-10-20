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
	.file	"rc4_standard.c"
	.text
	.global	__aeabi_uidivmod
	.align	1
	.global	rc4_init
	.syntax unified
	.thumb
	.thumb_func
	.type	rc4_init, %function
rc4_init:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #36
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #24]
	b	.L2
.L3:
	ldr	r3, [r7, #24]
	uxtb	r1, r3
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #24]
	add	r3, r3, r2
	mov	r2, r1
	strb	r2, [r3]
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	str	r3, [r7, #24]
.L2:
	ldr	r3, [r7, #24]
	cmp	r3, #255
	ble	.L3
	movs	r3, #0
	strb	r3, [r7, #22]
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L4
.L5:
	ldrb	r3, [r7, #22]	@ zero_extendqisi2
	ldr	r1, [r7, #12]
	ldr	r2, [r7, #28]
	add	r2, r2, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	adds	r4, r3, r2
	ldr	r3, [r7, #28]
	ldr	r1, [r7, #4]
	mov	r0, r3
	bl	__aeabi_uidivmod(PLT)
	mov	r3, r1
	mov	r2, r3
	ldr	r3, [r7, #8]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	add	r3, r3, r4
	rsbs	r2, r3, #0
	uxtb	r3, r3
	uxtb	r2, r2
	it	pl
	rsbpl	r3, r2, #0
	strb	r3, [r7, #22]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #23]
	ldrb	r3, [r7, #22]	@ zero_extendqisi2
	ldr	r2, [r7, #12]
	ldrb	r1, [r2, r3]	@ zero_extendqisi2
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	mov	r2, r1
	strb	r2, [r3]
	ldrb	r3, [r7, #22]	@ zero_extendqisi2
	ldr	r2, [r7, #12]
	ldrb	r1, [r7, #23]
	strb	r1, [r2, r3]
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L4:
	ldr	r3, [r7, #28]
	cmp	r3, #255
	ble	.L5
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #256]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #257]
	nop
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	rc4_init, .-rc4_init
	.align	1
	.global	rc4_crypt
	.syntax unified
	.thumb
	.thumb_func
	.type	rc4_crypt, %function
rc4_crypt:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L7
.L8:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #256]	@ zero_extendqisi2
	adds	r3, r3, #1
	rsbs	r2, r3, #0
	uxtb	r3, r3
	uxtb	r2, r2
	it	pl
	rsbpl	r3, r2, #0
	uxtb	r2, r3
	ldr	r3, [r7, #12]
	strb	r2, [r3, #256]
	ldr	r3, [r7, #12]
	ldrb	r2, [r3, #257]	@ zero_extendqisi2
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #256]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, r1]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r2, r3
	ldr	r3, [r7, #12]
	strb	r2, [r3, #257]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #256]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, r2]
	strb	r3, [r7, #18]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #257]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #256]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #12]
	ldrb	r1, [r3, r1]	@ zero_extendqisi2
	ldr	r3, [r7, #12]
	strb	r1, [r3, r2]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #257]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r3, [r7, #12]
	ldrb	r2, [r7, #18]
	strb	r2, [r3, r1]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #256]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #12]
	ldrb	r2, [r3, r2]	@ zero_extendqisi2
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #257]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, r1]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, r2]
	strb	r3, [r7, #19]
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	ldrb	r2, [r7, #19]
	eors	r2, r2, r1
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L7:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bcc	.L8
	nop
	nop
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	rc4_crypt, .-rc4_crypt
	.align	1
	.global	rc4_encrypt
	.syntax unified
	.thumb
	.thumb_func
	.type	rc4_encrypt, %function
rc4_encrypt:
	@ args = 4, pretend = 0, frame = 288
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #292
	add	r7, sp, #0
	add	r4, r7, #288
	sub	r4, r4, #268
	str	r0, [r4]
	add	r0, r7, #288
	sub	r0, r0, #272
	str	r1, [r0]
	add	r1, r7, #288
	sub	r1, r1, #276
	str	r2, [r1]
	add	r2, r7, #288
	sub	r2, r2, #280
	str	r3, [r2]
	add	r3, r7, #288
	sub	r3, r3, #284
	ldr	r2, [r7, #304]
	str	r2, [r3]
	ldr	r2, .L11
.LPIC0:
	add	r2, pc
	ldr	r3, .L11+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [r7, #284]
	mov	r3, #0
	add	r3, r7, #288
	sub	r2, r3, #272
	add	r3, r7, #288
	sub	r3, r3, #268
	add	r0, r7, #24
	ldr	r2, [r2]
	ldr	r1, [r3]
	bl	rc4_init(PLT)
	add	r3, r7, #288
	sub	r2, r3, #280
	add	r3, r7, #288
	sub	r1, r3, #276
	add	r3, r7, #288
	sub	r3, r3, #284
	ldr	r2, [r2]
	ldr	r1, [r1]
	ldr	r0, [r3]
	bl	memcpy(PLT)
	add	r3, r7, #288
	sub	r2, r3, #280
	add	r3, r7, #288
	sub	r3, r3, #284
	add	r0, r7, #24
	ldr	r2, [r2]
	ldr	r1, [r3]
	bl	rc4_crypt(PLT)
	nop
	ldr	r2, .L11+8
.LPIC1:
	add	r2, pc
	ldr	r3, .L11+4
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #284]
	eors	r2, r3, r2
	mov	r3, #0
	beq	.L10
	bl	__stack_chk_fail(PLT)
.L10:
	add	r7, r7, #292
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L12:
	.align	2
.L11:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC1+4)
	.size	rc4_encrypt, .-rc4_encrypt
	.align	1
	.global	rc4_decrypt
	.syntax unified
	.thumb
	.thumb_func
	.type	rc4_decrypt, %function
rc4_decrypt:
	@ args = 4, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #24]
	str	r3, [sp]
	ldr	r3, [r7]
	ldr	r2, [r7, #4]
	ldr	r1, [r7, #8]
	ldr	r0, [r7, #12]
	bl	rc4_encrypt(PLT)
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	rc4_decrypt, .-rc4_decrypt
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
