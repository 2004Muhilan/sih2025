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
	.file	"hmac_sha256.c"
	.text
	.align	1
	.global	hmac_sha256
	.syntax unified
	.thumb
	.thumb_func
	.type	hmac_sha256, %function
hmac_sha256:
	@ args = 4, pretend = 0, frame = 136
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	ldr	r4, .L11
	ldr	r3, .L11+4
	sub	sp, sp, #140
.LPIC1:
	add	r4, pc
	add	r5, sp, #68
	add	r6, sp, #4
	mov	r7, r5
	ldr	r2, [sp, #160]
	mov	ip, r6
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	str	r3, [sp, #132]
	mov	r3, #0
	movs	r3, #0
.L4:
	cmp	r1, r3
	itee	ls
	movls	r4, #54
	ldrbhi	r4, [r0, r3]	@ zero_extendqisi2
	eorhi	r4, r4, #54
	cmp	r1, r3
	strb	r4, [ip], #1
	ite	ls
	movls	r4, #92
	ldrbhi	r4, [r0, r3]	@ zero_extendqisi2
	add	r3, r3, #1
	it	hi
	eorhi	r4, r4, #92
	cmp	r3, #64
	strb	r4, [r7], #1
	bne	.L4
	subs	r3, r2, #1
	adds	r2, r2, #31
.L5:
	ldrb	r1, [r6], #1	@ zero_extendqisi2
	ldrb	r0, [r5], #1	@ zero_extendqisi2
	eors	r1, r1, r0
	strb	r1, [r3, #1]!
	cmp	r3, r2
	bne	.L5
	ldr	r2, .L11+8
	ldr	r3, .L11+4
.LPIC0:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #132]
	eors	r2, r3, r2
	mov	r3, #0
	beq	.L6
	bl	__stack_chk_fail(PLT)
.L6:
	add	sp, sp, #140
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L12:
	.align	2
.L11:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC1+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+4)
	.size	hmac_sha256, .-hmac_sha256
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
