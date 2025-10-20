	.arch armv7-a
	.fpu vfpv3-d16
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
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
	@ args = 32, pretend = 8, frame = 104
	@ frame_needed = 1, uses_anonymous_args = 0
	sub	sp, sp, #8
	push	{r4, r5, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #104
	add	r7, sp, #0
	str	r0, [r7, #76]
	add	r1, r7, #136
	stm	r1, {r2, r3}
	ldrd	r0, [r7, #136]
	ldrd	r2, [r7, #136]
	mul	r5, r2, r1
	mul	r4, r0, r3
	add	r4, r4, r5
	umull	r8, r9, r0, r2
	add	r3, r4, r9
	mov	r9, r3
	mov	r2, r8
	mov	r3, r9
	adds	r1, r2, r2
	str	r1, [r7, #16]
	adcs	r3, r3, r3
	str	r3, [r7, #20]
	ldrd	r2, [r7, #16]
	adds	r10, r2, r8
	adc	fp, r3, r9
	ldrd	r2, [r7, #152]
	adds	r1, r10, r2
	str	r1, [r7, #48]
	adc	r3, fp, r3
	str	r3, [r7, #52]
	ldrd	r2, [r7, #144]
	adds	r1, r2, r2
	str	r1, [r7, #8]
	adcs	r3, r3, r3
	str	r3, [r7, #12]
	ldrd	r2, [r7, #8]
	ldrd	r0, [r7, #48]
	bl	__aeabi_uldivmod(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	ldrd	r2, [r7, #160]
	bl	__aeabi_uldivmod(PLT)
	strd	r2, [r7, #80]
	ldr	r3, [r7, #84]
	ldr	r2, [r7, #80]
	mul	r1, r2, r3
	ldr	r2, [r7, #84]
	ldr	r3, [r7, #80]
	mul	r3, r2, r3
	adds	r2, r1, r3
	ldr	r3, [r7, #80]
	umull	r1, r3, r3, r3
	str	r3, [r7, #68]
	mov	r3, r1
	str	r3, [r7, #64]
	ldr	r3, [r7, #68]
	adds	r3, r2, r3
	str	r3, [r7, #68]
	ldrd	r2, [r7, #136]
	adds	r1, r2, r2
	str	r1, [r7]
	adcs	r3, r3, r3
	str	r3, [r7, #4]
	ldrd	r2, [r7]
	ldrd	r4, [r7, #64]
	mov	r1, r4
	subs	r1, r1, r2
	str	r1, [r7, #40]
	mov	r1, r5
	sbc	r3, r1, r3
	str	r3, [r7, #44]
	ldrd	r2, [r7, #160]
	ldrd	r0, [r7, #40]
	bl	__aeabi_uldivmod(PLT)
	strd	r2, [r7, #88]
	ldrd	r0, [r7, #136]
	ldrd	r2, [r7, #88]
	subs	r4, r0, r2
	str	r4, [r7, #32]
	sbc	r3, r1, r3
	str	r3, [r7, #36]
	ldr	r3, [r7, #80]
	ldrd	r4, [r7, #32]
	mov	r2, r5
	mul	r2, r2, r3
	ldr	r3, [r7, #84]
	mov	r1, r4
	mul	r3, r1, r3
	add	r3, r3, r2
	ldr	r2, [r7, #80]
	mov	r1, r4
	umull	r1, r2, r2, r1
	str	r2, [r7, #60]
	mov	r2, r1
	str	r2, [r7, #56]
	ldr	r2, [r7, #60]
	add	r3, r3, r2
	str	r3, [r7, #60]
	ldrd	r2, [r7, #144]
	ldrd	r4, [r7, #56]
	mov	r1, r4
	subs	r1, r1, r2
	str	r1, [r7, #24]
	mov	r1, r5
	sbc	r3, r1, r3
	str	r3, [r7, #28]
	ldrd	r2, [r7, #160]
	ldrd	r0, [r7, #24]
	bl	__aeabi_uldivmod(PLT)
	strd	r2, [r7, #96]
	ldr	r3, [r7, #76]
	mov	r4, r3
	add	r3, r7, #88
	ldm	r3, {r0, r1, r2, r3}
	stm	r4, {r0, r1, r2, r3}
	ldr	r0, [r7, #76]
	adds	r7, r7, #104
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, r8, r9, r10, fp, lr}
	add	sp, sp, #8
	bx	lr
	.size	ecc_point_double, .-ecc_point_double
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
