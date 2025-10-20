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
	.file	"ecc_point_addition.c"
	.text
	.global	__aeabi_uldivmod
	.align	1
	.p2align 2,,3
	.global	ecc_point_add
	.syntax unified
	.thumb
	.thumb_func
	.type	ecc_point_add, %function
ecc_point_add:
	@ args = 40, pretend = 8, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	sub	sp, sp, #8
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r7, r0
	ldr	r9, [sp, #48]
	add	r1, sp, #40
	ldr	r0, [sp, #64]
	ldrd	r10, fp, [sp, #52]
	subs	r0, r0, r9
	stm	r1, {r2, r3}
	mov	r4, r2
	ldr	r3, [sp, #68]
	ldr	r8, [sp, #44]
	ldr	r5, [sp, #60]
	sbc	r2, r3, r10
	subs	r3, fp, r4
	sbc	r1, r5, r8
	mul	r1, r0, r1
	mla	r1, r3, r2, r1
	umull	r0, r3, r0, r3
	add	r1, r1, r3
	ldrd	r2, [sp, #72]
	bl	__aeabi_uldivmod(PLT)
	adds	fp, r4, fp
	mul	r1, r3, r2
	adc	lr, r8, r5
	mov	r5, r2
	mov	r6, r3
	ldrd	r2, [sp, #72]
	umull	r0, ip, r5, r5
	subs	r0, r0, fp
	add	r1, ip, r1, lsl #1
	sbc	r1, r1, lr
	bl	__aeabi_uldivmod(PLT)
	subs	r4, r4, r2
	mov	r1, r3
	str	r1, [r7, #4]
	sbc	r8, r8, r1
	str	r2, [r7]
	mul	r1, r4, r6
	ldrd	r2, [sp, #72]
	mla	r1, r8, r5, r1
	umull	r4, r5, r4, r5
	subs	r0, r4, r9
	add	r1, r1, r5
	sbc	r1, r1, r10
	bl	__aeabi_uldivmod(PLT)
	mov	r0, r7
	strd	r2, [r7, #8]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	sp, sp, #8
	bx	lr
	.size	ecc_point_add, .-ecc_point_add
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
