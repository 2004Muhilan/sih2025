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
	push	{r4, r5, lr}
	sub	sp, sp, #268
	ldr	r2, .L10
.LPIC1:
	add	r2, pc
	ldr	r3, .L10+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [sp, #260]
	mov	r3, #0
	add	r2, sp, #3
	addw	ip, sp, #259
	movs	r3, #0
.L2:
	strb	r3, [r2, #1]!
	adds	r3, r3, #1
	cmp	r2, ip
	bne	.L2
	cbz	r1, .L1
	add	ip, r0, #-1
	add	r0, r0, r1
	subs	r4, r0, #1
	movs	r1, #0
	mov	lr, r1
	add	r0, sp, #4
.L4:
	add	r3, lr, #1
	rsbs	r2, r3, #0
	uxtb	r3, r3
	uxtb	r2, r2
	it	pl
	rsbpl	r3, r2, #0
	uxtb	lr, r3
	ldrb	r2, [r0, r3]	@ zero_extendqisi2
	add	r1, r1, r2
	uxtb	r1, r1
	ldrb	r5, [r0, r1]	@ zero_extendqisi2
	strb	r5, [r0, r3]
	strb	r2, [r0, r1]
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	add	r2, r2, r3
	uxtb	r2, r2
	ldrb	r3, [r0, r2]	@ zero_extendqisi2
	ldrb	r2, [ip, #1]!	@ zero_extendqisi2
	eors	r3, r3, r2
	strb	r3, [ip]
	cmp	ip, r4
	bne	.L4
.L1:
	ldr	r2, .L10+8
.LPIC0:
	add	r2, pc
	ldr	r3, .L10+4
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #260]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L9
	add	sp, sp, #268
	@ sp needed
	pop	{r4, r5, pc}
.L9:
	bl	__stack_chk_fail(PLT)
.L11:
	.align	2
.L10:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC1+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+4)
	.size	rc4_stream, .-rc4_stream
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
