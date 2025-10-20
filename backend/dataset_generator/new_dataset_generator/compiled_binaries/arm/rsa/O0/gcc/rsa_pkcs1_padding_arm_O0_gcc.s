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
	.file	"rsa_pkcs1_padding.c"
	.text
	.align	1
	.global	rsa_pkcs1_pad
	.syntax unified
	.thumb
	.thumb_func
	.type	rsa_pkcs1_pad, %function
rsa_pkcs1_pad:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	movs	r2, #2
	strb	r2, [r3]
	movs	r3, #2
	str	r3, [r7, #20]
	b	.L2
.L3:
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	movs	r2, #255
	strb	r2, [r3]
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L2:
	ldr	r2, [r7]
	ldr	r3, [r7, #8]
	subs	r3, r2, r3
	subs	r3, r3, #1
	ldr	r2, [r7, #20]
	cmp	r2, r3
	bcc	.L3
	ldr	r2, [r7]
	ldr	r3, [r7, #8]
	subs	r3, r2, r3
	subs	r3, r3, #1
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3]
	ldr	r2, [r7]
	ldr	r3, [r7, #8]
	subs	r3, r2, r3
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldr	r2, [r7, #8]
	ldr	r1, [r7, #12]
	mov	r0, r3
	bl	memcpy(PLT)
	nop
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	rsa_pkcs1_pad, .-rsa_pkcs1_pad
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
