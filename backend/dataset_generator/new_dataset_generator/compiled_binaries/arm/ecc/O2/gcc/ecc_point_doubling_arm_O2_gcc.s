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
	.file	"ecc_point_doubling.c"
	.text
	.global	__aeabi_uldivmod
	.align	1
	.p2align 2,,3
	.global	ecc_point_double
	.syntax unified
	.thumb
	.thumb_func
	.type	ecc_point_double, %function
ecc_point_double:
	@ args = 32, pretend = 8, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	sub	sp, sp, #8
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r8, r0
	mov	r4, r2
	add	r1, sp, #32
	ldr	r10, [sp, #44]
	stm	r1, {r2, r3}
	ldrd	r3, r1, [sp, #48]
	ldrd	r9, r7, [sp, #36]
	mul	r0, r2, r9
	umull	r5, r2, r2, r2
	add	r2, r2, r0, lsl #1
	adds	r0, r5, r5
	adc	r6, r2, r2
	adds	r0, r0, r5
	adc	r2, r2, r6
	adds	r0, r0, r3
	adc	r1, r1, r2
	adds	r2, r7, r7
	adc	r3, r10, r10
	bl	__aeabi_uldivmod(PLT)
	ldrd	r2, [sp, #56]
	bl	__aeabi_uldivmod(PLT)
	mov	r5, r2
	mov	r6, r3
	adds	r3, r4, r4
	adc	r2, r9, r9
	mul	ip, r6, r5
	umull	r0, r1, r5, r5
	subs	r0, r0, r3
	add	r1, r1, ip, lsl #1
	sbc	r1, r1, r2
	ldrd	r2, [sp, #56]
	bl	__aeabi_uldivmod(PLT)
	subs	r4, r4, r2
	mov	r1, r3
	sbc	r9, r9, r1
	str	r1, [r8, #4]
	str	r2, [r8]
	mul	r1, r4, r6
	mla	r1, r9, r5, r1
	umull	r4, r5, r4, r5
	ldrd	r2, [sp, #56]
	subs	r0, r4, r7
	add	r1, r1, r5
	sbc	r1, r1, r10
	bl	__aeabi_uldivmod(PLT)
	mov	r0, r8
	strd	r2, [r8, #8]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	add	sp, sp, #8
	bx	lr
	.size	ecc_point_double, .-ecc_point_double
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
