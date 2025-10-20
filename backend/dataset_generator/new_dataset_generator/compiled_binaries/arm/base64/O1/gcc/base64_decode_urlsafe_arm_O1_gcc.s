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
	cmp	r0, #90
	bhi	.L2
	cmp	r0, #64
	bhi	.L3
	cmp	r0, #45
	beq	.L5
	sub	r3, r0, #48
	uxtb	r3, r3
	cmp	r3, #9
	bhi	.L6
	adds	r0, r0, #4
	bx	lr
.L2:
	cmp	r0, #95
	beq	.L7
	sub	r3, r0, #97
	uxtb	r3, r3
	cmp	r3, #25
	bhi	.L8
	subs	r0, r0, #71
	bx	lr
.L3:
	subs	r0, r0, #65
	bx	lr
.L5:
	movs	r0, #62
	bx	lr
.L6:
	mov	r0, #-1
	bx	lr
.L7:
	movs	r0, #63
	bx	lr
.L8:
	mov	r0, #-1
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
	push	{r3, r4, r5, lr}
	mov	r4, r0
	ldrb	r0, [r0]	@ zero_extendqisi2
	cbz	r0, .L9
	subs	r5, r1, #1
.L11:
	bl	base64_url_char_value(PLT)
	strb	r0, [r5, #1]!
	ldrb	r0, [r4, #1]!	@ zero_extendqisi2
	cmp	r0, #0
	bne	.L11
.L9:
	pop	{r3, r4, r5, pc}
	.size	base64_decode_urlsafe, .-base64_decode_urlsafe
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
