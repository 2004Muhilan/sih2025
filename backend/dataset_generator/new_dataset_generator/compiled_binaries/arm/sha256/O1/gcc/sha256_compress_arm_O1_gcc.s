	.arch armv7-a
	.fpu vfpv3-d16
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 1
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"sha256_compress.c"
	.text
	.align	1
	.global	sha256_compress
	.syntax unified
	.thumb
	.thumb_func
	.type	sha256_compress, %function
sha256_compress:
	@ args = 0, pretend = 0, frame = 304
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #308
	mov	fp, r0
	ldr	r2, .L11
.LPIC1:
	add	r2, pc
	ldr	r3, .L11+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [sp, #300]
	mov	r3, #0
	subs	r3, r1, #4
	add	r9, sp, #44
	add	r0, r1, #60
	mov	r2, r9
.L2:
	ldr	r1, [r3, #4]!
	str	r1, [r2], #4
	cmp	r3, r0
	bne	.L2
	add	r4, r9, #192
	mov	r2, r9
.L3:
	mov	r5, r2
	ldr	r1, [r2, #4]
	ldr	r0, [r2, #56]
	adds	r2, r2, #4
	ror	r3, r1, #18
	eor	r3, r3, r1, ror #7
	eor	r3, r3, r1, lsr #3
	ldr	r1, [r5]
	ldr	r5, [r2, #32]
	add	r1, r1, r5
	add	r3, r3, r1
	ror	r1, r0, #19
	eor	r1, r1, r0, ror #17
	eor	r1, r1, r0, lsr #10
	add	r3, r3, r1
	str	r3, [r2, #60]
	cmp	r2, r4
	bne	.L3
	ldr	r3, [fp]
	str	r3, [sp, #8]
	ldr	r4, [fp, #4]
	str	r4, [sp, #12]
	ldr	r2, [fp, #8]
	str	r2, [sp, #16]
	ldr	r1, [fp, #12]
	str	r1, [sp, #4]
	ldr	r0, [fp, #16]
	str	r0, [sp, #20]
	ldr	r7, [fp, #20]
	str	r7, [sp, #24]
	ldr	r5, [fp, #24]
	str	r5, [sp, #28]
	ldr	r1, [fp, #28]
	str	r1, [sp, #32]
	add	r6, sp, #40
	add	r9, r9, #252
	ldr	r8, [sp, #4]
	mov	lr, r2
	mov	ip, r3
	movw	r10, #12184
	movt	r10, 17034
	str	fp, [sp, #36]
	b	.L4
.L6:
	mov	r5, r7
	mov	r7, r0
	mov	r0, fp
	mov	lr, r4
	mov	r4, ip
	mov	ip, r2
.L4:
	ror	r2, r0, #11
	eor	r2, r2, r0, ror #6
	eor	r2, r2, r0, ror #25
	ldr	r3, [r6, #4]!
	add	r3, r3, r10
	add	r2, r2, r3
	bic	r3, r5, r0
	and	fp, r0, r7
	eor	r3, r3, fp
	add	r2, r2, r3
	add	r2, r2, r1
	ror	r3, ip, #13
	eor	r3, r3, ip, ror #2
	eor	r3, r3, ip, ror #22
	eor	r1, r4, lr
	and	r1, r1, ip
	and	fp, r4, lr
	eor	r1, r1, fp
	add	r3, r3, r1
	add	fp, r2, r8
	add	r2, r2, r3
	mov	r8, lr
	mov	r1, r5
	cmp	r6, r9
	bne	.L6
	mov	r3, fp
	ldr	fp, [sp, #36]
	ldr	r1, [sp, #8]
	add	r1, r1, r2
	str	r1, [fp]
	ldr	r2, [sp, #12]
	add	r2, r2, ip
	str	r2, [fp, #4]
	ldr	r2, [sp, #16]
	add	r2, r2, r4
	str	r2, [fp, #8]
	ldr	r2, [sp, #4]
	add	r2, r2, lr
	str	r2, [fp, #12]
	ldr	r2, [sp, #20]
	add	r2, r2, r3
	str	r2, [fp, #16]
	ldr	r3, [sp, #24]
	add	r3, r3, r0
	str	r3, [fp, #20]
	ldr	r3, [sp, #28]
	add	r3, r3, r7
	str	r3, [fp, #24]
	ldr	r3, [sp, #32]
	add	r3, r3, r5
	str	r3, [fp, #28]
	ldr	r2, .L11+8
.LPIC0:
	add	r2, pc
	ldr	r3, .L11+4
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #300]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L10
	add	sp, sp, #308
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L10:
	bl	__stack_chk_fail(PLT)
.L12:
	.align	2
.L11:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC1+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+4)
	.size	sha256_compress, .-sha256_compress
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
