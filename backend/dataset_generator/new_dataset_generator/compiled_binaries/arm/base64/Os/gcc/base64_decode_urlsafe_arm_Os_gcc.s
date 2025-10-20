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
	.file	"base64_decode_urlsafe.c"
	.text
	.align	1
	.global	base64_url_char_value
	.syntax unified
	.thumb
	.thumb_func
	.type	base64_url_char_value, %function
base64_url_char_value:
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
	cmp	r0, #45
	beq	.L6
	cmp	r0, #95
	ite	eq
	moveq	r0, #63
	movne	r0, #-1
	bx	lr
.L6:
	movs	r0, #62
	bx	lr
	.size	base64_url_char_value, .-base64_url_char_value
	.align	1
	.global	base64_decode_urlsafe
	.syntax unified
	.thumb
	.thumb_func
	.type	base64_decode_urlsafe, %function
base64_decode_urlsafe:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	subs	r1, r1, #1
	subs	r4, r0, #1
.L9:
	ldrb	r0, [r4, #1]!	@ zero_extendqisi2
	cbnz	r0, .L10
	pop	{r4, pc}
.L10:
	bl	base64_url_char_value(PLT)
	strb	r0, [r1, #1]!
	b	.L9
	.size	base64_decode_urlsafe, .-base64_decode_urlsafe
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
