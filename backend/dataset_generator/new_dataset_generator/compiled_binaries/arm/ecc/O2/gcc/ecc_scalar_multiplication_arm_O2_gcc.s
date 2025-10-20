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
	.file	"ecc_scalar_multiplication.c"
	.text
	.align	1
	.p2align 2,,3
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
	vldr.64	d7, .L4	@ int
	stm	sp, {r2, r3}
	add	sp, sp, #8
	vstr.64	d7, [r0]	@ int
	vstr.64	d7, [r0, #8]	@ int
	bx	lr
.L5:
	.align	3
.L4:
	.word	0
	.word	0
	.size	ecc_scalar_mult, .-ecc_scalar_mult
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
