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
	.file	"prng_mersenne.c"
	.text
	.align	1
	.global	prng_mersenne_twist
	.syntax unified
	.thumb
	.thumb_func
	.type	prng_mersenne_twist, %function
prng_mersenne_twist:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	sub	ip, r0, #4
	movs	r1, #0
	movw	lr, #8403
	movt	lr, 53773
	mov	r4, #624
	movw	r5, #45279
	movt	r5, 39176
.L2:
	mov	r2, r1
	adds	r1, r1, #1
	smull	r3, r6, lr, r1
	add	r6, r6, r1
	asrs	r3, r1, #31
	rsb	r3, r3, r6, asr #9
	mls	r3, r4, r3, r1
	ldr	r6, [r0, r3, lsl #2]
	ldr	r3, [ip, #4]!
	bfi	r3, r6, #0, #31
	addw	r2, r2, #397
	smull	r6, r7, lr, r2
	add	r7, r7, r2
	asrs	r6, r2, #31
	rsb	r6, r6, r7, asr #9
	mls	r2, r4, r6, r2
	ldr	r2, [r0, r2, lsl #2]
	eor	r2, r2, r3, lsr #1
	sbfx	r3, r3, #0, #1
	ands	r3, r3, r5
	eors	r3, r3, r2
	str	r3, [ip]
	cmp	r1, #624
	bne	.L2
	movs	r3, #0
	str	r3, [r0, #2496]
	pop	{r4, r5, r6, r7, pc}
	.size	prng_mersenne_twist, .-prng_mersenne_twist
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
