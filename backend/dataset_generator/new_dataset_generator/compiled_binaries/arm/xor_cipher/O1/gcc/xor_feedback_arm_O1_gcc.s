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
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, lr}
	mov	r8, r2
	mov	r9, r3
	ldr	r3, [sp, #32]
	movs	r5, #0
	cbz	r3, .L2
	ldrb	r5, [r3]	@ zero_extendqisi2
.L2:
	cbz	r1, .L1
	subs	r4, r0, #1
	adds	r6, r4, r1
	rsb	r7, r0, #1
.L4:
	mov	r1, r9
	adds	r0, r7, r4
	bl	__aeabi_uidivmod(PLT)
	ldrb	r3, [r8, r1]	@ zero_extendqisi2
	mov	r0, r5
	ldrb	r5, [r4, #1]!	@ zero_extendqisi2
	eors	r3, r3, r5
	eors	r0, r0, r3
	strb	r0, [r4]
	cmp	r4, r6
	bne	.L4
.L1:
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
	.size	xor_cipher_feedback, .-xor_cipher_feedback
	.align	1
	.global	xor_encrypt_feedback
	.syntax unified
	.thumb
	.thumb_func
	.type	xor_encrypt_feedback, %function
xor_encrypt_feedback:
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	sub	sp, sp, #12
	mov	r4, r1
	mov	r5, r2
	mov	r6, r3
	ldr	r7, [sp, #36]
	mov	r2, r1
	mov	r1, r0
	mov	r0, r7
	bl	memcpy(PLT)
	add	r3, sp, #32
	str	r3, [sp]
	mov	r3, r6
	mov	r2, r5
	mov	r1, r4
	mov	r0, r7
	bl	xor_cipher_feedback(PLT)
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
	.size	xor_encrypt_feedback, .-xor_encrypt_feedback
	.align	1
	.global	xor_decrypt_feedback
	.syntax unified
	.thumb
	.thumb_func
	.type	xor_decrypt_feedback, %function
xor_decrypt_feedback:
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldrb	r5, [sp, #40]	@ zero_extendqisi2
	ldr	r7, [sp, #44]
	cbz	r1, .L10
	mov	r8, r2
	mov	r9, r3
	mov	r10, r1
	subs	r6, r0, #1
	subs	r4, r7, #1
	add	r10, r10, r4
	rsb	r7, r7, #1
.L12:
	mov	fp, r5
	ldrb	r5, [r6, #1]!	@ zero_extendqisi2
	mov	r1, r9
	adds	r0, r7, r4
	bl	__aeabi_uidivmod(PLT)
	ldrb	r0, [r8, r1]	@ zero_extendqisi2
	eors	r0, r0, r5
	eor	r0, r0, fp
	strb	r0, [r4, #1]!
	cmp	r4, r10
	bne	.L12
.L10:
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.size	xor_decrypt_feedback, .-xor_decrypt_feedback
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
