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
	.file	"sha256_sigma.c"
	.text
	.align	1
	.global	sha256_sigma0
	.syntax unified
	.thumb
	.thumb_func
	.type	sha256_sigma0, %function
sha256_sigma0:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ror	r3, r0, #13
	eor	r3, r3, r0, ror #2
	eor	r0, r3, r0, ror #22
	bx	lr
	.size	sha256_sigma0, .-sha256_sigma0
	.align	1
	.global	sha256_sigma1
	.syntax unified
	.thumb
	.thumb_func
	.type	sha256_sigma1, %function
sha256_sigma1:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ror	r3, r0, #11
	eor	r3, r3, r0, ror #6
	eor	r0, r3, r0, ror #25
	bx	lr
	.size	sha256_sigma1, .-sha256_sigma1
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
