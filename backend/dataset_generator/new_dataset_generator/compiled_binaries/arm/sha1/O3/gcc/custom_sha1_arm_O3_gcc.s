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
	@ args = 0, pretend = 0, frame = 344
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r2, .L18
	ldr	r3, .L18+4
	sub	sp, sp, #348
	ldrb	r6, [r1]	@ zero_extendqisi2
.LPIC1:
	add	r2, pc
	ldrb	r5, [r1, #3]	@ zero_extendqisi2
	add	r7, sp, #20
	ldrb	r4, [r1, #5]	@ zero_extendqisi2
	ldr	r3, [r2, r3]
	orr	r5, r5, r6, lsl #24
	ldrb	r6, [r1, #4]	@ zero_extendqisi2
	ldr	r3, [r3]
	str	r3, [sp, #340]
	mov	r3, #0
	ldr	r8, [r0, #8]
	ldrd	r10, r9, [r0]
	str	r0, [sp, #4]
	lsls	r4, r4, #16
	ldrb	r0, [r1, #9]	@ zero_extendqisi2
	orr	r4, r4, r6, lsl #24
	ldrb	r6, [r1, #8]	@ zero_extendqisi2
	ldrb	r2, [r1, #13]	@ zero_extendqisi2
	lsls	r0, r0, #16
	ldrb	r3, [r1, #17]	@ zero_extendqisi2
	orr	r0, r0, r6, lsl #24
	ldrb	r6, [r1, #12]	@ zero_extendqisi2
	lsls	r2, r2, #16
	lsls	r3, r3, #16
	orr	r2, r2, r6, lsl #24
	ldrb	r6, [r1, #16]	@ zero_extendqisi2
	orr	r3, r3, r6, lsl #24
	ldrb	r6, [r1, #1]	@ zero_extendqisi2
	orr	r5, r5, r6, lsl #16
	ldrb	r6, [r1, #2]	@ zero_extendqisi2
	orr	r5, r5, r6, lsl #8
	str	r5, [sp]
	str	r5, [r7]
	ldrb	r5, [r1, #7]	@ zero_extendqisi2
	orrs	r4, r4, r5
	ldrb	r5, [r1, #6]	@ zero_extendqisi2
	orr	lr, r4, r5, lsl #8
	ldrb	r4, [r1, #11]	@ zero_extendqisi2
	str	lr, [r7, #4]
	orrs	r0, r0, r4
	ldrb	r4, [r1, #10]	@ zero_extendqisi2
	orr	r0, r0, r4, lsl #8
	str	r0, [r7, #8]
	ldrb	r0, [r1, #15]	@ zero_extendqisi2
	orrs	r2, r2, r0
	ldrb	r0, [r1, #14]	@ zero_extendqisi2
	orr	r2, r2, r0, lsl #8
	str	r2, [r7, #12]
	ldrb	r2, [r1, #19]	@ zero_extendqisi2
	ldrb	r5, [r1, #25]	@ zero_extendqisi2
	orrs	r3, r3, r2
	ldrb	r2, [r1, #18]	@ zero_extendqisi2
	ldrb	ip, [r1, #24]	@ zero_extendqisi2
	ldrb	r4, [r1, #29]	@ zero_extendqisi2
	lsls	r5, r5, #16
	orr	r3, r3, r2, lsl #8
	str	r3, [r7, #16]
	ldr	r3, [sp, #4]
	orr	ip, r5, ip, lsl #24
	ldrb	r5, [r1, #28]	@ zero_extendqisi2
	lsls	r4, r4, #16
	ldrb	r2, [r1, #20]	@ zero_extendqisi2
	ldrd	r6, fp, [r3, #12]
	orr	r4, r4, r5, lsl #24
	ldrb	r3, [r1, #21]	@ zero_extendqisi2
	ldrb	r0, [r1, #33]	@ zero_extendqisi2
	str	r4, [sp, #12]
	ldrb	r4, [r1, #32]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orr	r3, r3, r2, lsl #24
	lsls	r0, r0, #16
	ldrb	r2, [r1, #37]	@ zero_extendqisi2
	orr	r0, r0, r4, lsl #24
	ldrb	r4, [r1, #36]	@ zero_extendqisi2
	str	r3, [sp, #8]
	lsls	r2, r2, #16
	ldrb	r3, [r1, #41]	@ zero_extendqisi2
	orr	r2, r2, r4, lsl #24
	ldrb	r4, [r1, #40]	@ zero_extendqisi2
	ldr	r5, [sp, #8]
	lsls	r3, r3, #16
	orr	r3, r3, r4, lsl #24
	ldrb	r4, [r1, #23]	@ zero_extendqisi2
	orrs	r4, r4, r5
	ldrb	r5, [r1, #22]	@ zero_extendqisi2
	orr	r4, r4, r5, lsl #8
	ldrb	r5, [r1, #26]	@ zero_extendqisi2
	str	r4, [r7, #20]
	ldrb	r4, [r1, #27]	@ zero_extendqisi2
	orr	r4, ip, r4
	orr	r4, r4, r5, lsl #8
	ldr	r5, [sp, #12]
	str	r4, [r7, #24]
	ldrb	r4, [r1, #31]	@ zero_extendqisi2
	orrs	r4, r4, r5
	ldrb	r5, [r1, #30]	@ zero_extendqisi2
	orr	r4, r4, r5, lsl #8
	str	r4, [r7, #28]
	ldrb	r4, [r1, #35]	@ zero_extendqisi2
	orrs	r0, r0, r4
	ldrb	r4, [r1, #34]	@ zero_extendqisi2
	ldrb	r5, [r1, #49]	@ zero_extendqisi2
	ldrb	ip, [r1, #48]	@ zero_extendqisi2
	orr	r0, r0, r4, lsl #8
	str	r0, [r7, #32]
	ldrb	r0, [r1, #39]	@ zero_extendqisi2
	lsls	r5, r5, #16
	ldrb	r4, [r1, #53]	@ zero_extendqisi2
	orr	r5, r5, ip, lsl #24
	orrs	r2, r2, r0
	ldrb	r0, [r1, #38]	@ zero_extendqisi2
	ldrb	ip, [r1, #52]	@ zero_extendqisi2
	lsls	r4, r4, #16
	orr	r2, r2, r0, lsl #8
	str	r2, [r7, #36]
	ldrb	r2, [r1, #43]	@ zero_extendqisi2
	orr	r4, r4, ip, lsl #24
	ldrb	r0, [r1, #57]	@ zero_extendqisi2
	orrs	r3, r3, r2
	ldrb	r2, [r1, #42]	@ zero_extendqisi2
	ldrb	ip, [r1, #56]	@ zero_extendqisi2
	lsls	r0, r0, #16
	orr	r3, r3, r2, lsl #8
	str	r3, [r7, #40]
	ldrb	r3, [r1, #45]	@ zero_extendqisi2
	orr	r0, r0, ip, lsl #24
	ldrb	r2, [r1, #44]	@ zero_extendqisi2
	ldrb	ip, [r1, #60]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orr	r3, r3, r2, lsl #24
	ldrb	r2, [r1, #47]	@ zero_extendqisi2
	orrs	r3, r3, r2
	ldrb	r2, [r1, #61]	@ zero_extendqisi2
	lsls	r2, r2, #16
	orr	r2, r2, ip, lsl #24
	ldrb	ip, [r1, #46]	@ zero_extendqisi2
	orr	r3, r3, ip, lsl #8
	str	r3, [r7, #44]
	ldrb	r3, [r1, #51]	@ zero_extendqisi2
	mov	ip, #16
	orrs	r3, r3, r5
	ldrb	r5, [r1, #50]	@ zero_extendqisi2
	orr	r3, r3, r5, lsl #8
	str	r3, [r7, #48]
	ldrb	r3, [r1, #55]	@ zero_extendqisi2
	mov	r5, r7
	orrs	r4, r4, r3
	ldrb	r3, [r1, #54]	@ zero_extendqisi2
	orr	r4, r4, r3, lsl #8
	ldrb	r3, [r1, #59]	@ zero_extendqisi2
	str	r4, [r7, #52]
	orrs	r0, r0, r3
	ldrb	r3, [r1, #58]	@ zero_extendqisi2
	orr	r0, r0, r3, lsl #8
	ldrb	r3, [r1, #63]	@ zero_extendqisi2
	str	r0, [r7, #56]
	orrs	r3, r3, r2
	ldrb	r2, [r1, #62]	@ zero_extendqisi2
	orr	r3, r3, r2, lsl #8
	str	r3, [r7, #60]
	ldr	r1, [sp]
	str	r3, [sp]
.L2:
	ldr	r3, [r5, #8]
	add	ip, ip, #3
	ldr	r2, [r5, #32]
	cmp	ip, #79
	add	r5, r5, #12
	eor	r2, r2, r3
	eor	r2, r2, r4
	eor	r2, r2, r1
	ldr	r1, [r5]
	ror	r4, r2, #31
	ldr	r2, [r5, #24]
	str	r4, [r5, #52]
	eor	r2, r2, r1
	eor	r2, r2, lr
	ldr	lr, [r5, #4]
	eor	r2, r2, r0
	ror	r0, r2, #31
	ldr	r2, [r5, #28]
	str	r0, [r5, #56]
	eor	r2, r2, r3
	ldr	r3, [sp]
	eor	r2, r2, lr
	eor	r3, r3, r2
	ror	r3, r3, #31
	str	r3, [r5, #60]
	str	r3, [sp]
	bne	.L2
	ldr	r0, [r7, #304]
	add	r4, sp, #16
	ldr	r3, [r7, #284]
	mov	r5, fp
	ldr	r1, [r7, #260]
	mov	ip, r8
	eors	r3, r3, r0
	ldr	r2, [r7, #252]
	eors	r3, r3, r1
	mov	r0, r6
	eors	r2, r2, r3
	mov	lr, r10
	mov	r3, r9
	str	r10, [sp]
	ror	r2, r2, #31
	str	r2, [r7, #316]
	movs	r2, #0
	b	.L8
.L16:
	eor	r1, r0, ip
	movw	r10, #60321
	movt	r10, 28377
	eors	r1, r1, r3
.L4:
	ror	r7, r3, #2
	ldr	r3, [r4, #4]!
	adds	r2, r2, #1
	add	r3, r3, lr, ror #27
	add	r3, r3, r10
	add	r1, r1, r3
	add	r1, r1, r5
.L9:
	mov	r5, r0
	mov	r3, lr
	mov	r0, ip
	mov	lr, r1
	mov	ip, r7
.L8:
	cmp	r2, #19
	ble	.L15
	cmp	r2, #39
	ble	.L16
	cmp	r2, #59
	bgt	.L6
	orr	r1, r0, ip
	and	r7, r0, ip
	ands	r1, r1, r3
	movw	r10, #48348
	movt	r10, 36635
	orrs	r1, r1, r7
	b	.L4
.L15:
	eor	r1, r0, ip
	movw	r10, #31129
	movt	r10, 23170
	ands	r1, r1, r3
	eors	r1, r1, r0
	b	.L4
.L6:
	ldr	r1, [r4, #4]!
	eor	r7, r0, ip
	eor	r10, r7, r3
	ror	r7, r3, #2
	movw	r3, #49622
	movt	r3, 51810
	add	r1, r1, lr, ror #27
	adds	r2, r2, #1
	add	r3, r3, r1
	cmp	r2, #80
	add	r3, r3, r10
	add	r1, r3, r5
	bne	.L9
	ldr	r3, [sp, #4]
	add	r7, r7, r8
	ldr	r10, [sp]
	add	r6, r6, ip
	ldr	r2, .L18+8
	add	r0, r0, fp
	add	r4, r10, r1
	strd	r7, r6, [r3, #8]
	str	r0, [r3, #16]
	add	r1, r9, lr
	strd	r4, r1, [r3]
.LPIC0:
	add	r2, pc
	ldr	r3, .L18+4
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #340]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L17
	add	sp, sp, #348
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
