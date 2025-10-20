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
	.file	"sha256_compress.c"
	.text
	.align	1
	.global	sha256_compress
	.syntax unified
	.thumb
	.thumb_func
	.type	sha256_compress, %function
sha256_compress:
	@ args = 0, pretend = 0, frame = 296
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, r0
	ldr	r0, .L9
	ldr	r2, .L9+4
.LPIC1:
	add	r0, pc
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, r1
	sub	sp, sp, #300
	add	r7, r1, #64
	ldr	r2, [r0, r2]
	ldr	r2, [r2]
	str	r2, [sp, #292]
	mov	r2, #0
	add	r2, sp, #36
	mov	r6, r2
.L2:
	mov	r5, r6
	ldr	r0, [r4]	@ unaligned
	ldr	r1, [r4, #4]	@ unaligned
	adds	r4, r4, #8
	cmp	r4, r7
	stmia	r5!, {r0, r1}
	mov	r6, r5
	bne	.L2
	movs	r4, #16
.L3:
	ldr	r0, [r2, #4]
	mov	r6, r2
	ldr	r5, [r2, #56]
	adds	r2, r2, #4
	adds	r4, r4, #1
	ror	r1, r0, #18
	cmp	r4, #64
	eor	r1, r1, r0, ror #7
	eor	r1, r1, r0, lsr #3
	ldr	r0, [r6]
	ldr	r6, [r2, #32]
	add	r0, r0, r6
	add	r1, r1, r0
	ror	r0, r5, #19
	eor	r0, r0, r5, ror #17
	eor	r0, r0, r5, lsr #10
	add	r1, r1, r0
	str	r1, [r2, #60]
	bne	.L3
	ldr	r2, [r3]
	mov	lr, #0
	str	r2, [sp]
	add	r9, sp, #36
	ldr	r2, [r3, #4]
	str	r2, [sp, #4]
	ldr	r2, [r3, #8]
	str	r2, [sp, #8]
	ldr	r2, [r3, #12]
	str	r2, [sp, #12]
	ldr	r2, [r3, #16]
	str	r2, [sp, #16]
	ldr	r2, [r3, #20]
	str	r2, [sp, #20]
	ldr	r2, [r3, #24]
	str	r2, [sp, #24]
	ldr	r2, [r3, #28]
	ldrd	ip, r7, [sp, #20]
	mov	r10, r2
	ldrd	r8, r0, [sp, #12]
	str	r2, [sp, #28]
	ldrd	r6, r5, [sp, #4]
	ldr	r4, [sp]
.L4:
	ldr	r2, [r9, lr, lsl #2]
	ror	r1, r0, #11
	eor	r1, r1, r0, ror #6
	and	fp, r0, ip
	add	r2, r2, #1115684864
	eor	r1, r1, r0, ror #25
	add	r2, r2, #663552
	add	lr, lr, #1
	addw	r2, r2, #3992
	cmp	lr, #64
	add	r1, r1, r2
	bic	r2, r7, r0
	eor	r2, r2, fp
	and	fp, r6, r5
	add	r1, r1, r2
	eor	r2, r6, r5
	add	r1, r1, r10
	ror	r10, r4, #13
	eor	r10, r10, r4, ror #2
	and	r2, r2, r4
	eor	r10, r10, r4, ror #22
	eor	r2, r2, fp
	add	r2, r2, r10
	add	fp, r1, r8
	add	r2, r2, r1
	mov	r8, r5
	mov	r10, r7
	bne	.L6
	ldr	r1, [sp]
	add	r1, r1, r2
	ldr	r2, [sp, #4]
	str	r1, [r3]
	add	r2, r2, r4
	str	r2, [r3, #4]
	ldr	r2, [sp, #8]
	add	r2, r2, r6
	str	r2, [r3, #8]
	ldr	r2, [sp, #12]
	add	r2, r2, r5
	str	r2, [r3, #12]
	ldr	r2, [sp, #16]
	add	r2, r2, fp
	str	r2, [r3, #16]
	ldr	r2, [sp, #20]
	add	r2, r2, r0
	str	r2, [r3, #20]
	ldr	r2, [sp, #24]
	add	r2, r2, ip
	str	r2, [r3, #24]
	ldr	r2, [sp, #28]
	add	r2, r2, r7
	str	r2, [r3, #28]
	ldr	r2, .L9+8
	ldr	r3, .L9+4
.LPIC0:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #292]
	eors	r2, r3, r2
	mov	r3, #0
	beq	.L5
	bl	__stack_chk_fail(PLT)
.L6:
	mov	r7, ip
	mov	r5, r6
	mov	ip, r0
	mov	r6, r4
	mov	r0, fp
	mov	r4, r2
	b	.L4
.L5:
	add	sp, sp, #300
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L10:
	.align	2
.L9:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC1+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+4)
	.size	sha256_compress, .-sha256_compress
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
