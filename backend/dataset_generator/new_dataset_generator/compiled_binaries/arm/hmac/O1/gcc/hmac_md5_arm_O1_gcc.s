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
	.file	"hmac_md5.c"
	.text
	.align	1
	.global	hmac_md5
	.syntax unified
	.thumb
	.thumb_func
	.type	hmac_md5, %function
hmac_md5:
	@ args = 4, pretend = 0, frame = 136
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	sub	sp, sp, #136
	ldr	r9, [sp, #168]
	ldr	r2, .L12
.LPIC1:
	add	r2, pc
	ldr	r3, .L12+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [sp, #132]
	mov	r3, #0
	add	r3, sp, #67
	add	r5, sp, #4
	add	r6, sp, #68
	add	r4, sp, #131
	mov	ip, r5
	add	r2, sp, #136
	rsb	lr, r2, #69
	mov	r8, #54
	movs	r7, #92
.L3:
	add	r2, lr, r3
	cmp	r1, r2
	ittee	ls
	strbls	r8, [ip]
	movls	r2, r7
	ldrbhi	r2, [r0]	@ zero_extendqisi2
	eorhi	r10, r2, #54
	itt	hi
	strbhi	r10, [ip]
	eorhi	r2, r2, #92
	strb	r2, [r3, #1]!
	adds	r0, r0, #1
	add	ip, ip, #1
	cmp	r3, r4
	bne	.L3
	add	r2, r9, #-1
	add	r9, r9, #15
.L4:
	ldrb	r3, [r5], #1	@ zero_extendqisi2
	ldrb	r1, [r6], #1	@ zero_extendqisi2
	eors	r3, r3, r1
	strb	r3, [r2, #1]!
	cmp	r2, r9
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
	.size	hmac_md5, .-hmac_md5
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
