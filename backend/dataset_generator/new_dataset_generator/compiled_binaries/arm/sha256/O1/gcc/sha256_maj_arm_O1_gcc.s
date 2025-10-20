	.arch armv7-a
	.fpu vfpv3-d16
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 1
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"sha256_maj.c"
	.text
	.align	1
	.global	sha256_maj
	.syntax unified
	.thumb
	.thumb_func
	.type	sha256_maj, %function
sha256_maj:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	eor	r3, r1, r2
	ands	r0, r0, r3
	ands	r1, r1, r2
	eors	r0, r0, r1
	bx	lr
	.size	sha256_maj, .-sha256_maj
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
