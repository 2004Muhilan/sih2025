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
	.file	"xor_simple.c"
	.text
	.global	__aeabi_uidivmod
	.align	1
	.p2align 2,,3
	.global	xor_cipher_simple
	.syntax unified
	.thumb
	.thumb_func
	.type	xor_cipher_simple, %function
xor_cipher_simple:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cbz	r1, .L9
	add	r1, r1, r0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r7, r2
	mov	r8, r3
	subs	r4, r0, #1
	subs	r5, r1, #1
	rsb	r6, r0, #1
.L3:
	adds	r0, r6, r4
	mov	r1, r8
	bl	__aeabi_uidivmod(PLT)
	ldrb	ip, [r4, #1]!	@ zero_extendqisi2
	ldrb	r0, [r7, r1]	@ zero_extendqisi2
	cmp	r4, r5
	eor	r0, r0, ip
	strb	r0, [r4]
	bne	.L3
	pop	{r4, r5, r6, r7, r8, pc}
.L9:
	bx	lr
	.size	xor_cipher_simple, .-xor_cipher_simple
	.align	1
	.p2align 2,,3
	.global	xor_encrypt_simple
	.syntax unified
	.thumb
	.thumb_func
	.type	xor_encrypt_simple, %function
xor_encrypt_simple:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r5, r1
	ldr	r6, [sp, #24]
	mov	r1, r0
	mov	r7, r2
	mov	r0, r6
	mov	r2, r5
	mov	r8, r3
	bl	memcpy(PLT)
	cbz	r5, .L13
	subs	r5, r5, #1
	subs	r4, r6, #1
	add	r5, r5, r6
	rsb	r6, r6, #1
.L15:
	adds	r0, r6, r4
	mov	r1, r8
	bl	__aeabi_uidivmod(PLT)
	ldrb	lr, [r4, #1]!	@ zero_extendqisi2
	ldrb	ip, [r7, r1]	@ zero_extendqisi2
	cmp	r4, r5
	eor	ip, ip, lr
	strb	ip, [r4]
	bne	.L15
.L13:
	pop	{r4, r5, r6, r7, r8, pc}
	.size	xor_encrypt_simple, .-xor_encrypt_simple
	.align	1
	.p2align 2,,3
	.global	xor_decrypt_simple
	.syntax unified
	.thumb
	.thumb_func
	.type	xor_decrypt_simple, %function
xor_decrypt_simple:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r5, r1
	ldr	r6, [sp, #24]
	mov	r1, r0
	mov	r7, r2
	mov	r0, r6
	mov	r2, r5
	mov	r8, r3
	bl	memcpy(PLT)
	cbz	r5, .L21
	subs	r4, r6, #1
	rsb	r6, r6, #1
	add	r5, r5, r4
.L23:
	adds	r0, r6, r4
	mov	r1, r8
	bl	__aeabi_uidivmod(PLT)
	ldrb	lr, [r4, #1]!	@ zero_extendqisi2
	ldrb	ip, [r7, r1]	@ zero_extendqisi2
	cmp	r4, r5
	eor	ip, ip, lr
	strb	ip, [r4]
	bne	.L23
.L21:
	pop	{r4, r5, r6, r7, r8, pc}
	.size	xor_decrypt_simple, .-xor_decrypt_simple
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
