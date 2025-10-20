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
	.file	"xor_rotating.c"
	.text
	.global	__aeabi_uidivmod
	.align	1
	.p2align 2,,3
	.global	xor_cipher_rotating
	.syntax unified
	.thumb
	.thumb_func
	.type	xor_cipher_rotating, %function
xor_cipher_rotating:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cbz	r1, .L9
	push	{r4, r5, r6, r7, r8, lr}
	subs	r4, r0, #1
	mov	r8, r2
	mov	r7, r3
	rsb	r6, r0, #1
	adds	r5, r4, r1
.L3:
	adds	r0, r6, r4
	mov	r1, r7
	bl	__aeabi_uidivmod(PLT)
	ldrb	r3, [r8, r1]	@ zero_extendqisi2
	ldrb	r2, [r4, #1]!	@ zero_extendqisi2
	lsrs	r0, r3, #7
	eors	r2, r2, r3
	orr	r0, r0, r3, lsl #1
	strb	r2, [r4]
	cmp	r4, r5
	strb	r0, [r8, r1]
	bne	.L3
	pop	{r4, r5, r6, r7, r8, pc}
.L9:
	bx	lr
	.size	xor_cipher_rotating, .-xor_cipher_rotating
	.align	1
	.p2align 2,,3
	.global	xor_encrypt_rotating
	.syntax unified
	.thumb
	.thumb_func
	.type	xor_encrypt_rotating, %function
xor_encrypt_rotating:
	@ args = 4, pretend = 0, frame = 264
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, r2
	ldr	r2, .L23
	sub	sp, sp, #264
	mov	r8, r3
	ldr	r3, .L23+4
.LPIC1:
	add	r2, pc
	mov	r6, r1
	add	r5, sp, #4
	ldr	r7, [sp, #288]
	mov	r1, r0
	ldr	r3, [r2, r3]
	mov	r0, r7
	mov	r2, r6
	ldr	r3, [r3]
	str	r3, [sp, #260]
	mov	r3, #0
	bl	memcpy(PLT)
	mov	r1, r4
	mov	r3, #256
	mov	r2, r8
	mov	r0, r5
	bl	__memcpy_chk(PLT)
	cbz	r6, .L13
	subs	r6, r6, #1
	subs	r4, r7, #1
	add	r6, r6, r7
	rsb	r7, r7, #1
.L15:
	adds	r0, r7, r4
	mov	r1, r8
	bl	__aeabi_uidivmod(PLT)
	ldrb	r3, [r5, r1]	@ zero_extendqisi2
	ldrb	r2, [r4, #1]!	@ zero_extendqisi2
	lsr	ip, r3, #7
	eors	r2, r2, r3
	orr	ip, ip, r3, lsl #1
	cmp	r4, r6
	strb	r2, [r4]
	strb	ip, [r5, r1]
	bne	.L15
.L13:
	ldr	r2, .L23+8
	ldr	r3, .L23+4
.LPIC0:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #260]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L22
	add	sp, sp, #264
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L22:
	bl	__stack_chk_fail(PLT)
.L24:
	.align	2
.L23:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC1+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+4)
	.size	xor_encrypt_rotating, .-xor_encrypt_rotating
	.align	1
	.p2align 2,,3
	.global	xor_decrypt_rotating
	.syntax unified
	.thumb
	.thumb_func
	.type	xor_decrypt_rotating, %function
xor_decrypt_rotating:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	xor_encrypt_rotating(PLT)
	.size	xor_decrypt_rotating, .-xor_decrypt_rotating
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
