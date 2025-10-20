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
	.file	"base64_decode_standard.c"
	.text
	.align	1
	.p2align 2,,3
	.global	base64_char_value
	.syntax unified
	.thumb
	.thumb_func
	.type	base64_char_value, %function
base64_char_value:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #90
	bhi	.L2
	cmp	r0, #42
	bls	.L12
	sub	r3, r0, #43
	cmp	r3, #47
	bhi	.L12
	tbb	[pc, r3]
.L6:
	.byte	(.L11-.L6)/2
	.byte	(.L12-.L6)/2
	.byte	(.L12-.L6)/2
	.byte	(.L12-.L6)/2
	.byte	(.L8-.L6)/2
	.byte	(.L7-.L6)/2
	.byte	(.L7-.L6)/2
	.byte	(.L7-.L6)/2
	.byte	(.L7-.L6)/2
	.byte	(.L7-.L6)/2
	.byte	(.L7-.L6)/2
	.byte	(.L7-.L6)/2
	.byte	(.L7-.L6)/2
	.byte	(.L7-.L6)/2
	.byte	(.L7-.L6)/2
	.byte	(.L12-.L6)/2
	.byte	(.L12-.L6)/2
	.byte	(.L12-.L6)/2
	.byte	(.L12-.L6)/2
	.byte	(.L12-.L6)/2
	.byte	(.L12-.L6)/2
	.byte	(.L12-.L6)/2
	.byte	(.L5-.L6)/2
	.byte	(.L5-.L6)/2
	.byte	(.L5-.L6)/2
	.byte	(.L5-.L6)/2
	.byte	(.L5-.L6)/2
	.byte	(.L5-.L6)/2
	.byte	(.L5-.L6)/2
	.byte	(.L5-.L6)/2
	.byte	(.L5-.L6)/2
	.byte	(.L5-.L6)/2
	.byte	(.L5-.L6)/2
	.byte	(.L5-.L6)/2
	.byte	(.L5-.L6)/2
	.byte	(.L5-.L6)/2
	.byte	(.L5-.L6)/2
	.byte	(.L5-.L6)/2
	.byte	(.L5-.L6)/2
	.byte	(.L5-.L6)/2
	.byte	(.L5-.L6)/2
	.byte	(.L5-.L6)/2
	.byte	(.L5-.L6)/2
	.byte	(.L5-.L6)/2
	.byte	(.L5-.L6)/2
	.byte	(.L5-.L6)/2
	.byte	(.L5-.L6)/2
	.byte	(.L5-.L6)/2
	.p2align 1
.L2:
	sub	r3, r0, #97
	cmp	r3, #25
	bls	.L13
.L12:
	mov	r0, #-1
	bx	lr
.L5:
	subs	r0, r0, #65
	bx	lr
.L13:
	subs	r0, r0, #71
	bx	lr
.L7:
	adds	r0, r0, #4
	bx	lr
.L11:
	movs	r0, #62
	bx	lr
.L8:
	movs	r0, #63
	bx	lr
	.size	base64_char_value, .-base64_char_value
	.align	1
	.p2align 2,,3
	.global	base64_decode_standard
	.syntax unified
	.thumb
	.thumb_func
	.type	base64_decode_standard, %function
base64_decode_standard:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	movs	r5, #0
	str	r5, [r2]
	ldrb	r3, [r0]	@ zero_extendqisi2
	cmp	r3, r5
	it	ne
	cmpne	r3, #61
	beq	.L15
	mov	r6, r0
	mov	r7, r1
	mov	r4, r2
	adds	r1, r0, #4
	mov	r0, r5
.L17:
	add	lr, r6, r0
	mov	ip, #0
.L26:
	ldrb	r3, [lr], #1	@ zero_extendqisi2
	lsl	ip, ip, #6
	cmp	r3, #90
	bhi	.L18
	cmp	r3, #42
	bls	.L29
	sub	r2, r3, #43
	cmp	r2, #47
	bhi	.L29
	tbb	[pc, r2]
.L21:
	.byte	(.L24-.L21)/2
	.byte	(.L29-.L21)/2
	.byte	(.L29-.L21)/2
	.byte	(.L29-.L21)/2
	.byte	(.L23-.L21)/2
	.byte	(.L22-.L21)/2
	.byte	(.L22-.L21)/2
	.byte	(.L22-.L21)/2
	.byte	(.L22-.L21)/2
	.byte	(.L22-.L21)/2
	.byte	(.L22-.L21)/2
	.byte	(.L22-.L21)/2
	.byte	(.L22-.L21)/2
	.byte	(.L22-.L21)/2
	.byte	(.L22-.L21)/2
	.byte	(.L29-.L21)/2
	.byte	(.L29-.L21)/2
	.byte	(.L29-.L21)/2
	.byte	(.L29-.L21)/2
	.byte	(.L29-.L21)/2
	.byte	(.L29-.L21)/2
	.byte	(.L29-.L21)/2
	.byte	(.L20-.L21)/2
	.byte	(.L20-.L21)/2
	.byte	(.L20-.L21)/2
	.byte	(.L20-.L21)/2
	.byte	(.L20-.L21)/2
	.byte	(.L20-.L21)/2
	.byte	(.L20-.L21)/2
	.byte	(.L20-.L21)/2
	.byte	(.L20-.L21)/2
	.byte	(.L20-.L21)/2
	.byte	(.L20-.L21)/2
	.byte	(.L20-.L21)/2
	.byte	(.L20-.L21)/2
	.byte	(.L20-.L21)/2
	.byte	(.L20-.L21)/2
	.byte	(.L20-.L21)/2
	.byte	(.L20-.L21)/2
	.byte	(.L20-.L21)/2
	.byte	(.L20-.L21)/2
	.byte	(.L20-.L21)/2
	.byte	(.L20-.L21)/2
	.byte	(.L20-.L21)/2
	.byte	(.L20-.L21)/2
	.byte	(.L20-.L21)/2
	.byte	(.L20-.L21)/2
	.byte	(.L20-.L21)/2
	.p2align 1
.L20:
	subs	r3, r3, #65
	orr	ip, r3, ip
.L19:
	cmp	lr, r1
	bne	.L26
	adds	r2, r5, #1
	lsr	r3, ip, #16
	str	r2, [r4]
	lsr	r2, ip, #8
	strb	r3, [r7, r5]
	adds	r0, r0, #4
	adds	r1, r1, #4
	ldr	r3, [r4]
	adds	r5, r3, #1
	str	r5, [r4]
	strb	r2, [r7, r3]
	ldr	r3, [r4]
	adds	r2, r3, #1
	str	r2, [r4]
	strb	ip, [r7, r3]
	ldrb	r3, [r6, r0]	@ zero_extendqisi2
	cmp	r3, #0
	it	ne
	cmpne	r3, #61
	beq	.L15
	ldr	r5, [r4]
	b	.L17
.L22:
	adds	r3, r3, #4
	orr	ip, r3, ip
	b	.L19
.L18:
	sub	r2, r3, #97
	cmp	r2, #25
	itt	ls
	subls	r3, r3, #71
	orrls	ip, r3, ip
	bls	.L19
.L29:
	mov	ip, #-1
	b	.L19
.L23:
	orr	ip, ip, #63
	b	.L19
.L24:
	orr	ip, ip, #62
	b	.L19
.L15:
	pop	{r4, r5, r6, r7, r8, pc}
	.size	base64_decode_standard, .-base64_decode_standard
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
