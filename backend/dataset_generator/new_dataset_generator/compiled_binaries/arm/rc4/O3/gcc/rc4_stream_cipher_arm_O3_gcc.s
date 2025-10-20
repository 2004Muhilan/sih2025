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
	.file	"rc4_stream_cipher.c"
	.text
	.align	1
	.p2align 2,,3
	.global	rc4_stream
	.syntax unified
	.thumb
	.thumb_func
	.type	rc4_stream, %function
rc4_stream:
	@ args = 0, pretend = 0, frame = 264
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	movs	r3, #0
	ldr	r5, .L14
	ldr	r4, .L14+4
	sub	sp, sp, #264
.LPIC1:
	add	r5, pc
	add	r2, sp, #3
	addw	ip, sp, #259
	ldr	r4, [r5, r4]
	ldr	r4, [r4]
	str	r4, [sp, #260]
	mov	r4, #0
.L2:
	strb	r3, [r2, #1]!
	adds	r3, r3, #1
	cmp	r2, ip
	bne	.L2
	cbz	r1, .L1
	mov	lr, #0
	subs	r4, r0, #1
	add	r2, sp, #4
	mov	r0, lr
.L4:
	add	ip, lr, #1
	ldrb	r5, [r4, #1]!	@ zero_extendqisi2
	and	ip, ip, #255
	add	lr, lr, #1
	cmp	r1, lr
	ldrb	r3, [r2, ip]	@ zero_extendqisi2
	add	r0, r0, r3
	uxtb	r0, r0
	ldrb	r6, [r2, r0]	@ zero_extendqisi2
	strb	r6, [r2, ip]
	strb	r3, [r2, r0]
	ldrb	ip, [r2, ip]	@ zero_extendqisi2
	add	r3, r3, ip
	uxtb	r3, r3
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	eor	r3, r3, r5
	strb	r3, [r4]
	bne	.L4
.L1:
	ldr	r2, .L14+8
	ldr	r3, .L14+4
.LPIC0:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #260]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L13
	add	sp, sp, #264
	@ sp needed
	pop	{r4, r5, r6, pc}
.L13:
	bl	__stack_chk_fail(PLT)
.L15:
	.align	2
.L14:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC1+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+4)
	.size	rc4_stream, .-rc4_stream
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
