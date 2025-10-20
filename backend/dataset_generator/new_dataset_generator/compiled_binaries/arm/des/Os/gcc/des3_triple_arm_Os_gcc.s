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
	.file	"des3_triple.c"
	.text
	.align	1
	.global	des3_encrypt
	.syntax unified
	.thumb
	.thumb_func
	.type	des3_encrypt, %function
des3_encrypt:
	@ args = 16, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, [sp, #16]
	ldr	r5, [sp, #24]
	ldr	r6, [sp, #28]
	eors	r5, r5, r4
	ldr	r4, [sp, #20]
	eors	r5, r5, r2
	eors	r4, r4, r6
	eors	r0, r0, r5
	eors	r4, r4, r3
	eors	r1, r1, r4
	pop	{r4, r5, r6, pc}
	.size	des3_encrypt, .-des3_encrypt
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
