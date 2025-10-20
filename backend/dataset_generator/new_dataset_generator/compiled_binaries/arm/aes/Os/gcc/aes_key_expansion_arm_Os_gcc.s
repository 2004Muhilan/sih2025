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
	ldr	r2, .L9
	ldr	r3, .L9+4
.LPIC2:
	add	r2, pc
	push	{r0, r1, r4, r5, r6, lr}
	ldr	r3, [r2, r3]
	subs	r2, r1, #1
	ldr	r3, [r3]
	str	r3, [sp, #4]
	mov	r3, #0
	subs	r3, r0, #1
	adds	r0, r0, #15
.L2:
	ldrb	r4, [r3, #1]!	@ zero_extendqisi2
	strb	r4, [r2, #1]!
	cmp	r3, r0
	bne	.L2
	ldr	r5, .L9+8
	movs	r0, #16
.LPIC0:
	add	r5, pc
.L3:
	adds	r3, r1, r0
	ldr	r2, [r3, #-4]	@ unaligned
	strb	r2, [sp, #3]
	ubfx	r4, r2, #16, #8
	strb	r4, [sp, #1]
	ubfx	r4, r2, #24, #8
	strb	r4, [sp, #2]
	ldrb	r4, [r5], #1	@ zero_extendqisi2
	ubfx	r2, r2, #8, #8
	eors	r2, r2, r4
	strb	r2, [sp]
	movs	r2, #0
.L4:
	and	r4, r2, #3
	ldrb	r6, [r3, #-16]	@ zero_extendqisi2
	adds	r4, r4, #8
	adds	r2, r2, #1
	add	r4, sp, r4
	cmp	r2, #16
	ldrb	r4, [r4, #-8]	@ zero_extendqisi2
	eor	r4, r4, r6
	strb	r4, [r3], #1
	bne	.L4
	adds	r0, r0, #16
	cmp	r0, #176
	bne	.L3
	ldr	r2, .L9+12
	ldr	r3, .L9+4
.LPIC1:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #4]
	eors	r2, r3, r2
	mov	r3, #0
	beq	.L6
	bl	__stack_chk_fail(PLT)
.L6:
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, pc}
.L10:
	.align	2
.L9:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC2+4)
	.word	__stack_chk_guard(GOT)
	.word	.LANCHOR0-(.LPIC0+4)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC1+4)
	.size	aes_key_expansion, .-aes_key_expansion
	.section	.rodata
	.set	.LANCHOR0,. + 0
	.type	rcon, %object
	.size	rcon, 10
rcon:
	.ascii	"\001\002\004\010\020 @\200\0336"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
