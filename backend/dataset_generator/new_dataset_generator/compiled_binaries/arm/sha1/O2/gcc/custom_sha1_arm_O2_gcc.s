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
	.file	"custom_sha1.c"
	.text
	.align	1
	.p2align 2,,3
	.global	sha1_transform
	.syntax unified
	.thumb
	.thumb_func
	.type	sha1_transform, %function
sha1_transform:
	@ args = 0, pretend = 0, frame = 352
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L20
	ldr	r3, .L20+4
.LPIC1:
	add	r2, pc
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r7, r0
	sub	sp, sp, #356
	ldr	r3, [r2, r3]
	add	lr, sp, #28
	mov	r2, lr
	ldr	r3, [r3]
	str	r3, [sp, #348]
	mov	r3, #0
	ldr	r3, [r0]
	str	r3, [sp]
	ldr	r3, [r0, #4]
	str	r3, [sp, #4]
	ldr	r3, [r0, #8]
	str	r3, [sp, #8]
	ldr	r3, [r0, #12]
	str	r3, [sp, #12]
	ldr	r3, [r0, #16]
	add	r0, sp, #92
	str	r3, [sp, #16]
.L2:
	ldrb	r3, [r1, #1]	@ zero_extendqisi2
	adds	r1, r1, #4
	ldrb	r5, [r1, #-4]	@ zero_extendqisi2
	ldrb	r4, [r1, #-1]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orr	r3, r3, r5, lsl #24
	orrs	r3, r3, r4
	ldrb	r4, [r1, #-2]	@ zero_extendqisi2
	orr	r3, r3, r4, lsl #8
	str	r3, [r2], #4
	cmp	r0, r2
	bne	.L2
	ldrd	r5, r4, [lr, #52]
	add	r2, sp, #32
	ldr	r6, [lr, #60]
	ldrd	r0, ip, [lr]
	add	lr, lr, #260
	b	.L3
.L12:
	mov	ip, r1
.L3:
	ldr	r3, [r2, #28]
	ldr	r1, [r2, #4]!
	eors	r3, r3, r1
	cmp	r2, lr
	eor	r3, r3, r5
	mov	r5, r4
	eor	r3, r3, r0
	mov	r4, r6
	mov	r0, ip
	ror	r6, r3, #31
	str	r6, [r2, #56]
	bne	.L12
	movw	fp, #49622
	movt	fp, 51810
	movw	r9, #48348
	movt	r9, 36635
	movw	r8, #60321
	movt	r8, 28377
	movw	r10, #31129
	movt	r10, 23170
	ldrd	r0, r6, [sp, #12]
	add	r4, sp, #24
	ldrd	r3, ip, [sp, #4]
	movs	r1, #0
	ldr	lr, [sp]
	str	r7, [sp, #20]
	b	.L9
.L18:
	eor	r2, r0, ip
	mov	r7, r8
	eors	r2, r2, r3
.L5:
	ror	r5, r3, #2
	ldr	r3, [r4, #4]!
	adds	r1, r1, #1
	add	r3, r3, lr, ror #27
	add	r3, r3, r7
	add	r2, r2, r3
	add	r2, r2, r6
.L10:
	mov	r6, r0
	mov	r3, lr
	mov	r0, ip
	mov	lr, r2
	mov	ip, r5
.L9:
	cmp	r1, #19
	ble	.L17
	cmp	r1, #39
	ble	.L18
	cmp	r1, #59
	bgt	.L7
	orr	r2, r0, ip
	and	r5, r0, ip
	ands	r2, r2, r3
	mov	r7, r9
	orrs	r2, r2, r5
	b	.L5
.L17:
	eor	r2, r0, ip
	mov	r7, r10
	ands	r2, r2, r3
	eors	r2, r2, r0
	b	.L5
.L7:
	ldr	r2, [r4, #4]!
	eor	r5, r0, ip
	eors	r5, r5, r3
	adds	r1, r1, #1
	cmp	r1, #80
	add	r2, r2, lr, ror #27
	add	r2, r2, fp
	add	r2, r2, r5
	ror	r5, r3, #2
	add	r2, r2, r6
	bne	.L10
	ldr	r6, [sp]
	ldr	r3, [sp, #8]
	ldr	r7, [sp, #20]
	add	r6, r6, r2
	add	r3, r3, r5
	ldr	r2, [sp, #12]
	mov	r5, r3
	ldr	r3, [sp, #16]
	add	r2, r2, ip
	strd	r5, r2, [r7, #8]
	ldr	r2, .L20+8
	add	r3, r3, r0
	ldr	r4, [sp, #4]
	str	r3, [r7, #16]
.LPIC0:
	add	r2, pc
	ldr	r3, .L20+4
	add	r4, r4, lr
	strd	r6, r4, [r7]
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #348]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L19
	add	sp, sp, #356
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L19:
	bl	__stack_chk_fail(PLT)
.L21:
	.align	2
.L20:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC1+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+4)
	.size	sha1_transform, .-sha1_transform
	.align	1
	.p2align 2,,3
	.global	sha1_init
	.syntax unified
	.thumb
	.thumb_func
	.type	sha1_init, %function
sha1_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4}
	movw	r3, #43913
	movt	r3, 61389
	movw	r4, #8961
	movt	r4, 26437
	movw	r1, #56574
	movt	r1, 39098
	strd	r4, r3, [r0]
	movw	r2, #21622
	movt	r2, 4146
	movw	r3, #57840
	movt	r3, 50130
	ldr	r4, [sp], #4
	strd	r1, r2, [r0, #8]
	str	r3, [r0, #16]
	bx	lr
	.size	sha1_init, .-sha1_init
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
