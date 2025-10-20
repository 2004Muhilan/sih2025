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
	.file	"prng_pcg.c"
	.text
	.align	1
	.p2align 2,,3
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
	movw	r2, #62509
	movt	r2, 22609
	ldrd	r3, r4, [r0]
	movw	ip, #32557
	movt	ip, 19605
	mul	r1, r2, r3
	lsrs	r2, r3, #18
	orr	r2, r2, r4, lsl #14
	mla	r1, ip, r4, r1
	eors	r2, r2, r3
	umull	r3, ip, r3, ip
	adds	r3, r3, #1
	str	r3, [r0]
	eor	r3, r4, r4, lsr #18
	lsr	r2, r2, #27
	lsr	r4, r4, #27
	adc	r1, r1, ip
	orr	r2, r2, r3, lsl #5
	str	r1, [r0, #4]
	ror	r0, r2, r4
	ldr	r4, [sp], #4
	bx	lr
	.size	prng_pcg, .-prng_pcg
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
