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
	.file	"hmac_sha256.c"
	.text
	.align	1
	.p2align 2,,3
	.global	hmac_sha256
	.syntax unified
	.thumb
	.thumb_func
	.type	hmac_sha256, %function
hmac_sha256:
	@ args = 4, pretend = 0, frame = 136
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L12
	push	{r4, r5, lr}
	mov	r4, r0
	ldr	r3, .L12+4
.LPIC1:
	add	r2, pc
	sub	sp, sp, #140
	mov	r0, r1
	add	lr, sp, #3
	add	ip, sp, #67
	ldr	r3, [r2, r3]
	ldr	r5, [sp, #152]
	ldr	r3, [r3]
	str	r3, [sp, #132]
	mov	r3, #0
	movs	r3, #0
.L3:
	cmp	r3, r0
	itte	cs
	movcs	r1, #54
	movcs	r2, #92
	ldrbcc	r2, [r4, r3]	@ zero_extendqisi2
	add	r3, r3, #1
	itt	cc
	eorcc	r1, r2, #54
	eorcc	r2, r2, #92
	strb	r1, [lr, #1]!
	cmp	r3, #64
	strb	r2, [ip, #1]!
	bne	.L3
	mov	r2, r5
	add	r0, sp, #4
	adds	r5, r5, #32
	add	r1, sp, #68
.L4:
	ldr	r3, [r0], #4
	ldr	r4, [r1], #4
	eors	r3, r3, r4
	str	r3, [r2], #4	@ unaligned
	cmp	r2, r5
	bne	.L4
	ldr	r2, .L12+8
	ldr	r3, .L12+4
.LPIC0:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #132]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L11
	add	sp, sp, #140
	@ sp needed
	pop	{r4, r5, pc}
.L11:
	bl	__stack_chk_fail(PLT)
.L13:
	.align	2
.L12:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC1+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+4)
	.size	hmac_sha256, .-hmac_sha256
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
