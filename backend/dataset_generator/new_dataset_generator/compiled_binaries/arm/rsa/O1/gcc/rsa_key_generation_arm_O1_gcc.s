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
	@ link register save eliminated.
	vldr.64	d7, .L2	@ int
	vstr.64	d7, [r0]	@ int
	vldr.64	d7, .L2+8	@ int
	vstr.64	d7, [r1]	@ int
	movs	r0, #0
	movs	r1, #0
	strd	r0, [r2]
	bx	lr
.L3:
	.align	3
.L2:
	.word	3233
	.word	0
	.word	17
	.word	0
	.size	rsa_generate_keys, .-rsa_generate_keys
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
