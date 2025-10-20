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
	.file	"prng_lcg.c"
	.text
	.align	1
	.global	prng_lcg
	.syntax unified
	.thumb
	.thumb_func
	.type	prng_lcg, %function
prng_lcg:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, r0
	ldr	r0, [r0]
	movw	r1, #20077
	movt	r1, 16838
	movw	r3, #12345
	mla	r3, r1, r0, r3
	bic	r0, r3, #-2147483648
	str	r0, [r2]
	bx	lr
	.size	prng_lcg, .-prng_lcg
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
