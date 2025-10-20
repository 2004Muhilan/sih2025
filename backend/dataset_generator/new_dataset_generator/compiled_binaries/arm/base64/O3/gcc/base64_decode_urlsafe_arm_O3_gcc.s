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
	.file	"base64_decode_urlsafe.c"
	.text
	.align	1
	.p2align 2,,3
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
	cmp	r3, #9
	bhi	.L8
	adds	r0, r0, #4
	bx	lr
.L2:
	cmp	r0, #95
	beq	.L7
	sub	r3, r0, #97
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
.L7:
	movs	r0, #63
	bx	lr
.L8:
	mov	r0, #-1
	bx	lr
	.size	base64_url_char_value, .-base64_url_char_value
	.align	1
	.p2align 2,,3
	.global	base64_decode_urlsafe
	.syntax unified
	.thumb
	.thumb_func
	.type	base64_decode_urlsafe, %function
base64_decode_urlsafe:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r0]	@ zero_extendqisi2
	cbz	r3, .L10
	subs	r1, r1, #1
	b	.L15
.L22:
	cmp	r3, #64
	bhi	.L13
	cmp	r3, #45
	it	eq
	moveq	r3, #62
	beq	.L14
	sub	r2, r3, #48
	cmp	r2, #9
	bhi	.L20
	adds	r3, r3, #4
	uxtb	r3, r3
.L14:
	strb	r3, [r1, #1]!
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2
	cbz	r3, .L10
.L15:
	cmp	r3, #90
	bls	.L22
	cmp	r3, #95
	it	eq
	moveq	r3, #63
	beq	.L14
	sub	r2, r3, #97
	cmp	r2, #25
	bhi	.L20
	subs	r3, r3, #71
	uxtb	r3, r3
	strb	r3, [r1, #1]!
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L15
.L10:
	bx	lr
.L13:
	subs	r3, r3, #65
	uxtb	r3, r3
	b	.L14
.L20:
	movs	r3, #255
	b	.L14
	.size	base64_decode_urlsafe, .-base64_decode_urlsafe
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
