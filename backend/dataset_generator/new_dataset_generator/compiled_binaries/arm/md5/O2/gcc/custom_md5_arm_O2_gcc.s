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
	.file	"custom_md5.c"
	.text
	.align	1
	.p2align 2,,3
	.global	md5_transform
	.syntax unified
	.thumb
	.thumb_func
	.type	md5_transform, %function
md5_transform:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L10
	ldr	r3, .L10+4
.LPIC1:
	add	r2, pc
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r7, [r0, #8]
	sub	sp, sp, #76
	ldr	fp, [r0, #12]
	ldr	r3, [r2, r3]
	add	ip, sp, #4
	ldrd	r9, r8, [r0]
	ldr	r3, [r3]
	str	r3, [sp, #68]
	mov	r3, #0
	add	r4, sp, #68
	mov	r2, ip
.L2:
	ldrb	r3, [r1, #2]	@ zero_extendqisi2
	adds	r1, r1, #4
	ldrb	r10, [r1, #-3]	@ zero_extendqisi2
	ldrb	lr, [r1, #-4]	@ zero_extendqisi2
	ldrb	r5, [r1, #-1]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orr	r3, r3, r10, lsl #8
	orr	r3, r3, lr
	orr	r3, r3, r5, lsl #24
	str	r3, [r2], #4
	cmp	r4, r2
	bne	.L2
	mov	r2, fp
	mov	lr, r7
	mov	r1, r8
	mov	r5, r9
	b	.L3
.L5:
	mov	r2, lr
	mov	lr, r1
	mov	r1, r3
.L3:
	eor	r3, lr, r2
	ldr	r6, [ip], #4
	ands	r3, r3, r1
	eors	r3, r3, r2
	cmp	r4, ip
	add	r3, r3, r6
	add	r3, r3, r5
	mov	r5, r2
	add	r3, r1, r3, ror #25
	bne	.L5
	add	r2, r2, r9
	add	r3, r3, r8
	strd	r2, r3, [r0]
	add	r7, r7, r1
	ldr	r2, .L10+8
	add	r6, fp, lr
	ldr	r3, .L10+4
.LPIC0:
	add	r2, pc
	strd	r7, r6, [r0, #8]
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #68]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L9
	add	sp, sp, #76
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L9:
	bl	__stack_chk_fail(PLT)
.L11:
	.align	2
.L10:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC1+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+4)
	.size	md5_transform, .-md5_transform
	.align	1
	.p2align 2,,3
	.global	md5_init
	.syntax unified
	.thumb
	.thumb_func
	.type	md5_init, %function
md5_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4}
	movw	r1, #43913
	movt	r1, 61389
	movw	r4, #8961
	movt	r4, 26437
	movw	r2, #56574
	movt	r2, 39098
	movw	r3, #21622
	movt	r3, 4146
	strd	r4, r1, [r0]
	strd	r2, r3, [r0, #8]
	ldr	r4, [sp], #4
	bx	lr
	.size	md5_init, .-md5_init
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
