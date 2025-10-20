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
	.file	"md5_padding.c"
	.text
	.align	1
	.global	md5_padding
	.syntax unified
	.thumb
	.thumb_func
	.type	md5_padding, %function
md5_padding:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r2, .L3
.LPIC0:
	add	r2, pc
	ldr	r3, .L3+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [r7, #36]
	mov	r3, #0
	ldr	r2, [r7, #8]
	ldr	r1, [r7, #12]
	ldr	r0, [r7, #4]
	bl	memcpy(PLT)
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #8]
	add	r3, r3, r2
	movs	r2, #128
	strb	r2, [r3]
	ldr	r3, [r7, #8]
	rsb	r3, r3, #55
	and	r3, r3, #63
	str	r3, [r7, #20]
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldr	r2, [r7, #20]
	movs	r1, #0
	mov	r0, r3
	bl	memset(PLT)
	ldr	r3, [r7, #8]
	lsls	r3, r3, #3
	movs	r2, #0
	mov	r4, r3
	mov	r5, r2
	strd	r4, [r7, #24]
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	adds	r3, r3, #1
	ldr	r2, [r7, #4]
	adds	r1, r2, r3
	ldrd	r2, [r7, #24]
	str	r2, [r1]	@ unaligned
	str	r3, [r1, #4]	@ unaligned
	nop
	ldr	r2, .L3+8
.LPIC1:
	add	r2, pc
	ldr	r3, .L3+4
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #36]
	eors	r2, r3, r2
	mov	r3, #0
	beq	.L2
	bl	__stack_chk_fail(PLT)
.L2:
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L4:
	.align	2
.L3:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC1+4)
	.size	md5_padding, .-md5_padding
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
