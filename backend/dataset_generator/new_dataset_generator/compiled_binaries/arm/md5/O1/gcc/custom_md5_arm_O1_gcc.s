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
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	sub	sp, sp, #72
	ldr	r2, .L9
.LPIC1:
	add	r2, pc
	ldr	r3, .L9+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [sp, #68]
	mov	r3, #0
	ldr	r8, [r0]
	ldr	r7, [r0, #4]
	ldr	r6, [r0, #8]
	ldr	r10, [r0, #12]
	add	ip, sp, #4
	add	r4, sp, #68
	mov	r2, ip
.L2:
	ldrb	lr, [r1, #1]	@ zero_extendqisi2
	ldrb	r3, [r1, #2]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orr	r3, r3, lr, lsl #8
	ldrb	lr, [r1]	@ zero_extendqisi2
	orr	r3, r3, lr
	ldrb	lr, [r1, #3]	@ zero_extendqisi2
	orr	r3, r3, lr, lsl #24
	str	r3, [r2], #4
	adds	r1, r1, #4
	cmp	r2, r4
	bne	.L2
	mov	r2, r10
	mov	lr, r6
	mov	r1, r7
	mov	r9, r8
	b	.L3
.L5:
	mov	r2, lr
	mov	lr, r1
	mov	r1, r3
.L3:
	ldr	r5, [ip], #4
	eor	r3, lr, r2
	ands	r3, r3, r1
	eors	r3, r3, r2
	add	r3, r3, r5
	add	r3, r3, r9
	add	r3, r1, r3, ror #25
	mov	r9, r2
	cmp	ip, r4
	bne	.L5
	add	r2, r2, r8
	str	r2, [r0]
	add	r7, r7, r3
	str	r7, [r0, #4]
	add	r6, r6, r1
	str	r6, [r0, #8]
	add	r5, r10, lr
	str	r5, [r0, #12]
	ldr	r2, .L9+8
.LPIC0:
	add	r2, pc
	ldr	r3, .L9+4
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #68]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L8
	add	sp, sp, #72
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L8:
	bl	__stack_chk_fail(PLT)
.L10:
	.align	2
.L9:
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
	movw	r3, #8961
	movt	r3, 26437
	str	r3, [r0]
	movw	r3, #43913
	movt	r3, 61389
	str	r3, [r0, #4]
	movw	r3, #56574
	movt	r3, 39098
	str	r3, [r0, #8]
	movw	r3, #21622
	movt	r3, 4146
	str	r3, [r0, #12]
	bx	lr
	.size	md5_init, .-md5_init
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
