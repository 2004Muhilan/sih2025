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
	@ args = 40, pretend = 8, frame = 80
	@ frame_needed = 1, uses_anonymous_args = 0
	sub	sp, sp, #8
	push	{r4, r5, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #80
	add	r7, sp, #0
	str	r0, [r7, #52]
	add	r1, r7, #112
	stm	r1, {r2, r3}
	ldrd	r0, [r7, #136]
	ldrd	r2, [r7, #120]
	subs	r8, r0, r2
	sbc	r9, r1, r3
	ldrd	r0, [r7, #128]
	ldrd	r2, [r7, #112]
	subs	r4, r0, r2
	sbc	r5, r1, r3
	mul	r2, r4, r9
	mul	r3, r8, r5
	add	r3, r3, r2
	umull	r10, fp, r8, r4
	add	r3, r3, fp
	mov	fp, r3
	ldrd	r2, [r7, #144]
	mov	r0, r10
	mov	r1, fp
	bl	__aeabi_uldivmod(PLT)
	strd	r2, [r7, #56]
	ldr	r3, [r7, #60]
	ldr	r2, [r7, #56]
	mul	r1, r2, r3
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #56]
	mul	r3, r2, r3
	adds	r2, r1, r3
	ldr	r3, [r7, #56]
	umull	r1, r3, r3, r3
	str	r3, [r7, #44]
	mov	r3, r1
	str	r3, [r7, #40]
	ldr	r3, [r7, #44]
	adds	r3, r2, r3
	str	r3, [r7, #44]
	ldrd	r2, [r7, #112]
	ldrd	r4, [r7, #40]
	mov	r1, r4
	subs	r1, r1, r2
	str	r1, [r7, #24]
	mov	r1, r5
	sbc	r3, r1, r3
	str	r3, [r7, #28]
	ldrd	r2, [r7, #128]
	ldrd	r4, [r7, #24]
	mov	r1, r4
	subs	r1, r1, r2
	str	r1, [r7, #16]
	mov	r1, r5
	sbc	r3, r1, r3
	str	r3, [r7, #20]
	ldrd	r2, [r7, #144]
	ldrd	r0, [r7, #16]
	bl	__aeabi_uldivmod(PLT)
	strd	r2, [r7, #64]
	ldrd	r0, [r7, #112]
	ldrd	r2, [r7, #64]
	subs	r4, r0, r2
	str	r4, [r7, #8]
	sbc	r3, r1, r3
	str	r3, [r7, #12]
	ldr	r3, [r7, #56]
	ldrd	r4, [r7, #8]
	mov	r2, r5
	mul	r2, r2, r3
	ldr	r3, [r7, #60]
	mov	r1, r4
	mul	r3, r1, r3
	add	r3, r3, r2
	ldr	r2, [r7, #56]
	mov	r1, r4
	umull	r1, r2, r2, r1
	str	r2, [r7, #36]
	mov	r2, r1
	str	r2, [r7, #32]
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	str	r3, [r7, #36]
	ldrd	r2, [r7, #120]
	ldrd	r4, [r7, #32]
	mov	r1, r4
	subs	r1, r1, r2
	str	r1, [r7]
	mov	r1, r5
	sbc	r3, r1, r3
	str	r3, [r7, #4]
	ldrd	r2, [r7, #144]
	ldrd	r0, [r7]
	bl	__aeabi_uldivmod(PLT)
	strd	r2, [r7, #72]
	ldr	r3, [r7, #52]
	mov	r4, r3
	add	r3, r7, #64
	ldm	r3, {r0, r1, r2, r3}
	stm	r4, {r0, r1, r2, r3}
	ldr	r0, [r7, #52]
	adds	r7, r7, #80
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, r8, r9, r10, fp, lr}
	add	sp, sp, #8
	bx	lr
	.size	ecc_point_add, .-ecc_point_add
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
