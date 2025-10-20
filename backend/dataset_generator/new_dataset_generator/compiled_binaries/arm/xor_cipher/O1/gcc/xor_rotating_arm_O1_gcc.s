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
	.file	"xor_rotating.c"
	.text
	.global	__aeabi_uidivmod
	.align	1
	.global	xor_cipher_rotating
	.syntax unified
	.thumb
	.thumb_func
	.type	xor_cipher_rotating, %function
xor_cipher_rotating:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cbz	r1, .L6
	push	{r4, r5, r6, r7, r8, lr}
	mov	r5, r2
	mov	r7, r3
	mov	r8, r1
	subs	r4, r0, #1
	add	r8, r8, r4
	rsb	r6, r0, #1
.L3:
	mov	r1, r7
	adds	r0, r6, r4
	bl	__aeabi_uidivmod(PLT)
	ldrb	r3, [r5, r1]	@ zero_extendqisi2
	ldrb	r2, [r4, #1]!	@ zero_extendqisi2
	eors	r2, r2, r3
	strb	r2, [r4]
	lsrs	r0, r3, #7
	orr	r0, r0, r3, lsl #1
	strb	r0, [r5, r1]
	cmp	r4, r8
	bne	.L3
	pop	{r4, r5, r6, r7, r8, pc}
.L6:
	bx	lr
	.size	xor_cipher_rotating, .-xor_cipher_rotating
	.align	1
	.global	xor_encrypt_rotating
	.syntax unified
	.thumb
	.thumb_func
	.type	xor_encrypt_rotating, %function
xor_encrypt_rotating:
	@ args = 4, pretend = 0, frame = 264
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	sub	sp, sp, #268
	mov	r4, r1
	mov	r5, r2
	mov	r6, r3
	ldr	r7, [sp, #288]
	ldr	r2, .L13
.LPIC0:
	add	r2, pc
	ldr	r3, .L13+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [sp, #260]
	mov	r3, #0
	mov	r2, r1
	mov	r1, r0
	mov	r0, r7
	bl	memcpy(PLT)
	mov	r3, #256
	mov	r2, r6
	mov	r1, r5
	add	r5, sp, #4
	mov	r0, r5
	bl	__memcpy_chk(PLT)
	mov	r3, r6
	mov	r2, r5
	mov	r1, r4
	mov	r0, r7
	bl	xor_cipher_rotating(PLT)
	ldr	r2, .L13+8
.LPIC1:
	add	r2, pc
	ldr	r3, .L13+4
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #260]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L12
	add	sp, sp, #268
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L12:
	bl	__stack_chk_fail(PLT)
.L14:
	.align	2
.L13:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC1+4)
	.size	xor_encrypt_rotating, .-xor_encrypt_rotating
	.align	1
	.global	xor_decrypt_rotating
	.syntax unified
	.thumb
	.thumb_func
	.type	xor_decrypt_rotating, %function
xor_decrypt_rotating:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	sub	sp, sp, #8
	ldr	r4, [sp, #16]
	str	r4, [sp]
	bl	xor_encrypt_rotating(PLT)
	add	sp, sp, #8
	@ sp needed
	pop	{r4, pc}
	.size	xor_decrypt_rotating, .-xor_decrypt_rotating
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
