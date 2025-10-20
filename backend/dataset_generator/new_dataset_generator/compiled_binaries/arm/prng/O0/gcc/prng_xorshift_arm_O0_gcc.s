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
	.file	"prng_xorshift.c"
	.text
	.align	1
	.global	prng_xorshift
	.syntax unified
	.thumb
	.thumb_func
	.type	prng_xorshift, %function
prng_xorshift:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	lsls	r3, r3, #13
	ldr	r2, [r7, #12]
	eors	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	lsrs	r3, r3, #17
	ldr	r2, [r7, #12]
	eors	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	lsls	r3, r3, #5
	ldr	r2, [r7, #12]
	eors	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	prng_xorshift, .-prng_xorshift
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
