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
	.file	"hmac_sha256.c"
	.text
	.align	1
	.p2align 2,,3
	.global	hmac_sha256
	.syntax unified
	.thumb
	.thumb_func
	.type	hmac_sha256, %function
hmac_sha256:
	@ args = 4, pretend = 0, frame = 136
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L13
	push	{r4, r5, r6, r7, lr}
	mov	r4, r0
	ldr	r3, .L13+4
.LPIC1:
	add	r2, pc
	sub	sp, sp, #140
	add	lr, sp, #-1
	add	ip, sp, #63
	movs	r6, #54
	movs	r5, #92
	ldr	r3, [r2, r3]
	ldr	r7, [sp, #160]
	ldr	r3, [r3]
	str	r3, [sp, #132]
	mov	r3, #0
	movs	r3, #0
.L5:
	cmp	r3, r1
	bcs	.L2
	ldrb	r2, [r4, r3]	@ zero_extendqisi2
	adds	r3, r3, #1
	cmp	r3, #64
	eor	r0, r2, #54
	eor	r2, r2, #92
	strb	r0, [lr, #1]!
	strb	r2, [ip, #1]!
	bne	.L5
.L4:
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #12]
	ldr	r2, [sp, #72]
	ldr	r3, [sp, #76]
	eors	r2, r2, r0
	str	r2, [r7, #8]	@ unaligned
	eors	r3, r3, r1
	str	r3, [r7, #12]	@ unaligned
	ldrd	r0, r3, [sp, #80]
	ldr	r2, [sp, #16]
	ldr	r1, [sp, #20]
	eors	r2, r2, r0
	ldr	r0, [sp]
	str	r2, [r7, #16]	@ unaligned
	eors	r3, r3, r1
	ldr	r2, [sp, #64]
	str	r3, [r7, #20]	@ unaligned
	eors	r2, r2, r0
	ldr	r3, [sp, #88]
	str	r2, [r7]	@ unaligned
	ldr	r1, [sp, #24]
	ldr	r2, [sp, #68]
	ldr	r0, [sp, #4]
	eors	r1, r1, r3
	ldr	r3, [sp, #92]
	eors	r2, r2, r0
	str	r2, [r7, #4]	@ unaligned
	ldr	r2, [sp, #28]
	str	r1, [r7, #24]	@ unaligned
	eors	r3, r3, r2
	ldr	r2, .L13+8
	str	r3, [r7, #28]	@ unaligned
	ldr	r3, .L13+4
.LPIC0:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #132]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L12
	add	sp, sp, #140
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L2:
	adds	r3, r3, #1
	strb	r6, [lr, #1]!
	cmp	r3, #64
	strb	r5, [ip, #1]!
	bne	.L5
	b	.L4
.L12:
	bl	__stack_chk_fail(PLT)
.L14:
	.align	2
.L13:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC1+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+4)
	.size	hmac_sha256, .-hmac_sha256
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
