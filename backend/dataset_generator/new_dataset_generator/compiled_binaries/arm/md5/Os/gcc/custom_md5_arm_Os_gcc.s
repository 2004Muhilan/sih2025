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
	.file	"custom_md5.c"
	.text
	.align	1
	.global	md5_transform
	.syntax unified
	.thumb
	.thumb_func
	.type	md5_transform, %function
md5_transform:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L7
	ldr	r3, .L7+4
.LPIC1:
	add	r2, pc
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	add	r5, r1, #64
	sub	sp, sp, #72
	ldr	r3, [r2, r3]
	add	r8, sp, #4
	ldrd	ip, r7, [r0]
	ldr	r3, [r3]
	str	r3, [sp, #68]
	mov	r3, #0
	ldrd	r6, r4, [r0, #8]
	mov	r2, r8
.L2:
	ldrb	r3, [r1, #2]	@ zero_extendqisi2
	adds	r1, r1, #4
	ldrb	lr, [r1, #-3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orr	r3, r3, lr, lsl #8
	ldrb	lr, [r1, #-4]	@ zero_extendqisi2
	orr	r3, r3, lr
	ldrb	lr, [r1, #-1]	@ zero_extendqisi2
	cmp	r5, r1
	orr	r3, r3, lr, lsl #24
	str	r3, [r2], #4
	bne	.L2
	mov	r1, r4
	mov	r5, r6
	mov	r2, r7
	mov	r9, ip
	mov	lr, #0
.L3:
	eor	r3, r5, r1
	ldr	r10, [r8], #4
	ands	r3, r3, r2
	add	lr, lr, #1
	eors	r3, r3, r1
	cmp	lr, #16
	add	r3, r3, r10
	add	r3, r3, r9
	mov	r9, r1
	add	r3, r2, r3, ror #25
	bne	.L5
	add	r6, r6, r2
	ldr	r2, .L7+8
	add	r7, r7, r3
	ldr	r3, .L7+4
.LPIC0:
	add	r2, pc
	str	r7, [r0, #4]
	str	r6, [r0, #8]
	add	r1, r1, ip
	add	r4, r4, r5
	str	r1, [r0]
	str	r4, [r0, #12]
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #68]
	eors	r2, r3, r2
	mov	r3, #0
	beq	.L4
	bl	__stack_chk_fail(PLT)
.L5:
	mov	r1, r5
	mov	r5, r2
	mov	r2, r3
	b	.L3
.L4:
	add	sp, sp, #72
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L8:
	.align	2
.L7:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC1+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+4)
	.size	md5_transform, .-md5_transform
	.align	1
	.global	md5_init
	.syntax unified
	.thumb
	.thumb_func
	.type	md5_init, %function
md5_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L10
	str	r3, [r0]
	add	r3, r3, #-2004318072
	str	r3, [r0, #4]
	add	r3, r3, #-1459617792
	sub	r3, r3, #1228800
	subw	r3, r3, #3723
	str	r3, [r0, #8]
	sub	r3, r3, #-2004318072
	str	r3, [r0, #12]
	bx	lr
.L11:
	.align	2
.L10:
	.word	1732584193
	.size	md5_init, .-md5_init
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
