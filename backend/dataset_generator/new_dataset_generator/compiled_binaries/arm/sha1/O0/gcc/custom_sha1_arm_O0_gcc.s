	.arch armv7-a
	.fpu vfpv3-d16
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
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
	@ args = 0, pretend = 0, frame = 376
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #376
	add	r7, sp, #0
	add	r3, r7, #376
	sub	r3, r3, #372
	str	r0, [r3]
	add	r3, r7, #376
	sub	r3, r3, #376
	str	r1, [r3]
	ldr	r2, .L13
.LPIC0:
	add	r2, pc
	ldr	r3, .L13+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [r7, #372]
	mov	r3, #0
	add	r3, r7, #376
	sub	r3, r3, #368
	add	r2, r7, #376
	sub	r2, r2, #372
	ldr	r2, [r2]
	ldr	r2, [r2]
	str	r2, [r3]
	add	r3, r7, #376
	sub	r3, r3, #364
	add	r2, r7, #376
	sub	r2, r2, #372
	ldr	r2, [r2]
	ldr	r2, [r2, #4]
	str	r2, [r3]
	add	r3, r7, #376
	sub	r3, r3, #360
	add	r2, r7, #376
	sub	r2, r2, #372
	ldr	r2, [r2]
	ldr	r2, [r2, #8]
	str	r2, [r3]
	add	r3, r7, #376
	sub	r3, r3, #356
	add	r2, r7, #376
	sub	r2, r2, #372
	ldr	r2, [r2]
	ldr	r2, [r2, #12]
	str	r2, [r3]
	add	r3, r7, #376
	sub	r3, r3, #352
	add	r2, r7, #376
	sub	r2, r2, #372
	ldr	r2, [r2]
	ldr	r2, [r2, #16]
	str	r2, [r3]
	add	r3, r7, #376
	sub	r3, r3, #348
	movs	r2, #0
	str	r2, [r3]
	b	.L2
.L3:
	add	r3, r7, #376
	sub	r3, r3, #348
	ldr	r3, [r3]
	lsls	r3, r3, #2
	mov	r2, r3
	add	r3, r7, #376
	sub	r3, r3, #376
	ldr	r3, [r3]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	add	r3, r7, #376
	sub	r3, r3, #348
	ldr	r3, [r3]
	lsls	r3, r3, #2
	adds	r3, r3, #1
	add	r1, r7, #376
	sub	r1, r1, #376
	ldr	r1, [r1]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	add	r3, r7, #376
	sub	r3, r3, #348
	ldr	r3, [r3]
	lsls	r3, r3, #2
	adds	r3, r3, #2
	add	r1, r7, #376
	sub	r1, r1, #376
	ldr	r1, [r1]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r3, r3, r2
	add	r2, r7, #376
	sub	r2, r2, #348
	ldr	r2, [r2]
	lsls	r2, r2, #2
	adds	r2, r2, #3
	add	r1, r7, #376
	sub	r1, r1, #376
	ldr	r1, [r1]
	add	r2, r2, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	orrs	r3, r3, r2
	mov	r1, r3
	add	r3, r7, #376
	sub	r3, r3, #324
	add	r2, r7, #376
	sub	r2, r2, #348
	ldr	r2, [r2]
	str	r1, [r3, r2, lsl #2]
	add	r3, r7, #376
	sub	r3, r3, #348
	add	r2, r7, #376
	sub	r2, r2, #348
	ldr	r2, [r2]
	adds	r2, r2, #1
	str	r2, [r3]
.L2:
	add	r3, r7, #376
	sub	r3, r3, #348
	ldr	r3, [r3]
	cmp	r3, #15
	ble	.L3
	add	r3, r7, #376
	sub	r3, r3, #344
	movs	r2, #16
	str	r2, [r3]
	b	.L4
.L5:
	add	r3, r7, #376
	sub	r3, r3, #344
	ldr	r3, [r3]
	subs	r2, r3, #3
	add	r3, r7, #376
	sub	r3, r3, #324
	ldr	r2, [r3, r2, lsl #2]
	add	r3, r7, #376
	sub	r3, r3, #344
	ldr	r3, [r3]
	sub	r1, r3, #8
	add	r3, r7, #376
	sub	r3, r3, #324
	ldr	r3, [r3, r1, lsl #2]
	eors	r2, r2, r3
	add	r3, r7, #376
	sub	r3, r3, #344
	ldr	r3, [r3]
	sub	r1, r3, #14
	add	r3, r7, #376
	sub	r3, r3, #324
	ldr	r3, [r3, r1, lsl #2]
	eors	r2, r2, r3
	add	r3, r7, #376
	sub	r3, r3, #344
	ldr	r3, [r3]
	sub	r1, r3, #16
	add	r3, r7, #376
	sub	r3, r3, #324
	ldr	r3, [r3, r1, lsl #2]
	eors	r3, r3, r2
	ror	r1, r3, #31
	add	r3, r7, #376
	sub	r3, r3, #324
	add	r2, r7, #376
	sub	r2, r2, #344
	ldr	r2, [r2]
	str	r1, [r3, r2, lsl #2]
	add	r3, r7, #376
	sub	r3, r3, #344
	add	r2, r7, #376
	sub	r2, r2, #344
	ldr	r2, [r2]
	adds	r2, r2, #1
	str	r2, [r3]
.L4:
	add	r3, r7, #376
	sub	r3, r3, #344
	ldr	r3, [r3]
	cmp	r3, #79
	ble	.L5
	add	r3, r7, #376
	sub	r3, r3, #340
	movs	r2, #0
	str	r2, [r3]
	b	.L6
.L11:
	add	r3, r7, #376
	sub	r3, r3, #340
	ldr	r3, [r3]
	cmp	r3, #19
	bgt	.L7
	add	r3, r7, #376
	sub	r2, r3, #364
	add	r3, r7, #376
	sub	r3, r3, #360
	ldr	r2, [r2]
	ldr	r3, [r3]
	and	r1, r2, r3
	add	r3, r7, #376
	sub	r3, r3, #364
	ldr	r3, [r3]
	mvns	r2, r3
	add	r3, r7, #376
	sub	r3, r3, #356
	ldr	r3, [r3]
	ands	r2, r2, r3
	add	r3, r7, #376
	sub	r3, r3, #336
	orrs	r2, r2, r1
	str	r2, [r3]
	add	r3, r7, #376
	sub	r2, r3, #332
	movw	r3, #31129
	movt	r3, 23170
	str	r3, [r2]
	b	.L8
.L7:
	add	r3, r7, #376
	sub	r3, r3, #340
	ldr	r3, [r3]
	cmp	r3, #39
	bgt	.L9
	add	r3, r7, #376
	sub	r2, r3, #364
	add	r3, r7, #376
	sub	r3, r3, #360
	ldr	r2, [r2]
	ldr	r3, [r3]
	eors	r2, r2, r3
	add	r3, r7, #376
	sub	r3, r3, #336
	add	r1, r7, #376
	sub	r1, r1, #356
	ldr	r1, [r1]
	eors	r2, r2, r1
	str	r2, [r3]
	add	r3, r7, #376
	sub	r2, r3, #332
	movw	r3, #60321
	movt	r3, 28377
	str	r3, [r2]
	b	.L8
.L9:
	add	r3, r7, #376
	sub	r3, r3, #340
	ldr	r3, [r3]
	cmp	r3, #59
	bgt	.L10
	add	r3, r7, #376
	sub	r2, r3, #360
	add	r3, r7, #376
	sub	r3, r3, #356
	ldr	r2, [r2]
	ldr	r3, [r3]
	orrs	r2, r2, r3
	add	r3, r7, #376
	sub	r3, r3, #364
	ldr	r3, [r3]
	and	r1, r2, r3
	add	r3, r7, #376
	sub	r2, r3, #360
	add	r3, r7, #376
	sub	r3, r3, #356
	ldr	r2, [r2]
	ldr	r3, [r3]
	ands	r2, r2, r3
	add	r3, r7, #376
	sub	r3, r3, #336
	orrs	r2, r2, r1
	str	r2, [r3]
	add	r3, r7, #376
	sub	r2, r3, #332
	movw	r3, #48348
	movt	r3, 36635
	str	r3, [r2]
	b	.L8
.L10:
	add	r3, r7, #376
	sub	r2, r3, #364
	add	r3, r7, #376
	sub	r3, r3, #360
	ldr	r2, [r2]
	ldr	r3, [r3]
	eors	r2, r2, r3
	add	r3, r7, #376
	sub	r3, r3, #336
	add	r1, r7, #376
	sub	r1, r1, #356
	ldr	r1, [r1]
	eors	r2, r2, r1
	str	r2, [r3]
	add	r3, r7, #376
	sub	r2, r3, #332
	movw	r3, #49622
	movt	r3, 51810
	str	r3, [r2]
.L8:
	add	r3, r7, #376
	sub	r3, r3, #368
	ldr	r3, [r3]
	ror	r2, r3, #27
	add	r3, r7, #376
	sub	r3, r3, #336
	ldr	r3, [r3]
	add	r2, r2, r3
	add	r3, r7, #376
	sub	r3, r3, #352
	ldr	r3, [r3]
	add	r2, r2, r3
	add	r3, r7, #376
	sub	r3, r3, #332
	ldr	r3, [r3]
	adds	r1, r2, r3
	add	r3, r7, #376
	sub	r3, r3, #324
	add	r2, r7, #376
	sub	r2, r2, #340
	ldr	r2, [r2]
	ldr	r2, [r3, r2, lsl #2]
	add	r3, r7, #376
	sub	r3, r3, #328
	add	r2, r2, r1
	str	r2, [r3]
	add	r3, r7, #376
	sub	r3, r3, #352
	add	r2, r7, #376
	sub	r2, r2, #356
	ldr	r2, [r2]
	str	r2, [r3]
	add	r3, r7, #376
	sub	r3, r3, #356
	add	r2, r7, #376
	sub	r2, r2, #360
	ldr	r2, [r2]
	str	r2, [r3]
	add	r3, r7, #376
	sub	r3, r3, #360
	add	r2, r7, #376
	sub	r2, r2, #364
	ldr	r2, [r2]
	ror	r2, r2, #2
	str	r2, [r3]
	add	r3, r7, #376
	sub	r3, r3, #364
	add	r2, r7, #376
	sub	r2, r2, #368
	ldr	r2, [r2]
	str	r2, [r3]
	add	r3, r7, #376
	sub	r3, r3, #368
	add	r2, r7, #376
	sub	r2, r2, #328
	ldr	r2, [r2]
	str	r2, [r3]
	add	r3, r7, #376
	sub	r3, r3, #340
	add	r2, r7, #376
	sub	r2, r2, #340
	ldr	r2, [r2]
	adds	r2, r2, #1
	str	r2, [r3]
.L6:
	add	r3, r7, #376
	sub	r3, r3, #340
	ldr	r3, [r3]
	cmp	r3, #79
	ble	.L11
	add	r3, r7, #376
	sub	r3, r3, #372
	ldr	r3, [r3]
	ldr	r2, [r3]
	add	r3, r7, #376
	sub	r3, r3, #368
	ldr	r3, [r3]
	add	r2, r2, r3
	add	r3, r7, #376
	sub	r3, r3, #372
	ldr	r3, [r3]
	str	r2, [r3]
	add	r3, r7, #376
	sub	r3, r3, #372
	ldr	r3, [r3]
	adds	r3, r3, #4
	ldr	r1, [r3]
	add	r3, r7, #376
	sub	r3, r3, #372
	ldr	r3, [r3]
	adds	r3, r3, #4
	add	r2, r7, #376
	sub	r2, r2, #364
	ldr	r2, [r2]
	add	r2, r2, r1
	str	r2, [r3]
	add	r3, r7, #376
	sub	r3, r3, #372
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r1, [r3]
	add	r3, r7, #376
	sub	r3, r3, #372
	ldr	r3, [r3]
	adds	r3, r3, #8
	add	r2, r7, #376
	sub	r2, r2, #360
	ldr	r2, [r2]
	add	r2, r2, r1
	str	r2, [r3]
	add	r3, r7, #376
	sub	r3, r3, #372
	ldr	r3, [r3]
	adds	r3, r3, #12
	ldr	r1, [r3]
	add	r3, r7, #376
	sub	r3, r3, #372
	ldr	r3, [r3]
	adds	r3, r3, #12
	add	r2, r7, #376
	sub	r2, r2, #356
	ldr	r2, [r2]
	add	r2, r2, r1
	str	r2, [r3]
	add	r3, r7, #376
	sub	r3, r3, #372
	ldr	r3, [r3]
	adds	r3, r3, #16
	ldr	r1, [r3]
	add	r3, r7, #376
	sub	r3, r3, #372
	ldr	r3, [r3]
	adds	r3, r3, #16
	add	r2, r7, #376
	sub	r2, r2, #352
	ldr	r2, [r2]
	add	r2, r2, r1
	str	r2, [r3]
	nop
	ldr	r2, .L13+8
.LPIC1:
	add	r2, pc
	ldr	r3, .L13+4
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #372]
	eors	r2, r3, r2
	mov	r3, #0
	beq	.L12
	bl	__stack_chk_fail(PLT)
.L12:
	add	r7, r7, #376
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L14:
	.align	2
.L13:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC1+4)
	.size	sha1_transform, .-sha1_transform
	.align	1
	.global	sha1_init
	.syntax unified
	.thumb
	.thumb_func
	.type	sha1_init, %function
sha1_init:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r2, [r7, #4]
	movw	r3, #8961
	movt	r3, 26437
	str	r3, [r2]
	ldr	r2, [r7, #4]
	movw	r3, #43913
	movt	r3, 61389
	str	r3, [r2, #4]
	ldr	r2, [r7, #4]
	movw	r3, #56574
	movt	r3, 39098
	str	r3, [r2, #8]
	ldr	r2, [r7, #4]
	movw	r3, #21622
	movt	r3, 4146
	str	r3, [r2, #12]
	ldr	r2, [r7, #4]
	movw	r3, #57840
	movt	r3, 50130
	str	r3, [r2, #16]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	sha1_init, .-sha1_init
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
