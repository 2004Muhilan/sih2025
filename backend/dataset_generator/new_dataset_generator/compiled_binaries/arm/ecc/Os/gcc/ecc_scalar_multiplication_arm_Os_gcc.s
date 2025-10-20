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
	stm	sp, {r2, r3}
	movs	r2, #0
	movs	r3, #0
	add	sp, sp, #8
	strd	r2, [r0]
	strd	r2, [r0, #8]
	bx	lr
	.size	ecc_scalar_mult, .-ecc_scalar_mult
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
