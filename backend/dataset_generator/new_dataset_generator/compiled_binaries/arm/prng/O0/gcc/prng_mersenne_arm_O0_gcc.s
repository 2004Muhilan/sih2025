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
	.file	"prng_mersenne.c"
	.text
	.align	1
	.global	prng_mersenne_twist
	.syntax unified
	.thumb
	.thumb_func
	.type	prng_mersenne_twist, %function
prng_mersenne_twist:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #8]
	b	.L2
.L4:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #8]
	ldr	r3, [r3, r2, lsl #2]
	and	r1, r3, #-2147483648
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	movw	r2, #8403
	movt	r2, 53773
	smull	r0, r2, r2, r3
	add	r2, r2, r3
	asrs	r0, r2, #9
	asrs	r2, r3, #31
	subs	r2, r0, r2
	mov	r0, #624
	mul	r2, r0, r2
	subs	r2, r3, r2
	ldr	r3, [r7, #4]
	ldr	r3, [r3, r2, lsl #2]
	bic	r3, r3, #-2147483648
	orrs	r3, r3, r1
	str	r3, [r7, #12]
	ldr	r3, [r7, #8]
	addw	r3, r3, #397
	movw	r2, #8403
	movt	r2, 53773
	smull	r1, r2, r2, r3
	add	r2, r2, r3
	asrs	r1, r2, #9
	asrs	r2, r3, #31
	subs	r2, r1, r2
	mov	r1, #624
	mul	r2, r1, r2
	subs	r2, r3, r2
	ldr	r3, [r7, #4]
	ldr	r2, [r3, r2, lsl #2]
	ldr	r3, [r7, #12]
	lsrs	r3, r3, #1
	eor	r1, r2, r3
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #8]
	str	r1, [r3, r2, lsl #2]
	ldr	r3, [r7, #12]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L3
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #8]
	ldr	r2, [r3, r2, lsl #2]
	movw	r3, #45279
	movt	r3, 39176
	eors	r3, r3, r2
	ldr	r2, [r7, #4]
	ldr	r1, [r7, #8]
	str	r3, [r2, r1, lsl #2]
.L3:
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #8]
.L2:
	ldr	r3, [r7, #8]
	cmp	r3, #624
	blt	.L4
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #2496]
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	prng_mersenne_twist, .-prng_mersenne_twist
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
