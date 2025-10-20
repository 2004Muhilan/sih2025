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
	.file	"base64_decode_urlsafe.c"
	.text
	.align	1
	.global	base64_url_char_value
	.syntax unified
	.thumb
	.thumb_func
	.type	base64_url_char_value, %function
base64_url_char_value:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #64
	bls	.L2
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #90
	bhi	.L2
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	subs	r3, r3, #65
	b	.L3
.L2:
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #96
	bls	.L4
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #122
	bhi	.L4
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	subs	r3, r3, #71
	b	.L3
.L4:
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #47
	bls	.L5
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #57
	bhi	.L5
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	adds	r3, r3, #4
	b	.L3
.L5:
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #45
	bne	.L6
	movs	r3, #62
	b	.L3
.L6:
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #95
	bne	.L7
	movs	r3, #63
	b	.L3
.L7:
	mov	r3, #-1
.L3:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	base64_url_char_value, .-base64_url_char_value
	.align	1
	.global	base64_decode_urlsafe
	.syntax unified
	.thumb
	.thumb_func
	.type	base64_decode_urlsafe, %function
base64_decode_urlsafe:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L9
.L10:
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	base64_url_char_value(PLT)
	mov	r1, r0
	ldr	r2, [r7]
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	uxtb	r2, r1
	strb	r2, [r3]
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L9:
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L10
	nop
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	base64_decode_urlsafe, .-base64_decode_urlsafe
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
