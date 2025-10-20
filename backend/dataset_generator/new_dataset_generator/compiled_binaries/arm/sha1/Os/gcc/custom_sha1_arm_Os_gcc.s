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
	.file	"custom_sha1.c"
	.text
	.align	1
	.global	sha1_transform
	.syntax unified
	.thumb
	.thumb_func
	.type	sha1_transform, %function
sha1_transform:
	@ args = 0, pretend = 0, frame = 336
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L13
	ldr	r3, .L13+4
.LPIC1:
	add	r2, pc
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r5, r1, #64
	sub	sp, sp, #340
	ldr	r3, [r2, r3]
	add	r4, sp, #12
	ldrd	r8, ip, [r0]
	ldr	r3, [r3]
	str	r3, [sp, #332]
	mov	r3, #0
	ldrd	r7, r3, [r0, #8]
	str	r3, [sp]
	mov	r2, r4
	ldr	r3, [r0, #16]
	str	r3, [sp, #4]
.L2:
	ldrb	r3, [r1, #1]	@ zero_extendqisi2
	adds	r1, r1, #4
	ldrb	r6, [r1, #-4]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orr	r3, r3, r6, lsl #24
	ldrb	r6, [r1, #-1]	@ zero_extendqisi2
	orrs	r3, r3, r6
	ldrb	r6, [r1, #-2]	@ zero_extendqisi2
	cmp	r5, r1
	orr	r3, r3, r6, lsl #8
	str	r3, [r2], #4
	bne	.L2
	movs	r1, #16
.L3:
	mov	r5, r4
	adds	r4, r4, #4
	adds	r1, r1, #1
	cmp	r1, #80
	ldr	r2, [r5, #32]
	ldr	r3, [r5, #52]
	eor	r3, r3, r2
	ldr	r2, [r5, #8]
	eor	r3, r3, r2
	ldr	r2, [r5]
	eor	r3, r3, r2
	ror	r3, r3, #31
	str	r3, [r4, #60]
	bne	.L3
	ldrd	r1, r10, [sp]
	mov	r4, r7
	mov	r6, ip
	mov	lr, r8
	movs	r5, #0
	add	fp, sp, #12
.L8:
	cmp	r5, #19
	bgt	.L4
	eor	r3, r4, r1
	ldr	r9, .L13+8
	ands	r3, r3, r6
	eors	r3, r3, r1
.L5:
	ldr	r2, [fp, r5, lsl #2]
	adds	r5, r5, #1
	cmp	r5, #80
	add	r2, r2, lr, ror #27
	add	r2, r2, r3
	ror	r3, r6, #2
	add	r2, r2, r9
	mov	r6, lr
	add	r2, r2, r10
	mov	r10, r1
	bne	.L10
	add	r7, r7, r3
	ldr	r3, [sp]
	add	r2, r2, r8
	str	r2, [r0]
	add	r3, r3, r4
	str	r3, [r0, #12]
	ldr	r3, [sp, #4]
	add	r2, ip, lr
	str	r2, [r0, #4]
	ldr	r2, .L13+12
	add	r3, r3, r1
	str	r3, [r0, #16]
	ldr	r3, .L13+4
.LPIC0:
	add	r2, pc
	str	r7, [r0, #8]
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #332]
	eors	r2, r3, r2
	mov	r3, #0
	beq	.L9
	bl	__stack_chk_fail(PLT)
.L10:
	mov	r1, r4
	mov	lr, r2
	mov	r4, r3
	b	.L8
.L4:
	cmp	r5, #39
	bgt	.L6
	eor	r3, r6, r4
	ldr	r9, .L13+16
	eors	r3, r3, r1
	b	.L5
.L6:
	cmp	r5, #59
	ittte	le
	orrle	r3, r4, r1
	andle	r2, r4, r1
	andle	r3, r3, r6
	eorgt	r3, r6, r4
	ittee	le
	ldrle	r9, .L13+20
	orrle	r3, r3, r2
	ldrgt	r9, .L13+24
	eorgt	r3, r3, r1
	b	.L5
.L9:
	add	sp, sp, #340
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L14:
	.align	2
.L13:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC1+4)
	.word	__stack_chk_guard(GOT)
	.word	1518500249
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+4)
	.word	1859775393
	.word	-1894007588
	.word	-899497514
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
	ldr	r3, .L16
	str	r3, [r0]
	add	r3, r3, #-2004318072
	str	r3, [r0, #4]
	add	r3, r3, #-1459617792
	sub	r3, r3, #1228800
	subw	r3, r3, #3723
	str	r3, [r0, #8]
	sub	r3, r3, #-2004318072
	str	r3, [r0, #12]
	ldr	r3, .L16+4
	str	r3, [r0, #16]
	bx	lr
.L17:
	.align	2
.L16:
	.word	1732584193
	.word	-1009589776
	.size	sha1_init, .-sha1_init
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
