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
	.file	"sha256_compress.c"
	.text
	.align	1
	.p2align 2,,3
	.global	sha256_compress
	.syntax unified
	.thumb
	.thumb_func
	.type	sha256_compress, %function
sha256_compress:
	@ args = 0, pretend = 0, frame = 304
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, r1
	add	r7, r1, #64
	ldr	r1, .L12
	sub	sp, sp, #308
	ldr	r2, .L12+4
	add	r8, sp, #44
.LPIC1:
	add	r1, pc
	mov	r6, r8
	mov	ip, r0
	ldr	r2, [r1, r2]
	ldr	r2, [r2]
	str	r2, [sp, #300]
	mov	r2, #0
.L2:
	mov	r5, r6
	ldr	r0, [r4]	@ unaligned
	ldr	r1, [r4, #4]	@ unaligned
	adds	r4, r4, #16
	ldr	r2, [r4, #-8]	@ unaligned
	ldr	r3, [r4, #-4]	@ unaligned
	cmp	r4, r7
	stmia	r5!, {r0, r1, r2, r3}
	mov	r6, r5
	bne	.L2
	ldrd	r2, r0, [r8, #56]
	mov	r3, ip
	ldr	r6, [r8]
	mov	r4, r8
	movs	r7, #16
.L3:
	ror	r1, r2, #19
	ldr	r5, [r4, #4]
	eor	r1, r1, r2, ror #17
	adds	r7, r7, #2
	eor	r2, r1, r2, lsr #10
	ldr	r1, [r4, #36]
	cmp	r7, #62
	add	r4, r4, #8
	add	r2, r2, r1
	ror	r1, r5, #18
	eor	r1, r1, r5, ror #7
	eor	r1, r1, r5, lsr #3
	add	r2, r2, r1
	ldr	r1, [r4, #32]
	add	r2, r2, r6
	ldr	r6, [r4]
	add	r5, r5, r1
	ror	r1, r0, #17
	eor	r1, r1, r0, ror #19
	str	r2, [r4, #56]
	eor	r1, r1, r0, lsr #10
	ror	r0, r6, #7
	eor	r0, r0, r6, ror #18
	add	r1, r1, r5
	eor	r0, r0, r6, lsr #3
	add	r0, r0, r1
	str	r0, [r4, #60]
	bne	.L3
	ldr	r2, [r8, #188]
	movw	r9, #12184
	movt	r9, 17034
	ldr	r6, [r8, #184]
	ldr	r5, [r8, #220]
	ror	r1, r2, #7
	ldr	r7, [r8, #192]
	eor	r1, r1, r2, ror #18
	add	r5, r5, r6
	eor	r1, r1, r2, lsr #3
	ldr	r4, [r8, #240]
	add	r5, r5, r1
	ldr	r1, [r8, #224]
	ldr	r0, [r8, #244]
	add	r2, r2, r1
	ror	r1, r7, #7
	eor	r1, r1, r7, ror #18
	ldr	r6, [r3, #28]
	eor	r1, r1, r7, lsr #3
	ldr	r7, [r3, #20]
	add	r1, r1, r2
	ror	r2, r4, #17
	eor	r2, r2, r4, ror #19
	str	r6, [sp, #32]
	eor	r2, r2, r4, lsr #10
	ldr	r4, [r3, #4]
	add	r2, r2, r5
	str	r2, [r8, #248]
	ror	r2, r0, #17
	ldr	r5, [r3, #24]
	eor	r2, r2, r0, ror #19
	str	r4, [sp, #12]
	eor	r2, r2, r0, lsr #10
	ldr	r0, [r3]
	add	r2, r2, r1
	ldr	r1, [r3, #12]
	str	r2, [r8, #252]!
	ldr	r2, [r3, #8]
	str	r0, [sp, #4]
	str	r1, [sp, #8]
	mov	lr, r2
	ldr	r0, [r3, #16]
	mov	r1, r6
	ldr	fp, [sp, #8]
	add	r6, sp, #40
	ldr	ip, [sp, #4]
	str	r2, [sp, #16]
	str	r0, [sp, #20]
	str	r7, [sp, #24]
	str	r5, [sp, #28]
	str	r3, [sp, #36]
	b	.L4
.L6:
	mov	r5, r7
	mov	lr, r4
	mov	r7, r0
	mov	r4, ip
	mov	r0, r10
	mov	ip, r3
.L4:
	ldr	r2, [r6, #4]!
	ror	r3, r0, #11
	eor	r3, r3, r0, ror #6
	and	r10, r0, r7
	add	r2, r2, r9
	eor	r3, r3, r0, ror #25
	add	r3, r3, r2
	bic	r2, r5, r0
	eor	r2, r2, r10
	cmp	r6, r8
	add	r3, r3, r2
	ror	r2, ip, #13
	add	r3, r3, r1
	eor	r1, r4, lr
	add	r10, r3, fp
	eor	r2, r2, ip, ror #2
	and	fp, r4, lr
	and	r1, r1, ip
	eor	r1, r1, fp
	eor	r2, r2, ip, ror #22
	add	r2, r2, r1
	mov	fp, lr
	add	r3, r3, r2
	mov	r1, r5
	bne	.L6
	ldr	r1, [sp, #4]
	mov	r2, r3
	ldr	r6, [sp, #16]
	add	r1, r1, r2
	ldr	r2, [sp, #20]
	ldr	r3, [sp, #36]
	add	r6, r6, r4
	add	r2, r2, r10
	mov	r8, r1
	mov	r10, r2
	ldr	r2, [sp, #24]
	mov	r4, r6
	ldr	r1, [sp, #12]
	add	r2, r2, r0
	ldr	r6, [sp, #8]
	mov	r0, r2
	ldr	r2, [sp, #28]
	strd	r10, r0, [r3, #16]
	add	r1, r1, ip
	add	r2, r2, r7
	strd	r8, r1, [r3]
	mov	r7, r2
	ldr	r2, [sp, #32]
	add	r6, r6, lr
	strd	r4, r6, [r3, #8]
	add	r2, r2, r5
	strd	r7, r2, [r3, #24]
	ldr	r2, .L12+8
	ldr	r3, .L12+4
.LPIC0:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #300]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L11
	add	sp, sp, #308
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L11:
	bl	__stack_chk_fail(PLT)
.L13:
	.align	2
.L12:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC1+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+4)
	.size	sha256_compress, .-sha256_compress
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
