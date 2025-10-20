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
	.file	"prng_xorshift.c"
	.text
	.align	1
	.global	prng_xorshift
	.syntax unified
	.thumb
	.thumb_func
	.type	prng_xorshift, %function
prng_xorshift:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, r0
	ldr	r3, [r0]
	eor	r3, r3, r3, lsl #13
	eor	r3, r3, r3, lsr #17
	eor	r0, r3, r3, lsl #5
	str	r0, [r2]
	bx	lr
	.size	prng_xorshift, .-prng_xorshift
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
