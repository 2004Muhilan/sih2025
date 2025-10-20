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
	.file	"xor_feedback.c"
	.text
	.global	__aeabi_uidivmod
	.align	1
	.global	xor_cipher_feedback
	.syntax unified
	.thumb
	.thumb_func
	.type	xor_cipher_feedback, %function
xor_cipher_feedback:
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	beq	.L2
	ldr	r3, [r7, #32]
	ldrb	r3, [r3]	@ zero_extendqisi2
	b	.L3
.L2:
	movs	r3, #0
.L3:
	strb	r3, [r7, #17]
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L4
.L5:
	ldr	r3, [r7, #20]
	ldr	r1, [r7]
	mov	r0, r3
	bl	__aeabi_uidivmod(PLT)
	mov	r3, r1
	mov	r2, r3
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldrb	r3, [r7, #17]
	eors	r3, r3, r2
	strb	r3, [r7, #18]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	ldrb	r2, [r7, #18]
	eors	r2, r2, r1
	uxtb	r2, r2
	strb	r2, [r3]
	ldrb	r3, [r7, #19]
	strb	r3, [r7, #17]
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L4:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcc	.L5
	nop
	nop
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	xor_cipher_feedback, .-xor_cipher_feedback
	.align	1
	.global	xor_encrypt_feedback
	.syntax unified
	.thumb
	.thumb_func
	.type	xor_encrypt_feedback, %function
xor_encrypt_feedback:
	@ args = 8, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r2, [r7, #8]
	ldr	r1, [r7, #12]
	ldr	r0, [r7, #28]
	bl	memcpy(PLT)
	add	r3, r7, #24
	str	r3, [sp]
	ldr	r3, [r7]
	ldr	r2, [r7, #4]
	ldr	r1, [r7, #8]
	ldr	r0, [r7, #28]
	bl	xor_cipher_feedback(PLT)
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	xor_encrypt_feedback, .-xor_encrypt_feedback
	.align	1
	.global	xor_decrypt_feedback
	.syntax unified
	.thumb
	.thumb_func
	.type	xor_decrypt_feedback, %function
xor_decrypt_feedback:
	@ args = 8, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldrb	r3, [r7, #32]
	strb	r3, [r7, #18]
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L8
.L9:
	ldr	r3, [r7, #20]
	ldr	r1, [r7]
	mov	r0, r3
	bl	__aeabi_uidivmod(PLT)
	mov	r3, r1
	mov	r2, r3
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldrb	r3, [r7, #18]
	eors	r3, r3, r2
	strb	r3, [r7, #19]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #18]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	ldrb	r2, [r7, #19]
	eors	r2, r2, r1
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L8:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcc	.L9
	nop
	nop
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	xor_decrypt_feedback, .-xor_decrypt_feedback
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
