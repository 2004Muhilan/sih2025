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
	.file	"custom_sha1.c"
	.text
	.align	1
	.global	sha1_transform
	.syntax unified
	.thumb
	.thumb_func
	.type	sha1_transform, %function
sha1_transform:
	@ args = 0, pretend = 0, frame = 352
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #356
	mov	r10, r0
	mov	r2, r1
	ldr	r1, .L18
.LPIC1:
	add	r1, pc
	ldr	r3, .L18+4
	ldr	r3, [r1, r3]
	ldr	r3, [r3]
	str	r3, [sp, #348]
	mov	r3, #0
	ldr	r7, [r0]
	ldr	r1, [r0, #4]
	ldr	r3, [r0, #8]
	str	r3, [sp, #4]
	ldr	r3, [r0, #12]
	str	r3, [sp, #8]
	ldr	r3, [r0, #16]
	str	r3, [sp, #12]
	add	r4, sp, #28
	add	r5, sp, #92
	mov	r0, r4
.L2:
	ldrb	r6, [r2]	@ zero_extendqisi2
	ldrb	r3, [r2, #1]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orr	r3, r3, r6, lsl #24
	ldrb	r6, [r2, #3]	@ zero_extendqisi2
	orrs	r3, r3, r6
	ldrb	r6, [r2, #2]	@ zero_extendqisi2
	orr	r3, r3, r6, lsl #8
	str	r3, [r0], #4
	adds	r2, r2, #4
	cmp	r0, r5
	bne	.L2
	add	r5, sp, #24
	adds	r4, r4, #252
	mov	r0, r5
.L3:
	ldr	r3, [r0, #56]
	ldr	r6, [r0, #36]
	eors	r3, r3, r6
	ldr	r2, [r0, #12]
	eors	r3, r3, r2
	ldr	r2, [r0, #4]!
	eors	r3, r3, r2
	ror	r3, r3, #31
	str	r3, [r0, #64]
	cmp	r0, r4
	bne	.L3
	ldr	r6, [sp, #12]
	ldr	lr, [sp, #8]
	ldr	r0, [sp, #4]
	mov	r2, r1
	mov	r4, r7
	mov	ip, #0
	movw	fp, #49622
	movt	fp, 51810
	movw	r9, #48348
	movt	r9, 36635
	movw	r8, #60321
	movt	r8, 28377
	movw	r3, #31129
	movt	r3, 23170
	str	r3, [sp]
	str	r7, [sp, #16]
	str	r1, [sp, #20]
	b	.L9
.L16:
	eor	r1, r0, lr
	ands	r1, r1, r2
	eor	r1, r1, lr
	ldr	r7, [sp]
	b	.L5
.L6:
	cmp	ip, #59
	bgt	.L7
	orr	r1, r0, lr
	ands	r1, r1, r2
	and	r3, r0, lr
	orrs	r1, r1, r3
	mov	r7, r9
.L5:
	ldr	r3, [r5, #4]!
	add	r3, r3, r4, ror #27
	add	r3, r3, r1
	add	r3, r3, r7
	add	r3, r3, r6
	ror	r2, r2, #2
	add	ip, ip, #1
.L10:
	mov	r6, lr
	mov	lr, r0
	mov	r0, r2
	mov	r2, r4
	mov	r4, r3
.L9:
	cmp	ip, #19
	ble	.L16
	cmp	ip, #39
	bgt	.L6
	eor	r1, r2, r0
	eor	r1, r1, lr
	mov	r7, r8
	b	.L5
.L7:
	ldr	r3, [r5, #4]!
	add	r3, r3, r4, ror #27
	eor	r1, r2, r0
	eor	r1, r1, lr
	add	r3, r3, r1
	add	r3, r3, fp
	add	r3, r3, r6
	ror	r2, r2, #2
	add	ip, ip, #1
	cmp	ip, #80
	bne	.L10
	ldr	r7, [sp, #16]
	ldr	r1, [sp, #20]
	add	r7, r7, r3
	str	r7, [r10]
	add	r1, r1, r4
	str	r1, [r10, #4]
	ldr	r3, [sp, #4]
	add	r3, r3, r2
	str	r3, [r10, #8]
	ldr	r3, [sp, #8]
	add	r3, r3, r0
	str	r3, [r10, #12]
	ldr	r3, [sp, #12]
	add	r3, r3, lr
	str	r3, [r10, #16]
	ldr	r2, .L18+8
.LPIC0:
	add	r2, pc
	ldr	r3, .L18+4
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #348]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L17
	add	sp, sp, #356
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L17:
	bl	__stack_chk_fail(PLT)
.L19:
	.align	2
.L18:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC1+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+4)
	.size	sha1_transform, .-sha1_transform
	.align	1
	.global	sha1_init
	.syntax unified
	.thumb
	.thumb_func
	.type	sha1_init, %function
sha1_init:
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
	movw	r3, #57840
	movt	r3, 50130
	str	r3, [r0, #16]
	bx	lr
	.size	sha1_init, .-sha1_init
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
