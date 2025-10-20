	.arch armv7-a
	.fpu vfpv3-d16
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 4
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"prng_mersenne.c"
	.text
	.global	__aeabi_uidivmod
	.global	__aeabi_idivmod
	.align	1
	.global	prng_mersenne_twist
	.syntax unified
	.thumb
	.thumb_func
	.type	prng_mersenne_twist, %function
prng_mersenne_twist:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, lr}
	mov	r5, r0
	ldr	r8, .L4
	subs	r7, r0, #4
	movs	r6, #0
.L2:
	mov	r9, r6
	adds	r6, r6, #1
	mov	r1, #624
	mov	r0, r6
	bl	__aeabi_idivmod(PLT)
	ldr	r4, [r7, #4]!
	ldr	r3, [r5, r1, lsl #2]
	addw	r0, r9, #397
	mov	r1, #624
	bfi	r4, r3, #0, #31
	bl	__aeabi_idivmod(PLT)
	ldr	r3, [r5, r1, lsl #2]
	cmp	r6, #624
	eor	r3, r3, r4, lsr #1
	sbfx	r4, r4, #0, #1
	and	r4, r4, r8
	eor	r3, r3, r4
	str	r3, [r7]
	bne	.L2
	movs	r3, #0
	str	r3, [r5, #2496]
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
.L5:
	.align	2
.L4:
	.word	-1727483681
	.size	prng_mersenne_twist, .-prng_mersenne_twist
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
