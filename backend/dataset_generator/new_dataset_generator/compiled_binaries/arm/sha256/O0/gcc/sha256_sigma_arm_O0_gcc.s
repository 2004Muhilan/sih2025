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
	.file	"sha256_sigma.c"
	.text
	.align	1
	.global	sha256_sigma0
	.syntax unified
	.thumb
	.thumb_func
	.type	sha256_sigma0, %function
sha256_sigma0:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ror	r2, r3, #2
	ldr	r3, [r7, #4]
	ror	r3, r3, #13
	eors	r2, r2, r3
	ldr	r3, [r7, #4]
	ror	r3, r3, #22
	eors	r3, r3, r2
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	sha256_sigma0, .-sha256_sigma0
	.align	1
	.global	sha256_sigma1
	.syntax unified
	.thumb
	.thumb_func
	.type	sha256_sigma1, %function
sha256_sigma1:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ror	r2, r3, #6
	ldr	r3, [r7, #4]
	ror	r3, r3, #11
	eors	r2, r2, r3
	ldr	r3, [r7, #4]
	ror	r3, r3, #25
	eors	r3, r3, r2
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	sha256_sigma1, .-sha256_sigma1
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
