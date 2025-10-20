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
	.file	"md5_round3.c"
	.text
	.align	1
	.p2align 2,,3
	.global	md5_round3
	.syntax unified
	.thumb
	.thumb_func
	.type	md5_round3, %function
md5_round3:
	@ args = 12, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4}
	eors	r2, r2, r3
	ldr	r4, [sp, #4]
	ldr	r3, [sp, #12]
	eors	r2, r2, r1
	add	r3, r3, r4
	add	r2, r2, r3
	ldr	r3, [r0]
	add	r2, r2, r3
	ldr	r3, [sp, #8]
	ldr	r4, [sp], #4
	lsls	r2, r2, r3
	add	r1, r1, r2
	str	r1, [r0]
	bx	lr
	.size	md5_round3, .-md5_round3
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
