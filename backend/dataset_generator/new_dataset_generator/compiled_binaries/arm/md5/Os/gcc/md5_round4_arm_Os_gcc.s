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
	.file	"md5_round4.c"
	.text
	.align	1
	.global	md5_round4
	.syntax unified
	.thumb
	.thumb_func
	.type	md5_round4, %function
md5_round4:
	@ args = 12, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	orn	r3, r1, r3
	ldr	r4, [sp, #16]
	eors	r3, r3, r2
	ldr	r2, [sp, #8]
	add	r2, r2, r4
	ldr	r4, [r0]
	add	r2, r2, r4
	add	r3, r3, r2
	ldr	r2, [sp, #12]
	lsls	r3, r3, r2
	add	r1, r1, r3
	str	r1, [r0]
	pop	{r4, pc}
	.size	md5_round4, .-md5_round4
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
