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
	.file	"prng_pcg.c"
	.text
	.align	1
	.global	prng_pcg
	.syntax unified
	.thumb
	.thumb_func
	.type	prng_pcg, %function
prng_pcg:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4}
	ldr	r4, [r0]
	ldr	r1, [r0, #4]
	movw	r3, #32557
	movt	r3, 19605
	movw	r2, #62509
	movt	r2, 22609
	mul	r2, r4, r2
	mla	r2, r3, r1, r2
	umull	r3, ip, r4, r3
	adds	r3, r3, #1
	adc	r2, r2, ip
	str	r3, [r0]
	str	r2, [r0, #4]
	lsrs	r3, r4, #18
	orr	r3, r3, r1, lsl #14
	eors	r3, r3, r4
	eor	r2, r1, r1, lsr #18
	lsrs	r3, r3, #27
	orr	r3, r3, r2, lsl #5
	lsrs	r0, r1, #27
	ror	r0, r3, r0
	ldr	r4, [sp], #4
	bx	lr
	.size	prng_pcg, .-prng_pcg
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
