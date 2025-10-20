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
	.file	"xor_simple.c"
	.text
	.global	__aeabi_uidivmod
	.align	1
	.global	xor_cipher_simple
	.syntax unified
	.thumb
	.thumb_func
	.type	xor_cipher_simple, %function
xor_cipher_simple:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cbz	r1, .L6
	push	{r4, r5, r6, r7, r8, lr}
	mov	r7, r2
	mov	r8, r3
	mov	r6, r1
	subs	r4, r0, #1
	add	r6, r6, r0
	subs	r6, r6, #1
	rsb	r5, r0, #1
.L3:
	mov	r1, r8
	adds	r0, r5, r4
	bl	__aeabi_uidivmod(PLT)
	ldrb	r0, [r7, r1]	@ zero_extendqisi2
	ldrb	ip, [r4, #1]!	@ zero_extendqisi2
	eor	r0, r0, ip
	strb	r0, [r4]
	cmp	r4, r6
	bne	.L3
	pop	{r4, r5, r6, r7, r8, pc}
.L6:
	bx	lr
	.size	xor_cipher_simple, .-xor_cipher_simple
	.align	1
	.global	xor_encrypt_simple
	.syntax unified
	.thumb
	.thumb_func
	.type	xor_encrypt_simple, %function
xor_encrypt_simple:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	mov	r4, r1
	mov	r5, r2
	mov	r6, r3
	ldr	r7, [sp, #24]
	mov	r2, r1
	mov	r1, r0
	mov	r0, r7
	bl	memcpy(PLT)
	mov	r3, r6
	mov	r2, r5
	mov	r1, r4
	mov	r0, r7
	bl	xor_cipher_simple(PLT)
	pop	{r3, r4, r5, r6, r7, pc}
	.size	xor_encrypt_simple, .-xor_encrypt_simple
	.align	1
	.global	xor_decrypt_simple
	.syntax unified
	.thumb
	.thumb_func
	.type	xor_decrypt_simple, %function
xor_decrypt_simple:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	mov	r4, r1
	mov	r5, r2
	mov	r6, r3
	ldr	r7, [sp, #24]
	mov	r2, r1
	mov	r1, r0
	mov	r0, r7
	bl	memcpy(PLT)
	mov	r3, r6
	mov	r2, r5
	mov	r1, r4
	mov	r0, r7
	bl	xor_cipher_simple(PLT)
	pop	{r3, r4, r5, r6, r7, pc}
	.size	xor_decrypt_simple, .-xor_decrypt_simple
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
