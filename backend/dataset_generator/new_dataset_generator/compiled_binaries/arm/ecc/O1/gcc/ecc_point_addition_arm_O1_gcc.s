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
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #12
	mov	r7, r0
	add	r1, sp, #48
	stm	r1, {r2, r3}
	mov	r4, r2
	mov	r8, r3
	ldr	r9, [sp, #56]
	ldr	fp, [sp, #60]
	ldr	r6, [sp, #64]
	ldr	r10, [sp, #68]
	ldr	r0, [sp, #72]
	subs	r0, r0, r9
	ldr	r3, [sp, #76]
	sbc	r2, r3, fp
	subs	r3, r6, r4
	sbc	r5, r10, r8
	mul	r5, r0, r5
	mla	r5, r3, r2, r5
	umull	r0, r1, r0, r3
	ldrd	r2, [sp, #80]
	add	r1, r1, r5
	bl	__aeabi_uldivmod(PLT)
	mov	r5, r2
	str	r2, [sp]
	str	r3, [sp, #4]
	mul	r3, r3, r2
	umull	r0, r1, r5, r5
	add	r1, r1, r3, lsl #1
	adds	r6, r4, r6
	adc	r10, r8, r10
	subs	r0, r0, r6
	ldrd	r2, [sp, #80]
	sbc	r1, r1, r10
	bl	__aeabi_uldivmod(PLT)
	str	r2, [r7]
	str	r3, [r7, #4]
	subs	r4, r4, r2
	sbc	r8, r8, r3
	ldr	r3, [sp, #4]
	mul	r1, r4, r3
	mla	r1, r8, r5, r1
	umull	r4, r5, r4, r5
	add	r1, r1, r5
	subs	r0, r4, r9
	ldrd	r2, [sp, #80]
	sbc	r1, r1, fp
	bl	__aeabi_uldivmod(PLT)
	strd	r2, [r7, #8]
	mov	r0, r7
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	sp, sp, #8
	bx	lr
	.size	ecc_point_add, .-ecc_point_add
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
