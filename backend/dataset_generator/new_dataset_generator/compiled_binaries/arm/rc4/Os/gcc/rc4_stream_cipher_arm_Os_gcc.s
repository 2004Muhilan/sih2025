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
	.file	"rc4_stream_cipher.c"
	.text
	.align	1
	.global	rc4_stream
	.syntax unified
	.thumb
	.thumb_func
	.type	rc4_stream, %function
rc4_stream:
	@ args = 0, pretend = 0, frame = 264
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L7
	ldr	r3, .L7+4
.LPIC1:
	add	r2, pc
	push	{r4, r5, r6, r7, lr}
	sub	sp, sp, #268
	ldr	r3, [r2, r3]
	add	r2, sp, #4
	mov	r6, r2
	ldr	r3, [r3]
	str	r3, [sp, #260]
	mov	r3, #0
	movs	r3, #0
.L2:
	strb	r3, [r2], #1
	adds	r3, r3, #1
	cmp	r3, #256
	bne	.L2
	movs	r4, #0
	subs	r0, r0, #1
	mov	r2, r4
.L3:
	cmp	r4, r1
	bne	.L4
	ldr	r2, .L7+8
	ldr	r3, .L7+4
.LPIC0:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #260]
	eors	r2, r3, r2
	mov	r3, #0
	beq	.L5
	bl	__stack_chk_fail(PLT)
.L4:
	adds	r5, r4, #1
	adds	r4, r4, #1
	and	r5, r5, #255
	ldrb	r3, [r6, r5]	@ zero_extendqisi2
	add	r2, r2, r3
	uxtb	r2, r2
	ldrb	r7, [r6, r2]	@ zero_extendqisi2
	strb	r7, [r6, r5]
	strb	r3, [r6, r2]
	ldrb	r5, [r6, r5]	@ zero_extendqisi2
	add	r3, r3, r5
	ldrb	r5, [r0, #1]!	@ zero_extendqisi2
	uxtb	r3, r3
	ldrb	r3, [r6, r3]	@ zero_extendqisi2
	eors	r3, r3, r5
	strb	r3, [r0]
	b	.L3
.L5:
	add	sp, sp, #268
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L8:
	.align	2
.L7:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC1+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+4)
	.size	rc4_stream, .-rc4_stream
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
