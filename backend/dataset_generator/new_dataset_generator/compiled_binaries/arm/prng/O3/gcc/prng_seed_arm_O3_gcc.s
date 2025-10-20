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
	.file	"prng_seed.c"
	.text
	.align	1
	.p2align 2,,3
	.global	prng_seed
	.syntax unified
	.thumb
	.thumb_func
	.type	prng_seed, %function
prng_seed:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4}
	movw	r2, #32144
	movt	r2, 12532
	movw	r4, #35173
	movt	r4, 27655
	movw	r3, #25749
	movt	r3, 24373
	eors	r4, r4, r1
	eors	r2, r2, r1
	eors	r3, r3, r1
	strd	r1, r4, [r0]
	strd	r2, r3, [r0, #8]
	ldr	r4, [sp], #4
	bx	lr
	.size	prng_seed, .-prng_seed
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
