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
	.file	"md5_round1.c"
	.text
	.align	1
	.global	md5_round1
	.syntax unified
	.thumb
	.thumb_func
	.type	md5_round1, %function
md5_round1:
	@ args = 12, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r1, [r7, #8]
	ldr	r3, [r7, #4]
	ands	r1, r1, r3
	ldr	r3, [r7, #8]
	mvns	r0, r3
	ldr	r3, [r7]
	ands	r3, r3, r0
	orrs	r3, r3, r1
	add	r2, r2, r3
	ldr	r3, [r7, #24]
	add	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r2, r2, r3
	ldr	r3, [r7, #28]
	lsls	r2, r2, r3
	ldr	r3, [r7, #8]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3]
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	md5_round1, .-md5_round1
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
