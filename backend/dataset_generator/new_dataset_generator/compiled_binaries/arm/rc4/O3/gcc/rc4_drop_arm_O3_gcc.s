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
	.file	"rc4_drop.c"
	.text
	.global	__aeabi_uidivmod
	.align	1
	.p2align 2,,3
	.global	rc4_drop_init
	.syntax unified
	.thumb
	.thumb_func
	.type	rc4_drop_init, %function
rc4_drop_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r10, r0, #-1
	mov	r9, r3
	mov	r6, r0
	mov	r7, r1
	mov	r8, r2
	mov	r3, r10
	movs	r4, #0
.L2:
	strb	r4, [r3, #1]!
	adds	r4, r4, #1
	cmp	r4, #256
	bne	.L2
	movs	r5, #0
	mov	r4, r5
.L3:
	ldrb	fp, [r10, #1]!	@ zero_extendqisi2
	mov	r0, r5
	mov	r1, r8
	adds	r5, r5, #1
	bl	__aeabi_uidivmod(PLT)
	ldrb	r3, [r7, r1]	@ zero_extendqisi2
	add	r4, r4, fp
	cmp	r5, #256
	add	r3, r3, r4
	uxtb	r4, r3
	ldrb	r3, [r6, r4]	@ zero_extendqisi2
	strb	r3, [r10]
	strb	fp, [r6, r4]
	bne	.L3
	movs	r3, #0
	strh	r3, [r6, #256]	@ unaligned
	cmp	r9, #0
	beq	.L1
	mov	r1, r3
.L5:
	adds	r2, r1, #1
	mov	r1, r2
	and	r2, r2, #255
	cmp	r9, r1
	ldrb	r0, [r6, r2]	@ zero_extendqisi2
	add	r3, r3, r0
	uxtb	r3, r3
	ldrb	r4, [r6, r3]	@ zero_extendqisi2
	strb	r4, [r6, r2]
	strb	r0, [r6, r3]
	bne	.L5
	strb	r9, [r6, #256]
	strb	r3, [r6, #257]
	strb	r4, [r6, r2]
	strb	r0, [r6, r3]
.L1:
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.size	rc4_drop_init, .-rc4_drop_init
	.align	1
	.p2align 2,,3
	.global	rc4_drop_crypt
	.syntax unified
	.thumb
	.thumb_func
	.type	rc4_drop_crypt, %function
rc4_drop_crypt:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cbz	r2, .L22
	add	ip, r1, #-1
	push	{r4, lr}
	add	lr, ip, r2
.L16:
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
	bne	.L16
	pop	{r4, pc}
.L22:
	bx	lr
	.size	rc4_drop_crypt, .-rc4_drop_crypt
	.align	1
	.p2align 2,,3
	.global	rc4_drop_encrypt
	.syntax unified
	.thumb
	.thumb_func
	.type	rc4_drop_encrypt, %function
rc4_drop_encrypt:
	@ args = 4, pretend = 0, frame = 272
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r10, r3
	ldr	r3, .L41
	sub	sp, sp, #276
	mov	r6, r0
	mov	r7, r1
	add	fp, sp, #8
	add	r1, sp, #7
	addw	r0, sp, #263
	str	r2, [sp]
	ldr	r2, .L41+4
	ldr	r4, [sp, #312]
.LPIC1:
	add	r2, pc
	str	r4, [sp, #4]
	ldr	r3, [r2, r3]
	movs	r2, #0
	ldr	r3, [r3]
	str	r3, [sp, #268]
	mov	r3, #0
.L26:
	strb	r2, [r1, #1]!
	adds	r2, r2, #1
	cmp	r1, r0
	bne	.L26
	add	r8, fp, #256
	mov	r5, fp
	movs	r4, #0
.L27:
	ldrb	r9, [r5], #1	@ zero_extendqisi2
	mov	r1, r7
	sub	r0, r5, fp
	add	r4, r4, r9
	subs	r0, r0, #1
	bl	__aeabi_uidivmod(PLT)
	ldrb	r1, [r6, r1]	@ zero_extendqisi2
	cmp	r5, r8
	add	r4, r4, r1
	uxtb	r4, r4
	ldrb	r1, [fp, r4]	@ zero_extendqisi2
	strb	r1, [r5, #-1]
	strb	r9, [fp, r4]
	bne	.L27
	movs	r1, #0
	mov	r4, r1
.L28:
	adds	r2, r1, #1
	mov	r1, r2
	and	r2, r2, #255
	cmp	r1, #768
	ldrb	r0, [fp, r2]	@ zero_extendqisi2
	add	r4, r4, r0
	uxtb	r4, r4
	ldrb	r5, [fp, r4]	@ zero_extendqisi2
	strb	r5, [fp, r2]
	strb	r0, [fp, r4]
	bne	.L28
	ldr	r5, [sp, #4]
	mov	r2, r10
	ldr	r1, [sp]
	mov	r0, r5
	bl	memcpy(PLT)
	cmp	r10, #0
	beq	.L25
	add	r9, r5, #-1
	movs	r0, #0
.L30:
	adds	r1, r0, #1
	ldrb	r5, [r9, #1]!	@ zero_extendqisi2
	and	r1, r1, #255
	adds	r0, r0, #1
	cmp	r10, r0
	ldrb	r2, [fp, r1]	@ zero_extendqisi2
	add	r4, r4, r2
	uxtb	r4, r4
	ldrb	r6, [fp, r4]	@ zero_extendqisi2
	strb	r6, [fp, r1]
	strb	r2, [fp, r4]
	ldrb	r1, [fp, r1]	@ zero_extendqisi2
	add	r2, r2, r1
	uxtb	r2, r2
	ldrb	r2, [fp, r2]	@ zero_extendqisi2
	eor	r2, r2, r5
	strb	r2, [r9]
	bne	.L30
.L25:
	ldr	r2, .L41+8
	ldr	r3, .L41
.LPIC0:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #268]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L40
	add	sp, sp, #276
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L40:
	bl	__stack_chk_fail(PLT)
.L42:
	.align	2
.L41:
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC1+4)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+4)
	.size	rc4_drop_encrypt, .-rc4_drop_encrypt
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
