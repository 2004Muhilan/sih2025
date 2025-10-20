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
	.file	"aes_key_expansion.c"
	.text
	.align	1
	.p2align 2,,3
	.global	aes_key_expansion
	.syntax unified
	.thumb
	.thumb_func
	.type	aes_key_expansion, %function
aes_key_expansion:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	subs	r3, r0, #1
	ldr	r5, .L12
	add	r4, r0, #15
	ldr	r0, .L12+4
.LPIC2:
	add	r5, pc
	sub	sp, sp, #8
	subs	r2, r1, #1
	ldr	r0, [r5, r0]
	ldr	r0, [r0]
	str	r0, [sp, #4]
	mov	r0, #0
.L2:
	ldrb	r0, [r3, #1]!	@ zero_extendqisi2
	strb	r0, [r2, #1]!
	cmp	r3, r4
	bne	.L2
	ldr	r4, .L12+8
	add	ip, r1, #12
	add	r5, r1, #172
.LPIC0:
	add	r4, pc
	subs	r4, r4, #1
.L3:
	ldr	r0, [ip]	@ unaligned
	movs	r2, #0
	ldrb	r7, [r4, #1]!	@ zero_extendqisi2
	mov	r1, ip
	ldrb	r6, [ip, #-12]	@ zero_extendqisi2
	movs	r3, #1
	ubfx	lr, r0, #8, #8
	ubfx	r8, r0, #16, #8
	eor	lr, lr, r7
	lsrs	r7, r0, #24
	eor	r6, lr, r6
	strb	r6, [r1, #4]!
	bfi	r2, lr, #0, #8
	bfi	r2, r8, #8, #8
	bfi	r2, r7, #16, #8
	bfi	r2, r0, #24, #8
	str	r2, [sp]
.L4:
	and	r2, r3, #3
	ldrb	r0, [r1, #-15]	@ zero_extendqisi2
	adds	r2, r2, #8
	adds	r3, r3, #1
	add	r2, sp, r2
	cmp	r3, #16
	ldrb	r2, [r2, #-8]	@ zero_extendqisi2
	eor	r2, r2, r0
	strb	r2, [r1, #1]!
	bne	.L4
	add	ip, ip, #16
	cmp	ip, r5
	bne	.L3
	ldr	r2, .L12+12
	ldr	r3, .L12+4
.LPIC1:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #4]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L11
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L11:
	bl	__stack_chk_fail(PLT)
.L13:
	.align	2
.L12:
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
