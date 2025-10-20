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
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	movs	r3, #0
	mov	r4, r0
	mov	r9, r1
	mov	r8, r2
.L2:
	strb	r3, [r4, r3]
	adds	r3, r3, #1
	cmp	r3, #256
	bne	.L2
	movs	r6, #0
	subs	r7, r4, #1
	mov	r5, r6
.L3:
	ldrb	r10, [r7, #1]!	@ zero_extendqisi2
	mov	r0, r6
	mov	r1, r8
	adds	r6, r6, #1
	bl	__aeabi_uidivmod(PLT)
	ldrb	r3, [r9, r1]	@ zero_extendqisi2
	add	r5, r5, r10
	cmp	r6, #256
	add	r3, r3, r5
	uxtb	r5, r3
	ldrb	r3, [r4, r5]	@ zero_extendqisi2
	strb	r3, [r7]
	strb	r10, [r4, r5]
	bne	.L3
	movs	r3, #0
	strb	r3, [r4, #256]
	strb	r3, [r4, #257]
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
	.size	rc4_init, .-rc4_init
	.align	1
	.global	rc4_crypt
	.syntax unified
	.thumb
	.thumb_func
	.type	rc4_crypt, %function
rc4_crypt:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	add	r2, r2, r1
	push	{r4, r5, r6, lr}
.L7:
	cmp	r1, r2
	bne	.L8
	pop	{r4, r5, r6, pc}
.L8:
	ldrb	r3, [r0, #256]	@ zero_extendqisi2
	ldrb	r4, [r0, #257]	@ zero_extendqisi2
	adds	r3, r3, #1
	strb	r3, [r0, #256]
	uxtb	r5, r3
	ldrb	r3, [r0, r5]	@ zero_extendqisi2
	add	r4, r4, r3
	uxtb	r4, r4
	strb	r4, [r0, #257]
	ldrb	r6, [r0, r4]	@ zero_extendqisi2
	strb	r6, [r0, r5]
	strb	r3, [r0, r4]
	ldrb	r5, [r0, r5]	@ zero_extendqisi2
	ldrb	r4, [r1]	@ zero_extendqisi2
	add	r3, r3, r5
	uxtb	r3, r3
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	eors	r3, r3, r4
	strb	r3, [r1], #1
	b	.L7
	.size	rc4_crypt, .-rc4_crypt
	.align	1
	.global	rc4_encrypt
	.syntax unified
	.thumb
	.thumb_func
	.type	rc4_encrypt, %function
rc4_encrypt:
	@ args = 4, pretend = 0, frame = 264
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r6, r2
	ldr	r2, .L11
	mov	r5, r3
	ldr	r3, .L11+4
	sub	sp, sp, #268
.LPIC0:
	add	r2, pc
	mov	r4, sp
	ldr	r3, [r2, r3]
	mov	r2, r1
	ldr	r7, [sp, #288]
	mov	r1, r0
	mov	r0, r4
	ldr	r3, [r3]
	str	r3, [sp, #260]
	mov	r3, #0
	bl	rc4_init(PLT)
	mov	r2, r5
	mov	r1, r6
	mov	r0, r7
	bl	memcpy(PLT)
	mov	r2, r5
	mov	r1, r7
	mov	r0, r4
	bl	rc4_crypt(PLT)
	ldr	r2, .L11+8
	ldr	r3, .L11+4
.LPIC1:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #260]
	eors	r2, r3, r2
	mov	r3, #0
	beq	.L10
	bl	__stack_chk_fail(PLT)
.L10:
	add	sp, sp, #268
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
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
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	rc4_encrypt(PLT)
	.size	rc4_decrypt, .-rc4_decrypt
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
