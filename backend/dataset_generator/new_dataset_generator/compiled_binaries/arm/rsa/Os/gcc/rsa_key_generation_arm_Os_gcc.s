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
	.file	"rsa_key_generation.c"
	.text
	.align	1
	.global	rsa_generate_keys
	.syntax unified
	.thumb
	.thumb_func
	.type	rsa_generate_keys, %function
rsa_generate_keys:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	movs	r5, #0
	movw	r4, #3233
	strd	r4, [r0]
	movs	r4, #17
	movs	r5, #0
	movs	r0, #0
	strd	r4, [r1]
	movs	r1, #0
	strd	r0, [r2]
	pop	{r4, r5, pc}
	.size	rsa_generate_keys, .-rsa_generate_keys
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
