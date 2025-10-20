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
	push	{r4, r5, lr}
	ldr	r1, .L2
	ldrd	r4, r2, [r0]
	ldr	r3, .L2+4
	muls	r1, r4, r1
	mla	r1, r3, r2, r1
	umull	r3, r5, r4, r3
	adds	r3, r3, #1
	adc	r1, r1, r5
	strd	r3, r1, [r0]
	lsrs	r3, r4, #18
	eor	r1, r2, r2, lsr #18
	orr	r3, r3, r2, lsl #14
	lsrs	r0, r2, #27
	eors	r3, r3, r4
	lsrs	r3, r3, #27
	orr	r3, r3, r1, lsl #5
	ror	r0, r3, r0
	pop	{r4, r5, pc}
.L3:
	.align	2
.L2:
	.word	1481765933
	.word	1284865837
	.size	prng_pcg, .-prng_pcg
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
