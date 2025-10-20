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
	.file	"sha1_round3.c"
	.text
	.align	1
	.p2align 2,,3
	.global	sha1_round3
	.syntax unified
	.thumb
	.thumb_func
	.type	sha1_round3, %function
sha1_round3:
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4}
	movw	ip, #48348
	movt	ip, 36635
	ldr	r4, [sp, #8]
	add	ip, ip, r4
	ldr	r4, [sp, #4]
	add	ip, ip, r4
	ldr	r4, [sp], #4
	add	ip, ip, r0, ror #27
	orr	r0, r2, r3
	ands	r0, r0, r1
	ands	r2, r2, r3
	orrs	r0, r0, r2
	add	r0, r0, ip
	bx	lr
	.size	sha1_round3, .-sha1_round3
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
