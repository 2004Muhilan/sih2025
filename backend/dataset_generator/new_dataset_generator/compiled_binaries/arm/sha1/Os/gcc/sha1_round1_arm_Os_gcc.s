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
	.file	"sha1_round1.c"
	.text
	.align	1
	.global	sha1_round1
	.syntax unified
	.thumb
	.thumb_func
	.type	sha1_round1, %function
sha1_round1:
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	eors	r2, r2, r3
	ldr	r5, [sp, #16]
	ldr	r4, .L2
	ands	r2, r2, r1
	eors	r2, r2, r3
	add	r4, r4, r5
	ldr	r5, [sp, #12]
	add	r4, r4, r5
	add	r0, r4, r0, ror #27
	add	r0, r0, r2
	pop	{r4, r5, pc}
.L3:
	.align	2
.L2:
	.word	1518500249
	.size	sha1_round1, .-sha1_round1
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
