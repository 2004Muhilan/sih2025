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
	.file	"base64_decode_standard.c"
	.text
	.align	1
	.global	base64_char_value
	.syntax unified
	.thumb
	.thumb_func
	.type	base64_char_value, %function
base64_char_value:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	r3, r0, #65
	uxtb	r2, r3
	cmp	r2, #25
	bhi	.L2
	mov	r0, r3
	bx	lr
.L2:
	sub	r3, r0, #97
	cmp	r3, #25
	bhi	.L4
	subs	r0, r0, #71
	bx	lr
.L4:
	sub	r3, r0, #48
	cmp	r3, #9
	bhi	.L5
	adds	r0, r0, #4
	bx	lr
.L5:
	cmp	r0, #43
	beq	.L6
	cmp	r0, #47
	ite	eq
	moveq	r0, #63
	movne	r0, #-1
	bx	lr
.L6:
	movs	r0, #62
	bx	lr
	.size	base64_char_value, .-base64_char_value
	.align	1
	.global	base64_decode_standard
	.syntax unified
	.thumb
	.thumb_func
	.type	base64_decode_standard, %function
base64_decode_standard:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	mov	r5, r2
	mov	r4, r0
	movs	r3, #0
	str	r3, [r2]
.L9:
	ldrb	r3, [r4]	@ zero_extendqisi2
	cbz	r3, .L8
	cmp	r3, #61
	bne	.L13
.L8:
	pop	{r3, r4, r5, r6, r7, pc}
.L13:
	movs	r0, #0
	adds	r7, r4, #4
.L10:
	lsls	r6, r0, #6
	ldrb	r0, [r4], #1	@ zero_extendqisi2
	bl	base64_char_value(PLT)
	orrs	r0, r0, r6
	cmp	r4, r7
	bne	.L10
	ldr	r3, [r5]
	adds	r2, r3, #1
	str	r2, [r5]
	lsrs	r2, r0, #16
	strb	r2, [r1, r3]
	ldr	r3, [r5]
	adds	r2, r3, #1
	str	r2, [r5]
	lsrs	r2, r0, #8
	strb	r2, [r1, r3]
	ldr	r3, [r5]
	adds	r2, r3, #1
	str	r2, [r5]
	strb	r0, [r1, r3]
	b	.L9
	.size	base64_decode_standard, .-base64_decode_standard
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
