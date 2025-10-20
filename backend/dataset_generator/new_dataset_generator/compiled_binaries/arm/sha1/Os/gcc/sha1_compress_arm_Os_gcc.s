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
	.file	"sha1_compress.c"
	.text
	.align	1
	.global	sha1_compress
	.syntax unified
	.thumb
	.thumb_func
	.type	sha1_compress, %function
sha1_compress:
	@ args = 0, pretend = 0, frame = 336
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, r0
	ldr	r0, .L13
	ldr	r3, .L13+4
.LPIC1:
	add	r0, pc
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r7, r1, #64
	sub	sp, sp, #340
	ldr	r3, [r0, r3]
	add	r4, sp, #12
	mov	r6, r4
	ldr	r3, [r3]
	str	r3, [sp, #332]
	mov	r3, #0
	mov	r3, r1
.L2:
	mov	r5, r6
	ldr	r0, [r3]	@ unaligned
	ldr	r1, [r3, #4]	@ unaligned
	adds	r3, r3, #8
	cmp	r3, r7
	stmia	r5!, {r0, r1}
	mov	r6, r5
	bne	.L2
	mov	r1, r4
	movs	r4, #16
.L3:
	mov	r0, r1
	adds	r1, r1, #4
	adds	r4, r4, #1
	cmp	r4, #80
	ldr	r5, [r0, #32]
	ldr	r3, [r0, #52]
	eor	r3, r3, r5
	ldr	r5, [r0, #8]
	ldr	r0, [r0]
	eor	r3, r3, r5
	eor	r3, r3, r0
	ror	r3, r3, #31
	str	r3, [r1, #60]
	bne	.L3
	ldrd	r7, r3, [r2, #8]
	str	r3, [sp]
	ldrd	r8, ip, [r2]
	mov	r4, r7
	ldr	r3, [r2, #16]
	movs	r5, #0
	ldr	r0, [sp]
	mov	r6, ip
	mov	r10, r3
	mov	lr, r8
	add	fp, sp, #12
	str	r3, [sp, #4]
.L8:
	cmp	r5, #19
	bgt	.L4
	eor	r3, r4, r0
	ldr	r9, .L13+8
	ands	r3, r3, r6
	eors	r3, r3, r0
.L5:
	ldr	r1, [fp, r5, lsl #2]
	adds	r5, r5, #1
	cmp	r5, #80
	add	r1, r1, lr, ror #27
	add	r1, r1, r3
	ror	r3, r6, #2
	add	r1, r1, r9
	mov	r6, lr
	add	r1, r1, r10
	mov	r10, r0
	bne	.L10
	add	r7, r7, r3
	ldr	r3, [sp]
	str	r7, [r2, #8]
	add	r1, r1, r8
	add	r3, r3, r4
	str	r3, [r2, #12]
	ldr	r3, [sp, #4]
	str	r1, [r2]
	add	r1, ip, lr
	add	r3, r3, r0
	str	r1, [r2, #4]
	str	r3, [r2, #16]
	ldr	r2, .L13+12
	ldr	r3, .L13+4
.LPIC0:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #332]
	eors	r2, r3, r2
	mov	r3, #0
	beq	.L9
	bl	__stack_chk_fail(PLT)
.L10:
	mov	r0, r4
	mov	lr, r1
	mov	r4, r3
	b	.L8
.L4:
	cmp	r5, #39
	bgt	.L6
	eor	r3, r6, r4
	ldr	r9, .L13+16
	eors	r3, r3, r0
	b	.L5
.L6:
	cmp	r5, #59
	ittte	le
	orrle	r3, r4, r0
	andle	r1, r4, r0
	andle	r3, r3, r6
	eorgt	r3, r6, r4
	ittee	le
	ldrle	r9, .L13+20
	orrle	r3, r3, r1
	ldrgt	r9, .L13+24
	eorgt	r3, r3, r0
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
	.size	sha1_compress, .-sha1_compress
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
