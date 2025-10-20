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
	.file	"rc4_standard.c"
	.text
	.global	__aeabi_uidivmod
	.align	1
	.p2align 2,,3
	.global	rc4_init
	.syntax unified
	.thumb
	.thumb_func
	.type	rc4_init, %function
rc4_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	add	r9, r0, #-1
	mov	r7, r2
	mov	r8, r0
	mov	r6, r1
	mov	r2, r9
	movs	r3, #0
.L2:
	strb	r3, [r2, #1]!
	adds	r3, r3, #1
	cmp	r3, #256
	bne	.L2
	movs	r5, #0
	mov	r4, r5
.L3:
	ldrb	r10, [r9, #1]!	@ zero_extendqisi2
	mov	r0, r5
	mov	r1, r7
	adds	r5, r5, #1
	bl	__aeabi_uidivmod(PLT)
	ldrb	r3, [r6, r1]	@ zero_extendqisi2
	add	r4, r4, r10
	cmp	r5, #256
	add	r3, r3, r4
	uxtb	r4, r3
	ldrb	r3, [r8, r4]	@ zero_extendqisi2
	strb	r3, [r9]
	strb	r10, [r8, r4]
	bne	.L3
	movs	r3, #0
	strh	r3, [r8, #256]	@ unaligned
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
	.size	rc4_init, .-rc4_init
	.align	1
	.p2align 2,,3
	.global	rc4_crypt
	.syntax unified
	.thumb
	.thumb_func
	.type	rc4_crypt, %function
rc4_crypt:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cbz	r2, .L16
	add	ip, r1, #-1
	push	{r4, lr}
	add	lr, ip, r2
.L10:
	ldrb	r3, [r0, #256]	@ zero_extendqisi2
	ldrb	r1, [r0, #257]	@ zero_extendqisi2
	adds	r3, r3, #1
	strb	r3, [r0, #256]
	uxtb	r3, r3
	ldrb	r2, [r0, r3]	@ zero_extendqisi2
	add	r1, r1, r2
	uxtb	r1, r1
	strb	r1, [r0, #257]
	ldrb	r4, [r0, r1]	@ zero_extendqisi2
	strb	r4, [r0, r3]
	strb	r2, [r0, r1]
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	ldrb	r1, [ip, #1]!	@ zero_extendqisi2
	add	r2, r2, r3
	cmp	lr, ip
	uxtb	r2, r2
	ldrb	r3, [r0, r2]	@ zero_extendqisi2
	eor	r3, r3, r1
	strb	r3, [ip]
	bne	.L10
	pop	{r4, pc}
.L16:
	bx	lr
	.size	rc4_crypt, .-rc4_crypt
	.align	1
	.p2align 2,,3
	.global	rc4_encrypt
	.syntax unified
	.thumb
	.thumb_func
	.type	rc4_encrypt, %function
rc4_encrypt:
	@ args = 4, pretend = 0, frame = 264
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r5, r2
	mov	r2, r1
	mov	r1, r0
	ldr	r0, .L23
	mov	r4, r3
	ldr	r3, .L23+4
	sub	sp, sp, #268
.LPIC0:
	add	r0, pc
	mov	r6, sp
	ldr	r3, [r0, r3]
	mov	r0, r6
	ldr	r7, [sp, #288]
	ldr	r3, [r3]
	str	r3, [sp, #260]
	mov	r3, #0
	bl	rc4_init(PLT)
	mov	r2, r4
	mov	r1, r5
	mov	r0, r7
	bl	memcpy(PLT)
	mov	r2, r4
	mov	r1, r7
	mov	r0, r6
	bl	rc4_crypt(PLT)
	ldr	r2, .L23+8
	ldr	r3, .L23+4
.LPIC1:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #260]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L22
	add	sp, sp, #268
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L22:
	bl	__stack_chk_fail(PLT)
.L24:
	.align	2
.L23:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC1+4)
	.size	rc4_encrypt, .-rc4_encrypt
	.align	1
	.p2align 2,,3
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
