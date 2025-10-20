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
	.file	"md5_round2.c"
	.text
	.align	1
	.global	md5_round2
	.syntax unified
	.thumb
	.thumb_func
	.type	md5_round2, %function
md5_round2:
	@ args = 12, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	eor	r4, r1, r2
	ands	r4, r4, r3
	eors	r4, r4, r2
	ldr	r3, [sp, #8]
	ldr	r2, [sp, #16]
	add	r3, r3, r2
	ldr	r2, [r0]
	add	r3, r3, r2
	add	r4, r4, r3
	ldr	r3, [sp, #12]
	lsls	r4, r4, r3
	add	r1, r1, r4
	str	r1, [r0]
	pop	{r4, pc}
	.size	md5_round2, .-md5_round2
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
