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
	push	{r4, r5, r6, r7, r8, lr}
	mov	r6, r1
	mov	r7, r2
	mov	r8, r3
	subs	r4, r0, #1
	movs	r5, #0
.L2:
	cmp	r5, r6
	bne	.L3
	pop	{r4, r5, r6, r7, r8, pc}
.L3:
	mov	r0, r5
	mov	r1, r8
	bl	__aeabi_uidivmod(PLT)
	ldrb	r2, [r4, #1]!	@ zero_extendqisi2
	ldrb	r3, [r7, r1]	@ zero_extendqisi2
	adds	r5, r5, #1
	eors	r3, r3, r2
	strb	r3, [r4]
	b	.L2
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
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, r1
	ldr	r7, [sp, #24]
	mov	r5, r2
	mov	r6, r3
	mov	r2, r1
	mov	r1, r0
	mov	r0, r7
	bl	memcpy(PLT)
	mov	r3, r6
	mov	r2, r5
	mov	r1, r4
	mov	r0, r7
	pop	{r4, r5, r6, r7, r8, lr}
	b	xor_cipher_simple(PLT)
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
	@ link register save eliminated.
	b	xor_encrypt_simple(PLT)
	.size	xor_decrypt_simple, .-xor_decrypt_simple
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
