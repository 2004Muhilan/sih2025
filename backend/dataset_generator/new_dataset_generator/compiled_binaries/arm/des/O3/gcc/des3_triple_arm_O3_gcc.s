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
	.file	"des3_triple.c"
	.text
	.align	1
	.p2align 2,,3
	.global	des3_encrypt
	.syntax unified
	.thumb
	.thumb_func
	.type	des3_encrypt, %function
des3_encrypt:
	@ args = 16, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5}
	ldr	r4, [sp, #8]
	ldr	r5, [sp, #16]
	eor	ip, r4, r5
	ldr	r4, [sp, #12]
	eor	ip, ip, r2
	ldr	r2, [sp, #20]
	eor	r0, ip, r0
	eors	r2, r2, r4
	eors	r2, r2, r3
	eors	r1, r1, r2
	pop	{r4, r5}
	bx	lr
	.size	des3_encrypt, .-des3_encrypt
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
