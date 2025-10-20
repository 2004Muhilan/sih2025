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
	.file	"sha1_round3.c"
	.text
	.align	1
	.global	sha1_round3
	.syntax unified
	.thumb
	.thumb_func
	.type	sha1_round3, %function
sha1_round3:
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	orr	r4, r2, r3
	ands	r4, r4, r1
	ands	r2, r2, r3
	ldr	r3, .L2
	orrs	r4, r4, r2
	ldr	r2, [sp, #12]
	add	r3, r3, r2
	ldr	r2, [sp, #8]
	add	r3, r3, r2
	add	r0, r3, r0, ror #27
	add	r0, r0, r4
	pop	{r4, pc}
.L3:
	.align	2
.L2:
	.word	-1894007588
	.size	sha1_round3, .-sha1_round3
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
