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
	.file	"prng_seed.c"
	.text
	.align	1
	.global	prng_seed
	.syntax unified
	.thumb
	.thumb_func
	.type	prng_seed, %function
prng_seed:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L2
	str	r1, [r0]
	eors	r3, r3, r1
	str	r3, [r0, #4]
	ldr	r3, .L2+4
	eors	r3, r3, r1
	str	r3, [r0, #8]
	ldr	r3, .L2+8
	eors	r3, r3, r1
	str	r3, [r0, #12]
	bx	lr
.L3:
	.align	2
.L2:
	.word	1812433253
	.word	821329296
	.word	1597334677
	.size	prng_seed, .-prng_seed
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
