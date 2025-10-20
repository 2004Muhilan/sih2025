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
	mov	r7, r0
	mov	r8, r1
	mov	r9, r2
	subs	r5, r0, #1
	mov	r2, r5
	movs	r3, #0
.L2:
	strb	r3, [r2, #1]!
	adds	r3, r3, #1
	cmp	r3, #256
	bne	.L2
	movs	r4, #0
	mov	r10, r4
.L3:
	ldrb	r6, [r5, #1]!	@ zero_extendqisi2
	mov	r1, r9
	mov	r0, r4
	bl	__aeabi_uidivmod(PLT)
	ldrb	r3, [r8, r1]	@ zero_extendqisi2
	add	r10, r10, r6
	add	r3, r3, r10
	rsbs	r2, r3, #0
	uxtb	r3, r3
	uxtb	r2, r2
	it	pl
	rsbpl	r3, r2, #0
	uxtb	r10, r3
	ldrb	r2, [r7, r3]	@ zero_extendqisi2
	strb	r2, [r5]
	strb	r6, [r7, r3]
	adds	r4, r4, #1
	cmp	r4, #256
	bne	.L3
	movs	r3, #0
	strb	r3, [r7, #256]
	strb	r3, [r7, #257]
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
	cbz	r2, .L12
	push	{r4, lr}
	mov	lr, r2
	add	ip, r1, #-1
	add	lr, lr, ip
.L9:
	ldrb	r3, [r0, #256]	@ zero_extendqisi2
	adds	r3, r3, #1
	rsbs	r2, r3, #0
	uxtb	r3, r3
	uxtb	r2, r2
	it	pl
	rsbpl	r3, r2, #0
	strb	r3, [r0, #256]
	ldrb	r2, [r0, r3]	@ zero_extendqisi2
	ldrb	r1, [r0, #257]	@ zero_extendqisi2
	add	r1, r1, r2
	uxtb	r1, r1
	strb	r1, [r0, #257]
	ldrb	r4, [r0, r1]	@ zero_extendqisi2
	strb	r4, [r0, r3]
	strb	r2, [r0, r1]
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	add	r2, r2, r3
	uxtb	r2, r2
	ldrb	r3, [r0, r2]	@ zero_extendqisi2
	ldrb	r2, [ip, #1]!	@ zero_extendqisi2
	eors	r3, r3, r2
	strb	r3, [ip]
	cmp	ip, lr
	bne	.L9
	pop	{r4, pc}
.L12:
	bx	lr
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
	sub	sp, sp, #268
	mov	r6, r2
	mov	r5, r3
	ldr	r7, [sp, #288]
	ldr	r2, .L19
.LPIC0:
	add	r2, pc
	ldr	r3, .L19+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [sp, #260]
	mov	r3, #0
	mov	r2, r1
	mov	r1, r0
	mov	r4, sp
	mov	r0, r4
	bl	rc4_init(PLT)
	mov	r2, r5
	mov	r1, r6
	mov	r0, r7
	bl	memcpy(PLT)
	mov	r2, r5
	mov	r1, r7
	mov	r0, r4
	bl	rc4_crypt(PLT)
	ldr	r2, .L19+8
.LPIC1:
	add	r2, pc
	ldr	r3, .L19+4
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #260]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L18
	add	sp, sp, #268
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L18:
	bl	__stack_chk_fail(PLT)
.L20:
	.align	2
.L19:
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
	push	{r4, lr}
	sub	sp, sp, #8
	ldr	r4, [sp, #16]
	str	r4, [sp]
	bl	rc4_encrypt(PLT)
	add	sp, sp, #8
	@ sp needed
	pop	{r4, pc}
	.size	rc4_decrypt, .-rc4_decrypt
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
