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
	.file	"ecc_point_addition.c"
	.text
	.global	__aeabi_uldivmod
	.align	1
	.global	ecc_point_add
	.syntax unified
	.thumb
	.thumb_func
	.type	ecc_point_add, %function
ecc_point_add:
	@ args = 40, pretend = 8, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	sub	sp, sp, #8
	push	{r0, r1, r2, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r10, r3
	mov	r8, r0
	add	r1, sp, #48
	ldr	r0, [sp, #72]
	ldrd	r7, fp, [sp, #64]
	mov	r4, r2
	stm	r1, {r2, r3}
	ldr	r3, [sp, #56]
	str	r3, [sp]
	ldr	r3, [sp, #60]
	str	r3, [sp, #4]
	ldr	r3, [sp]
	ldr	r2, [sp, #4]
	subs	r0, r0, r3
	ldr	r3, [sp, #76]
	sbc	r2, r3, r2
	subs	r3, r7, r4
	sbc	r5, fp, r10
	muls	r5, r0, r5
	mla	r5, r3, r2, r5
	umull	r0, r1, r0, r3
	ldrd	r2, [sp, #80]
	add	r1, r1, r5
	bl	__aeabi_uldivmod(PLT)
	mov	r9, r2
	mov	r5, r3
	muls	r3, r2, r3
	adds	r7, r4, r7
	umull	r0, r1, r9, r9
	adc	fp, r10, fp
	subs	r0, r0, r7
	add	r1, r1, r3, lsl #1
	sbc	r1, r1, fp
	ldrd	r2, [sp, #80]
	bl	__aeabi_uldivmod(PLT)
	subs	r4, r4, r2
	strd	r2, r3, [r8]
	sbc	r10, r10, r3
	ldr	r3, [sp]
	mul	r1, r4, r5
	umull	r4, r6, r4, r9
	mla	r1, r10, r9, r1
	subs	r0, r4, r3
	ldr	r3, [sp, #4]
	add	r1, r1, r6
	sbc	r1, r1, r3
	ldrd	r2, [sp, #80]
	bl	__aeabi_uldivmod(PLT)
	mov	r0, r8
	strd	r2, [r8, #8]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	sp, sp, #8
	bx	lr
	.size	ecc_point_add, .-ecc_point_add
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
