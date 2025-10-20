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
	.file	"sha1_round1.c"
	.text
	.align	1
	.global	sha1_round1
	.syntax unified
	.thumb
	.thumb_func
	.type	sha1_round1, %function
sha1_round1:
	@ args = 8, pretend = 0, frame = 16
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
	ror	r2, r3, #27
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
	ldr	r3, [r7, #28]
	add	r2, r2, r3
	movw	r3, #31129
	movt	r3, 23170
	add	r3, r3, r2
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	sha1_round1, .-sha1_round1
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
