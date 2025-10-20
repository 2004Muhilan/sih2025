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
	.file	"custom_md5.c"
	.text
	.align	1
	.global	md5_transform
	.syntax unified
	.thumb
	.thumb_func
	.type	md5_transform, %function
md5_transform:
	@ args = 0, pretend = 0, frame = 112
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #112
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r2, .L7
.LPIC0:
	add	r2, pc
	ldr	r3, .L7+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [r7, #108]
	mov	r3, #0
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L2
.L3:
	ldr	r3, [r7, #28]
	ldr	r2, [r7]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	ldr	r2, [r7]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orr	r2, r1, r3
	ldr	r3, [r7, #28]
	adds	r3, r3, #2
	ldr	r1, [r7]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #28]
	adds	r3, r3, #3
	ldr	r1, [r7]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #24
	orrs	r3, r3, r2
	mov	r2, r3
	ldr	r3, [r7, #24]
	lsls	r3, r3, #2
	adds	r3, r3, #112
	add	r3, r3, r7
	str	r2, [r3, #-68]
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	str	r3, [r7, #24]
	ldr	r3, [r7, #28]
	adds	r3, r3, #4
	str	r3, [r7, #28]
.L2:
	ldr	r3, [r7, #24]
	cmp	r3, #15
	ble	.L3
	movs	r3, #0
	str	r3, [r7, #32]
	b	.L4
.L5:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #16]
	ands	r2, r2, r3
	ldr	r3, [r7, #12]
	mvns	r1, r3
	ldr	r3, [r7, #20]
	ands	r3, r3, r1
	orrs	r3, r3, r2
	str	r3, [r7, #36]
	ldr	r3, [r7, #20]
	str	r3, [r7, #40]
	ldr	r3, [r7, #16]
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	str	r3, [r7, #16]
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #36]
	add	r2, r2, r3
	ldr	r3, [r7, #32]
	lsls	r3, r3, #2
	adds	r3, r3, #112
	add	r3, r3, r7
	ldr	r3, [r3, #-68]
	add	r3, r3, r2
	ror	r3, r3, #25
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #40]
	str	r3, [r7, #8]
	ldr	r3, [r7, #32]
	adds	r3, r3, #1
	str	r3, [r7, #32]
.L4:
	ldr	r3, [r7, #32]
	cmp	r3, #15
	ble	.L5
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	ldr	r1, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	ldr	r2, [r7, #12]
	add	r2, r2, r1
	str	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #8
	ldr	r1, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #8
	ldr	r2, [r7, #16]
	add	r2, r2, r1
	str	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #12
	ldr	r1, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #12
	ldr	r2, [r7, #20]
	add	r2, r2, r1
	str	r2, [r3]
	nop
	ldr	r2, .L7+8
.LPIC1:
	add	r2, pc
	ldr	r3, .L7+4
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #108]
	eors	r2, r3, r2
	mov	r3, #0
	beq	.L6
	bl	__stack_chk_fail(PLT)
.L6:
	adds	r7, r7, #112
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L8:
	.align	2
.L7:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC1+4)
	.size	md5_transform, .-md5_transform
	.align	1
	.global	md5_init
	.syntax unified
	.thumb
	.thumb_func
	.type	md5_init, %function
md5_init:
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
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	md5_init, .-md5_init
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
