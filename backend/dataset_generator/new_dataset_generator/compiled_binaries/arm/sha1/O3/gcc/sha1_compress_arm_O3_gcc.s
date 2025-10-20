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
	.file	"sha1_compress.c"
	.text
	.align	1
	.p2align 2,,3
	.global	sha1_compress
	.syntax unified
	.thumb
	.thumb_func
	.type	sha1_compress, %function
sha1_compress:
	@ args = 0, pretend = 0, frame = 336
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L20
	add	ip, r1, #64
	ldr	r3, .L20+4
.LPIC1:
	add	r2, pc
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r5, r1
	sub	sp, sp, #340
	mov	lr, r0
	ldr	r3, [r2, r3]
	add	r4, sp, #12
	mov	r7, r4
	ldr	r3, [r3]
	str	r3, [sp, #332]
	mov	r3, #0
.L2:
	mov	r6, r7
	ldr	r0, [r5]	@ unaligned
	ldr	r1, [r5, #4]	@ unaligned
	adds	r5, r5, #16
	ldr	r2, [r5, #-8]	@ unaligned
	ldr	r3, [r5, #-4]	@ unaligned
	cmp	r5, ip
	stmia	r6!, {r0, r1, r2, r3}
	mov	r7, r6
	bne	.L2
	ldrd	r8, ip, [r4, #52]
	mov	r0, r4
	ldr	r3, [r4, #60]
	movs	r7, #16
	ldrd	r6, r2, [r4]
.L3:
	adds	r7, r7, #3
	ldr	r1, [r0, #8]
	cmp	r7, #79
	ldr	r5, [r0, #32]
	add	r0, r0, #12
	eor	r5, r5, r1
	eor	r5, r5, r8
	eor	r5, r5, r6
	ldr	r6, [r0]
	ror	r8, r5, #31
	ldr	r5, [r0, #24]
	str	r8, [r0, #52]
	eor	r5, r5, r6
	eor	r2, r2, r5
	eor	r2, r2, ip
	ror	ip, r2, #31
	ldr	r2, [r0, #28]
	str	ip, [r0, #56]
	eor	r1, r1, r2
	ldr	r2, [r0, #4]
	eor	r1, r1, r2
	eor	r3, r3, r1
	ror	r3, r3, #31
	str	r3, [r0, #60]
	bne	.L3
	ldr	r3, [r4, #284]
	ldr	r1, [r4, #304]
	ldr	r0, [r4, #260]
	eor	r5, r3, r1
	ldr	r2, [r4, #252]
	ldrd	r9, r3, [lr]
	eors	r0, r0, r5
	ldrd	r7, r1, [lr, #8]
	eors	r2, r2, r0
	ldr	r6, [lr, #16]
	add	r5, sp, #8
	ror	r2, r2, #31
	str	r9, [sp, #4]
	str	r2, [r4, #316]
	mov	ip, r1
	mov	r4, r9
	mov	r0, r7
	movs	r2, #0
	mov	r9, r3
	str	r6, [sp]
	b	.L9
.L18:
	eor	fp, ip, r0
	movw	r8, #60321
	movt	r8, 28377
	eor	fp, fp, r9
.L5:
	ror	r10, r9, #2
	ldr	r9, [r5, #4]!
	adds	r2, r2, #1
	add	r9, r9, r4, ror #27
	add	r9, r9, r8
	add	fp, fp, r9
	add	fp, fp, r6
.L10:
	mov	r6, ip
	mov	r9, r4
	mov	ip, r0
	mov	r4, fp
	mov	r0, r10
.L9:
	cmp	r2, #19
	ble	.L17
	cmp	r2, #39
	ble	.L18
	cmp	r2, #59
	bgt	.L7
	orr	fp, ip, r0
	and	r8, ip, r0
	and	fp, fp, r9
	orr	fp, fp, r8
	movw	r8, #48348
	movt	r8, 36635
	b	.L5
.L17:
	eor	fp, ip, r0
	movw	r8, #31129
	movt	r8, 23170
	and	fp, fp, r9
	eor	fp, fp, ip
	b	.L5
.L7:
	ldr	r8, [r5, #4]!
	eor	r10, ip, r0
	eor	fp, r10, r9
	ror	r10, r9, #2
	movw	r9, #49622
	movt	r9, 51810
	add	r8, r8, r4, ror #27
	adds	r2, r2, #1
	add	r9, r9, r8
	cmp	r2, #80
	add	r9, r9, fp
	add	fp, r9, r6
	bne	.L10
	ldr	r2, [sp]
	add	r3, r3, r4
	ldr	r9, [sp, #4]
	add	r7, r7, r10
	add	r2, r2, ip
	str	r2, [lr, #16]
	ldr	r2, .L20+8
	add	r5, r9, fp
	strd	r5, r3, [lr]
	add	r1, r1, r0
	ldr	r3, .L20+4
.LPIC0:
	add	r2, pc
	strd	r7, r1, [lr, #8]
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #332]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L19
	add	sp, sp, #340
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
	.size	sha1_compress, .-sha1_compress
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
