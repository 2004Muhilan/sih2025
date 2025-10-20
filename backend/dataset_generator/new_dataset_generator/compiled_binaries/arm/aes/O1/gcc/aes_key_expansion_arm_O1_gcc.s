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
	.file	"aes_key_expansion.c"
	.text
	.align	1
	.global	aes_key_expansion
	.syntax unified
	.thumb
	.thumb_func
	.type	aes_key_expansion, %function
aes_key_expansion:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	sub	sp, sp, #8
	ldr	r2, .L14
.LPIC2:
	add	r2, pc
	ldr	r3, .L14+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [sp, #4]
	mov	r3, #0
	subs	r3, r0, #1
	subs	r2, r1, #1
	add	r4, r0, #15
.L2:
	ldrb	r0, [r3, #1]!	@ zero_extendqisi2
	strb	r0, [r2, #1]!
	cmp	r3, r4
	bne	.L2
	ldr	r4, .L14+8
.LPIC0:
	add	r4, pc
	subs	r4, r4, #1
	add	ip, r1, #16
	mov	lr, #0
	b	.L3
.L12:
	ldrb	r2, [sp]	@ zero_extendqisi2
	ldrb	r3, [sp, #1]	@ zero_extendqisi2
	ldrb	r1, [sp, #2]	@ zero_extendqisi2
	strb	r1, [sp, #1]
	ldrb	r1, [sp, #3]	@ zero_extendqisi2
	strb	r1, [sp, #2]
	strb	r2, [sp, #3]
	ldrb	r2, [r4, #1]!	@ zero_extendqisi2
	eors	r3, r3, r2
	strb	r3, [sp]
	add	lr, lr, #16
	add	r0, ip, #-1
	movs	r3, #0
.L5:
	rsbs	r1, r3, #0
	and	r2, r3, #3
	and	r1, r1, #3
	it	pl
	rsbpl	r2, r1, #0
	adds	r2, r2, #8
	add	r2, sp, r2
	ldrb	r2, [r2, #-8]	@ zero_extendqisi2
	ldrb	r1, [r0, #-15]	@ zero_extendqisi2
	eors	r2, r2, r1
	strb	r2, [r0, #1]!
	adds	r3, r3, #1
	cmp	r3, #16
	bne	.L5
	add	ip, ip, #16
	cmp	lr, #160
	beq	.L1
.L3:
	sub	r3, ip, #4
	mov	r2, sp
.L4:
	ldrb	r1, [r3], #1	@ zero_extendqisi2
	strb	r1, [r2], #1
	cmp	r3, ip
	bne	.L4
	b	.L12
.L1:
	ldr	r2, .L14+12
.LPIC1:
	add	r2, pc
	ldr	r3, .L14+4
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #4]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L13
	add	sp, sp, #8
	@ sp needed
	pop	{r4, pc}
.L13:
	bl	__stack_chk_fail(PLT)
.L15:
	.align	2
.L14:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC2+4)
	.word	__stack_chk_guard(GOT)
	.word	.LANCHOR0-(.LPIC0+4)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC1+4)
	.size	aes_key_expansion, .-aes_key_expansion
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
	.type	rcon, %object
	.size	rcon, 10
rcon:
	.ascii	"\001\002\004\010\020 @\200\0336"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
