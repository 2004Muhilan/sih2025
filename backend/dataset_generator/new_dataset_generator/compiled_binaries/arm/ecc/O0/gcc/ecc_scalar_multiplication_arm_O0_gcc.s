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
	.file	"ecc_scalar_multiplication.c"
	.text
	.align	1
	.global	ecc_scalar_mult
	.syntax unified
	.thumb
	.thumb_func
	.type	ecc_scalar_mult, %function
ecc_scalar_mult:
	@ args = 32, pretend = 8, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	push	{r4, r5, r6, r7}
	sub	sp, sp, #40
	add	r7, sp, #0
	str	r0, [r7, #4]
	add	r1, r7, #56
	stm	r1, {r2, r3}
	mov	r2, #0
	mov	r3, #0
	strd	r2, [r7, #8]
	mov	r2, #0
	mov	r3, #0
	strd	r2, [r7, #16]
	add	r6, r7, #24
	add	r3, r7, #56
	ldm	r3, {r0, r1, r2, r3}
	stm	r6, {r0, r1, r2, r3}
	b	.L2
.L3:
	ldrd	r2, [r7, #72]
	and	r4, r2, #1
	movs	r5, #0
	ldrd	r0, [r7, #72]
	mov	r2, #0
	mov	r3, #0
	lsrs	r2, r0, #1
	orr	r2, r2, r1, lsl #31
	lsrs	r3, r1, #1
	strd	r2, [r7, #72]
.L2:
	ldrd	r2, [r7, #72]
	orrs	r3, r3, r2
	bne	.L3
	ldr	r3, [r7, #4]
	mov	r4, r3
	add	r3, r7, #8
	ldm	r3, {r0, r1, r2, r3}
	stm	r4, {r0, r1, r2, r3}
	ldr	r0, [r7, #4]
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r6, r7}
	add	sp, sp, #8
	bx	lr
	.size	ecc_scalar_mult, .-ecc_scalar_mult
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
