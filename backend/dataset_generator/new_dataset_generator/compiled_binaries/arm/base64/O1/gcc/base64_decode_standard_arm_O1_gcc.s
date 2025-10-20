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
	cmp	r0, #90
	bhi	.L2
	cmp	r0, #42
	bls	.L10
	sub	r3, r0, #43
	cmp	r3, #47
	bhi	.L4
	tbb	[pc, r3]
.L6:
	.byte	(.L11-.L6)/2
	.byte	(.L4-.L6)/2
	.byte	(.L4-.L6)/2
	.byte	(.L4-.L6)/2
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
	.byte	(.L4-.L6)/2
	.byte	(.L4-.L6)/2
	.byte	(.L4-.L6)/2
	.byte	(.L4-.L6)/2
	.byte	(.L4-.L6)/2
	.byte	(.L4-.L6)/2
	.byte	(.L4-.L6)/2
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
.L8:
	movs	r0, #63
	bx	lr
.L4:
	mov	r0, #-1
	bx	lr
.L2:
	sub	r3, r0, #97
	uxtb	r3, r3
	cmp	r3, #25
	bhi	.L14
	subs	r0, r0, #71
	bx	lr
.L5:
	subs	r0, r0, #65
	bx	lr
.L7:
	adds	r0, r0, #4
	bx	lr
.L10:
	mov	r0, #-1
	bx	lr
.L11:
	movs	r0, #62
	bx	lr
.L14:
	mov	r0, #-1
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
	movs	r3, #0
	str	r3, [r2]
	ldrb	r3, [r0]	@ zero_extendqisi2
	cmp	r3, #0
	it	ne
	cmpne	r3, #61
	beq	.L21
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r8, r0
	mov	r9, r1
	mov	r6, r2
	mov	r10, #0
	b	.L17
.L24:
	ldr	r3, [r6]
	adds	r2, r3, #1
	str	r2, [r6]
	lsrs	r2, r0, #16
	strb	r2, [r9, r3]
	ldr	r3, [r6]
	adds	r2, r3, #1
	str	r2, [r6]
	lsrs	r2, r0, #8
	strb	r2, [r9, r3]
	ldr	r3, [r6]
	adds	r2, r3, #1
	str	r2, [r6]
	strb	r0, [r9, r3]
	ldrb	r3, [r8, #4]	@ zero_extendqisi2
	cmp	r3, #0
	it	ne
	cmpne	r3, #61
	beq	.L15
	mov	r8, r7
.L17:
	mov	r5, r8
	mov	r0, r10
	add	r7, r8, #4
.L18:
	lsls	r4, r0, #6
	ldrb	r0, [r5], #1	@ zero_extendqisi2
	bl	base64_char_value(PLT)
	orrs	r0, r0, r4
	cmp	r5, r7
	bne	.L18
	b	.L24
.L15:
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L21:
	bx	lr
	.size	base64_decode_standard, .-base64_decode_standard
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
