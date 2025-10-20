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
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	sub	sp, sp, #136
	mov	lr, r1
	ldr	r1, [sp, #168]
	ldr	r2, .L12
.LPIC1:
	add	r2, pc
	ldr	r3, .L12+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [sp, #132]
	mov	r3, #0
	add	r4, sp, #67
	add	r7, sp, #4
	add	r6, sp, #131
	mov	ip, r7
	mov	r3, r4
	add	r2, sp, #136
	rsb	r5, r2, #69
	mov	r9, #54
	mov	r8, #92
.L3:
	adds	r2, r5, r3
	cmp	lr, r2
	ittee	ls
	strbls	r9, [ip]
	movls	r2, r8
	ldrbhi	r2, [r0]	@ zero_extendqisi2
	eorhi	r10, r2, #54
	itt	hi
	strbhi	r10, [ip]
	eorhi	r2, r2, #92
	strb	r2, [r3, #1]!
	adds	r0, r0, #1
	add	ip, ip, #1
	cmp	r3, r6
	bne	.L3
	add	r2, sp, #3
	subs	r1, r1, #1
	adds	r7, r7, #31
.L4:
	ldrb	r3, [r2, #1]!	@ zero_extendqisi2
	ldrb	r0, [r4, #1]!	@ zero_extendqisi2
	eors	r3, r3, r0
	strb	r3, [r1, #1]!
	cmp	r2, r7
	bne	.L4
	ldr	r2, .L12+8
.LPIC0:
	add	r2, pc
	ldr	r3, .L12+4
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #132]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L11
	add	sp, sp, #136
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
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
