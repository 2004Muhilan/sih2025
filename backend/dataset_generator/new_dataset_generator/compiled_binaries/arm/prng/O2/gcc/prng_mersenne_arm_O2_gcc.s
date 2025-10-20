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
	.file	"prng_mersenne.c"
	.text
	.align	1
	.p2align 2,,3
	.global	prng_mersenne_twist
	.syntax unified
	.thumb
	.thumb_func
	.type	prng_mersenne_twist, %function
prng_mersenne_twist:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	sub	ip, r0, #4
	movw	lr, #42011
	movt	lr, 6721
	movw	r5, #45279
	movt	r5, 39176
	movs	r1, #0
	mov	r4, #624
.L2:
	mov	r2, r1
	adds	r1, r1, #1
	addw	r2, r2, #397
	ldr	r7, [ip, #4]!
	lsrs	r3, r1, #4
	cmp	r1, #624
	lsr	r6, r2, #4
	umull	r8, r3, lr, r3
	umull	r8, r6, lr, r6
	lsr	r3, r3, #2
	lsr	r6, r6, #2
	mls	r3, r4, r3, r1
	mls	r2, r4, r6, r2
	ldr	r6, [r0, r3, lsl #2]
	ldr	r3, [r0, r2, lsl #2]
	bfi	r7, r6, #0, #31
	sbfx	r2, r7, #0, #1
	eor	r3, r3, r7, lsr #1
	and	r2, r2, r5
	eor	r3, r3, r2
	str	r3, [ip]
	bne	.L2
	movs	r3, #0
	str	r3, [r0, #2496]
	pop	{r4, r5, r6, r7, r8, pc}
	.size	prng_mersenne_twist, .-prng_mersenne_twist
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
