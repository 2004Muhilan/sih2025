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
	.file	"rc4_drop.c"
	.text
	.global	__aeabi_uidivmod
	.align	1
	.global	rc4_drop_init
	.syntax unified
	.thumb
	.thumb_func
	.type	rc4_drop_init, %function
rc4_drop_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, r0
	mov	r9, r1
	mov	r10, r2
	mov	r7, r3
	movs	r0, #0
.L2:
	strb	r0, [r4, r0]
	adds	r0, r0, #1
	cmp	r0, #256
	bne	.L2
	movs	r6, #0
	add	r8, r4, #-1
	mov	r5, r6
.L3:
	ldrb	fp, [r8, #1]!	@ zero_extendqisi2
	mov	r0, r6
	mov	r1, r10
	adds	r6, r6, #1
	bl	__aeabi_uidivmod(PLT)
	ldrb	r3, [r9, r1]	@ zero_extendqisi2
	add	r5, r5, fp
	cmp	r6, #256
	add	r5, r5, r3
	uxtb	r5, r5
	ldrb	r3, [r4, r5]	@ zero_extendqisi2
	strb	r3, [r8]
	strb	fp, [r4, r5]
	bne	.L3
	movs	r2, #0
	strb	r2, [r4, #256]
	strb	r2, [r4, #257]
.L4:
	cmp	r2, r7
	bne	.L5
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L5:
	ldrb	r3, [r4, #256]	@ zero_extendqisi2
	adds	r2, r2, #1
	ldrb	r1, [r4, #257]	@ zero_extendqisi2
	adds	r3, r3, #1
	strb	r3, [r4, #256]
	uxtb	r0, r3
	ldrb	r3, [r4, r0]	@ zero_extendqisi2
	add	r1, r1, r3
	uxtb	r1, r1
	strb	r1, [r4, #257]
	ldrb	r5, [r4, r1]	@ zero_extendqisi2
	strb	r5, [r4, r0]
	strb	r3, [r4, r1]
	b	.L4
	.size	rc4_drop_init, .-rc4_drop_init
	.align	1
	.global	rc4_drop_crypt
	.syntax unified
	.thumb
	.thumb_func
	.type	rc4_drop_crypt, %function
rc4_drop_crypt:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	add	r2, r2, r1
	push	{r4, r5, r6, lr}
.L9:
	cmp	r1, r2
	bne	.L10
	pop	{r4, r5, r6, pc}
.L10:
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
	b	.L9
	.size	rc4_drop_crypt, .-rc4_drop_crypt
	.align	1
	.global	rc4_drop_encrypt
	.syntax unified
	.thumb
	.thumb_func
	.type	rc4_drop_encrypt, %function
rc4_drop_encrypt:
	@ args = 4, pretend = 0, frame = 264
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r6, r2
	ldr	r2, .L13
	mov	r5, r3
	ldr	r3, .L13+4
.LPIC0:
	add	r2, pc
	sub	sp, sp, #268
	mov	r4, sp
	ldr	r3, [r2, r3]
	mov	r2, r1
	ldr	r7, [sp, #288]
	mov	r1, r0
	ldr	r3, [r3]
	str	r3, [sp, #260]
	mov	r3, #0
	mov	r0, r4
	mov	r3, #768
	bl	rc4_drop_init(PLT)
	mov	r2, r5
	mov	r1, r6
	mov	r0, r7
	bl	memcpy(PLT)
	mov	r2, r5
	mov	r1, r7
	mov	r0, r4
	bl	rc4_drop_crypt(PLT)
	ldr	r2, .L13+8
	ldr	r3, .L13+4
.LPIC1:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #260]
	eors	r2, r3, r2
	mov	r3, #0
	beq	.L12
	bl	__stack_chk_fail(PLT)
.L12:
	add	sp, sp, #268
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L14:
	.align	2
.L13:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC1+4)
	.size	rc4_drop_encrypt, .-rc4_drop_encrypt
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
