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
	.file	"prng_pcg.c"
	.text
	.align	1
	.global	prng_pcg
	.syntax unified
	.thumb
	.thumb_func
	.type	prng_pcg, %function
prng_pcg:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r6, r7, r8, r9}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r1, [r7, #4]
	ldrd	r0, [r1]
	strd	r0, [r7, #16]
	ldr	r0, [r7, #20]
	movw	r1, #32557
	movt	r1, 19605
	mul	r0, r1, r0
	ldr	r6, [r7, #16]
	movw	r1, #62509
	movt	r1, 22609
	mul	r1, r6, r1
	add	r0, r0, r1
	ldr	r6, [r7, #16]
	movw	r1, #32557
	movt	r1, 19605
	umull	r2, r3, r6, r1
	adds	r1, r0, r3
	mov	r3, r1
	adds	r8, r2, #1
	adc	r9, r3, #0
	ldr	r3, [r7, #4]
	strd	r8, [r3]
	ldrd	r0, [r7, #16]
	mov	r2, #0
	mov	r3, #0
	lsrs	r2, r0, #18
	orr	r2, r2, r1, lsl #14
	lsrs	r3, r1, #18
	ldrd	r0, [r7, #16]
	eor	r4, r2, r0
	eor	r5, r3, r1
	mov	r2, #0
	mov	r3, #0
	lsrs	r2, r4, #27
	orr	r2, r2, r5, lsl #5
	lsrs	r3, r5, #27
	mov	r3, r2
	str	r3, [r7, #8]
	ldrd	r0, [r7, #16]
	mov	r2, #0
	mov	r3, #0
	lsrs	r2, r1, #27
	movs	r3, #0
	mov	r3, r2
	str	r3, [r7, #12]
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #12]
	ror	r3, r2, r3
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9}
	bx	lr
	.size	prng_pcg, .-prng_pcg
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
