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
	.file	"aes_add_round_key.c"
	.text
	.align	1
	.global	aes_add_round_key
	.syntax unified
	.thumb
	.thumb_func
	.type	aes_add_round_key, %function
aes_add_round_key:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	subs	r3, r0, #1
	subs	r1, r1, #1
	add	ip, r0, #15
.L2:
	ldrb	r2, [r3, #1]!	@ zero_extendqisi2
	ldrb	r0, [r1, #1]!	@ zero_extendqisi2
	eors	r2, r2, r0
	strb	r2, [r3]
	cmp	r3, ip
	bne	.L2
	bx	lr
	.size	aes_add_round_key, .-aes_add_round_key
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
