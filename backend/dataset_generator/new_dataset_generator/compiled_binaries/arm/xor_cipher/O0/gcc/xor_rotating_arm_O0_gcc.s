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
	.file	"xor_rotating.c"
	.text
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	rotate_left, %function
rotate_left:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	str	r1, [r7]
	strb	r3, [r7, #7]
	ldrb	r2, [r7, #7]	@ zero_extendqisi2
	ldr	r3, [r7]
	lsl	r3, r2, r3
	sxtb	r2, r3
	ldrb	r1, [r7, #7]	@ zero_extendqisi2
	ldr	r3, [r7]
	rsb	r3, r3, #8
	asr	r3, r1, r3
	sxtb	r3, r3
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	rotate_left, .-rotate_left
	.global	__aeabi_uidivmod
	.align	1
	.global	xor_cipher_rotating
	.syntax unified
	.thumb
	.thumb_func
	.type	xor_cipher_rotating, %function
xor_cipher_rotating:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
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
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	ldrb	r2, [r7, #19]
	eors	r2, r2, r1
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #20]
	ldr	r1, [r7]
	mov	r0, r3
	bl	__aeabi_uidivmod(PLT)
	mov	r3, r1
	mov	r2, r3
	ldr	r3, [r7, #4]
	adds	r4, r3, r2
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	movs	r1, #1
	mov	r0, r3
	bl	rotate_left(PLT)
	mov	r3, r0
	strb	r3, [r4]
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
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	xor_cipher_rotating, .-xor_cipher_rotating
	.align	1
	.global	xor_encrypt_rotating
	.syntax unified
	.thumb
	.thumb_func
	.type	xor_encrypt_rotating, %function
xor_encrypt_rotating:
	@ args = 4, pretend = 0, frame = 288
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #292
	add	r7, sp, #0
	add	r4, r7, #288
	sub	r4, r4, #268
	str	r0, [r4]
	add	r0, r7, #288
	sub	r0, r0, #272
	str	r1, [r0]
	add	r1, r7, #288
	sub	r1, r1, #276
	str	r2, [r1]
	add	r2, r7, #288
	sub	r2, r2, #280
	str	r3, [r2]
	add	r3, r7, #288
	sub	r3, r3, #284
	ldr	r2, [r7, #304]
	str	r2, [r3]
	ldr	r2, .L8
.LPIC0:
	add	r2, pc
	ldr	r3, .L8+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [r7, #284]
	mov	r3, #0
	add	r3, r7, #288
	sub	r2, r3, #272
	add	r3, r7, #288
	sub	r1, r3, #268
	add	r3, r7, #288
	sub	r3, r3, #284
	ldr	r2, [r2]
	ldr	r1, [r1]
	ldr	r0, [r3]
	bl	memcpy(PLT)
	add	r3, r7, #288
	sub	r2, r3, #280
	add	r3, r7, #288
	sub	r3, r3, #276
	add	r0, r7, #28
	ldr	r2, [r2]
	ldr	r1, [r3]
	bl	memcpy(PLT)
	add	r3, r7, #288
	sub	r3, r3, #280
	add	r2, r7, #28
	add	r1, r7, #288
	sub	r1, r1, #272
	add	r0, r7, #288
	sub	r0, r0, #284
	ldr	r3, [r3]
	ldr	r1, [r1]
	ldr	r0, [r0]
	bl	xor_cipher_rotating(PLT)
	nop
	ldr	r2, .L8+8
.LPIC1:
	add	r2, pc
	ldr	r3, .L8+4
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #284]
	eors	r2, r3, r2
	mov	r3, #0
	beq	.L7
	bl	__stack_chk_fail(PLT)
.L7:
	add	r7, r7, #292
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L9:
	.align	2
.L8:
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
	@ args = 4, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #24]
	str	r3, [sp]
	ldr	r3, [r7]
	ldr	r2, [r7, #4]
	ldr	r1, [r7, #8]
	ldr	r0, [r7, #12]
	bl	xor_encrypt_rotating(PLT)
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	xor_decrypt_rotating, .-xor_decrypt_rotating
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
