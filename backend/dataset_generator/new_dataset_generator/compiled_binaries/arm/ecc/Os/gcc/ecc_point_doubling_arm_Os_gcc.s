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
	.file	"ecc_point_doubling.c"
	.text
	.global	__aeabi_uldivmod
	.align	1
	.global	ecc_point_double
	.syntax unified
	.thumb
	.thumb_func
	.type	ecc_point_double, %function
ecc_point_double:
	@ args = 32, pretend = 8, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	sub	sp, sp, #8
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r8, r0
	mov	r4, r2
	add	r1, sp, #40
	mul	r0, r2, r3
	mov	r9, r3
	ldrd	r7, fp, [sp, #48]
	stm	r1, {r2, r3}
	umull	r2, r3, r2, r2
	ldr	r1, [sp, #56]
	add	r3, r3, r0, lsl #1
	adds	r0, r2, r2
	adc	r5, r3, r3
	adds	r0, r0, r2
	adc	r3, r3, r5
	adds	r0, r0, r1
	ldr	r1, [sp, #60]
	adc	r1, r1, r3
	adds	r2, r7, r7
	adc	r3, fp, fp
	bl	__aeabi_uldivmod(PLT)
	ldrd	r2, [sp, #64]
	bl	__aeabi_uldivmod(PLT)
	mov	r10, r2
	mov	r5, r3
	muls	r3, r2, r3
	umull	r0, r1, r10, r10
	add	r1, r1, r3, lsl #1
	adds	r3, r4, r4
	adc	r2, r9, r9
	subs	r0, r0, r3
	sbc	r1, r1, r2
	ldrd	r2, [sp, #64]
	bl	__aeabi_uldivmod(PLT)
	subs	r4, r4, r2
	strd	r2, r3, [r8]
	sbc	r9, r9, r3
	ldrd	r2, [sp, #64]
	mul	r1, r4, r5
	mla	r1, r9, r10, r1
	umull	r4, r6, r4, r10
	subs	r0, r4, r7
	add	r1, r1, r6
	sbc	r1, r1, fp
	bl	__aeabi_uldivmod(PLT)
	mov	r0, r8
	strd	r2, [r8, #8]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	sp, sp, #8
	bx	lr
	.size	ecc_point_double, .-ecc_point_double
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
