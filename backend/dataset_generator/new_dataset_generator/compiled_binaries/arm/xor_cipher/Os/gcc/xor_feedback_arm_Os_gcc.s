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
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r7, r3
	ldr	r3, [sp, #32]
	mov	r6, r1
	mov	r8, r2
	cbz	r3, .L5
	ldrb	r9, [r3]	@ zero_extendqisi2
.L2:
	subs	r4, r0, #1
	movs	r5, #0
.L3:
	cmp	r5, r6
	bne	.L4
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L5:
	mov	r9, r3
	b	.L2
.L4:
	mov	r0, r5
	mov	r1, r7
	ldrb	r10, [r4, #1]!	@ zero_extendqisi2
	bl	__aeabi_uidivmod(PLT)
	ldrb	r0, [r8, r1]	@ zero_extendqisi2
	adds	r5, r5, #1
	eor	r0, r10, r0
	eor	r0, r9, r0
	mov	r9, r10
	strb	r0, [r4]
	b	.L3
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
	push	{r0, r1, r2, r4, r5, r6, r7, lr}
	mov	r6, r3
	ldr	r7, [sp, #36]
	mov	r4, r1
	mov	r5, r2
	mov	r2, r1
	mov	r1, r0
	mov	r0, r7
	bl	memcpy(PLT)
	add	r3, sp, #32
	mov	r2, r5
	str	r3, [sp]
	mov	r1, r4
	mov	r3, r6
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
	mov	r8, r0
	mov	r7, r1
	ldrb	r6, [sp, #40]	@ zero_extendqisi2
	mov	r10, r2
	mov	r9, r3
	movs	r4, #0
.L8:
	cmp	r4, r7
	bne	.L9
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L9:
	mov	r0, r4
	mov	r1, r9
	ldrb	fp, [r8, r4]	@ zero_extendqisi2
	bl	__aeabi_uidivmod(PLT)
	ldr	r3, [sp, #44]
	ldrb	r5, [r10, r1]	@ zero_extendqisi2
	eor	r5, fp, r5
	eors	r5, r5, r6
	mov	r6, fp
	strb	r5, [r3, r4]
	adds	r4, r4, #1
	b	.L8
	.size	xor_decrypt_feedback, .-xor_decrypt_feedback
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
