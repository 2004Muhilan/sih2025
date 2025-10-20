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
	.file	"prng_seed.c"
	.text
	.align	1
	.global	prng_seed
	.syntax unified
	.thumb
	.thumb_func
	.type	prng_seed, %function
prng_seed:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3]
	ldr	r2, [r7]
	movw	r3, #35173
	movt	r3, 27655
	eors	r3, r3, r2
	ldr	r2, [r7, #4]
	str	r3, [r2, #4]
	ldr	r2, [r7]
	movw	r3, #32144
	movt	r3, 12532
	eors	r3, r3, r2
	ldr	r2, [r7, #4]
	str	r3, [r2, #8]
	ldr	r2, [r7]
	movw	r3, #25749
	movt	r3, 24373
	eors	r3, r3, r2
	ldr	r2, [r7, #4]
	str	r3, [r2, #12]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	prng_seed, .-prng_seed
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
