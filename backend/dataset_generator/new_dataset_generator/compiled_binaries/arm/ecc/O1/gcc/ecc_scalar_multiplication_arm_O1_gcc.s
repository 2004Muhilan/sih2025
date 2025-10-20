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
	.file	"ecc_scalar_multiplication.c"
	.text
	.align	1
	.global	ecc_scalar_mult
	.syntax unified
	.thumb
	.thumb_func
	.type	ecc_scalar_mult, %function
ecc_scalar_mult:
	@ args = 32, pretend = 8, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	push	{r4}
	add	r1, sp, #4
	stm	r1, {r2, r3}
	ldr	r4, [sp, #20]
	ldr	r2, [sp, #24]
	orrs	r3, r4, r2
	beq	.L2
.L3:
	lsrs	r3, r4, #1
	orr	r3, r3, r2, lsl #31
	lsrs	r1, r2, #1
	mov	r4, r3
	mov	r2, r1
	orrs	r3, r3, r1
	bne	.L3
.L2:
	movs	r2, #0
	movs	r3, #0
	strd	r2, [r0]
	strd	r2, [r0, #8]
	ldr	r4, [sp], #4
	add	sp, sp, #8
	bx	lr
	.size	ecc_scalar_mult, .-ecc_scalar_mult
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
