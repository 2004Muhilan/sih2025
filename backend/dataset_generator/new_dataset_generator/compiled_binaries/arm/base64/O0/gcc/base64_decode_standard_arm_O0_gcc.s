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
	.file	"base64_decode_standard.c"
	.text
	.align	1
	.global	base64_char_value
	.syntax unified
	.thumb
	.thumb_func
	.type	base64_char_value, %function
base64_char_value:
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
	cmp	r3, #43
	bne	.L6
	movs	r3, #62
	b	.L3
.L6:
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #47
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
	.size	base64_char_value, .-base64_char_value
	.align	1
	.global	base64_decode_standard
	.syntax unified
	.thumb
	.thumb_func
	.type	base64_decode_standard, %function
base64_decode_standard:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #36
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L9
.L13:
	movs	r3, #0
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L10
.L11:
	ldr	r3, [r7, #24]
	lsls	r4, r3, #6
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	base64_char_value(PLT)
	mov	r3, r0
	orrs	r3, r3, r4
	str	r3, [r7, #24]
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L10:
	ldr	r3, [r7, #28]
	cmp	r3, #3
	ble	.L11
	ldr	r3, [r7, #24]
	lsrs	r0, r3, #16
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	adds	r1, r3, #1
	ldr	r2, [r7, #4]
	str	r1, [r2]
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	uxtb	r2, r0
	strb	r2, [r3]
	ldr	r3, [r7, #24]
	lsrs	r0, r3, #8
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	adds	r1, r3, #1
	ldr	r2, [r7, #4]
	str	r1, [r2]
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	uxtb	r2, r0
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	adds	r1, r3, #1
	ldr	r2, [r7, #4]
	str	r1, [r2]
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r2, [r7, #24]
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #20]
	adds	r3, r3, #4
	str	r3, [r7, #20]
.L9:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L14
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #61
	bne	.L13
.L14:
	nop
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	base64_decode_standard, .-base64_decode_standard
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
