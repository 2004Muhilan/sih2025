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
	.file	"xor_feedback.c"
	.text
	.global	__aeabi_uidivmod
	.align	1
	.p2align 2,,3
	.global	xor_cipher_feedback
	.syntax unified
	.thumb
	.thumb_func
	.type	xor_cipher_feedback, %function
xor_cipher_feedback:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, lr}
	mov	r7, r2
	ldr	r4, [sp, #32]
	mov	r8, r3
	mov	r9, r4
	cbz	r4, .L2
	ldrb	r9, [r4]	@ zero_extendqisi2
.L2:
	cbz	r1, .L1
	subs	r4, r0, #1
	rsb	r6, r0, #1
	adds	r5, r4, r1
.L4:
	adds	r0, r6, r4
	mov	r1, r8
	bl	__aeabi_uidivmod(PLT)
	mov	r0, r9
	ldrb	ip, [r7, r1]	@ zero_extendqisi2
	ldrb	r9, [r4, #1]!	@ zero_extendqisi2
	eor	ip, ip, r9
	cmp	r5, r4
	eor	r0, r0, ip
	strb	r0, [r4]
	bne	.L4
.L1:
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
	.size	xor_cipher_feedback, .-xor_cipher_feedback
	.align	1
	.p2align 2,,3
	.global	xor_encrypt_feedback
	.syntax unified
	.thumb
	.thumb_func
	.type	xor_encrypt_feedback, %function
xor_encrypt_feedback:
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, lr}
	mov	r5, r1
	ldr	r6, [sp, #36]
	mov	r1, r0
	mov	r7, r2
	mov	r0, r6
	mov	r2, r5
	ldrb	r9, [sp, #32]	@ zero_extendqisi2
	mov	r8, r3
	bl	memcpy(PLT)
	cbz	r5, .L12
	subs	r5, r5, #1
	subs	r4, r6, #1
	add	r5, r5, r6
	rsb	r6, r6, #1
.L14:
	adds	r0, r6, r4
	mov	r1, r8
	bl	__aeabi_uidivmod(PLT)
	mov	ip, r9
	ldrb	lr, [r7, r1]	@ zero_extendqisi2
	ldrb	r9, [r4, #1]!	@ zero_extendqisi2
	eor	lr, lr, r9
	cmp	r4, r5
	eor	ip, ip, lr
	strb	ip, [r4]
	bne	.L14
.L12:
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
	.size	xor_encrypt_feedback, .-xor_encrypt_feedback
	.align	1
	.p2align 2,,3
	.global	xor_decrypt_feedback
	.syntax unified
	.thumb
	.thumb_func
	.type	xor_decrypt_feedback, %function
xor_decrypt_feedback:
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r6, [sp, #44]
	ldrb	r9, [sp, #40]	@ zero_extendqisi2
	cbz	r1, .L20
	subs	r4, r6, #1
	mov	r7, r2
	mov	r8, r3
	add	r10, r0, #-1
	adds	r5, r4, r1
	rsb	r6, r6, #1
.L22:
	adds	r0, r6, r4
	mov	r1, r8
	bl	__aeabi_uidivmod(PLT)
	mov	fp, r9
	ldrb	r0, [r7, r1]	@ zero_extendqisi2
	ldrb	r9, [r10, #1]!	@ zero_extendqisi2
	eor	r0, r9, r0
	eor	r0, r0, fp
	strb	r0, [r4, #1]!
	cmp	r4, r5
	bne	.L22
.L20:
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.size	xor_decrypt_feedback, .-xor_decrypt_feedback
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
