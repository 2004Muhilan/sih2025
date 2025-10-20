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
	@ args = 0, pretend = 0, frame = 352
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L20
	ldr	r3, .L20+4
.LPIC1:
	add	r2, pc
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, r1
	sub	sp, sp, #356
	mov	r7, r0
	ldr	r3, [r2, r3]
	add	ip, sp, #28
	mov	r6, ip
	add	lr, r1, #64
	ldr	r3, [r3]
	str	r3, [sp, #348]
	mov	r3, #0
.L2:
	mov	r5, r6
	ldr	r0, [r4]	@ unaligned
	ldr	r1, [r4, #4]	@ unaligned
	adds	r4, r4, #16
	ldr	r2, [r4, #-8]	@ unaligned
	ldr	r3, [r4, #-4]	@ unaligned
	cmp	r4, lr
	stmia	r5!, {r0, r1, r2, r3}
	mov	r6, r5
	bne	.L2
	ldrd	r6, r5, [ip, #52]
	add	r2, sp, #32
	ldr	r1, [ip, #60]
	add	lr, sp, #288
	ldrd	r4, ip, [ip]
	b	.L3
.L12:
	mov	ip, r0
.L3:
	ldr	r3, [r2, #28]
	ldr	r0, [r2, #4]!
	eors	r3, r3, r0
	cmp	r2, lr
	eor	r3, r3, r6
	mov	r6, r5
	eor	r3, r3, r4
	mov	r5, r1
	mov	r4, ip
	ror	r1, r3, #31
	str	r1, [r2, #56]
	bne	.L12
	ldr	r1, [r7, #8]
	movw	fp, #49622
	movt	fp, 51810
	ldr	r2, [r7]
	ldr	r4, [r7, #16]
	mov	ip, r1
	ldr	r3, [r7, #4]
	movw	r9, #48348
	movt	r9, 36635
	ldr	r0, [r7, #12]
	str	r1, [sp, #8]
	movw	r8, #60321
	movt	r8, 28377
	movw	r10, #31129
	movt	r10, 23170
	add	r5, sp, #24
	mov	r6, r4
	mov	lr, r2
	movs	r1, #0
	str	r2, [sp]
	str	r3, [sp, #4]
	str	r0, [sp, #12]
	str	r4, [sp, #16]
	str	r7, [sp, #20]
	b	.L9
.L18:
	eor	r2, r0, ip
	mov	r7, r8
	eors	r2, r2, r3
.L5:
	ror	r4, r3, #2
	ldr	r3, [r5, #4]!
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
	mov	ip, r4
.L9:
	cmp	r1, #19
	ble	.L17
	cmp	r1, #39
	ble	.L18
	cmp	r1, #59
	bgt	.L7
	orr	r2, r0, ip
	and	r4, r0, ip
	ands	r2, r2, r3
	mov	r7, r9
	orrs	r2, r2, r4
	b	.L5
.L17:
	eor	r2, r0, ip
	mov	r7, r10
	ands	r2, r2, r3
	eors	r2, r2, r0
	b	.L5
.L7:
	ldr	r2, [r5, #4]!
	eor	r4, r0, ip
	eors	r4, r4, r3
	adds	r1, r1, #1
	cmp	r1, #80
	add	r2, r2, lr, ror #27
	add	r2, r2, fp
	add	r2, r2, r4
	ror	r4, r3, #2
	add	r2, r2, r6
	bne	.L10
	ldr	r3, [sp]
	ldr	r7, [sp, #20]
	add	r2, r2, r3
	ldr	r3, [sp, #8]
	ldr	r5, [sp, #4]
	add	r4, r4, r3
	ldr	r3, [sp, #16]
	add	r5, r5, lr
	strd	r2, r5, [r7]
	ldr	r2, .L20+8
	add	r3, r3, r0
	ldr	r1, [sp, #12]
	str	r3, [r7, #16]
.LPIC0:
	add	r2, pc
	ldr	r3, .L20+4
	add	r1, r1, ip
	strd	r4, r1, [r7, #8]
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
	.size	sha1_compress, .-sha1_compress
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
