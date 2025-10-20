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
	.file	"rc4_prga.c"
	.text
	.align	1
	.global	rc4_prga
	.syntax unified
	.thumb
	.thumb_func
	.type	rc4_prga, %function
rc4_prga:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldrb	r3, [r1]	@ zero_extendqisi2
	push	{r4, r5, lr}
	adds	r3, r3, #1
	strb	r3, [r1]
	uxtb	r3, r3
	ldrb	r4, [r2]	@ zero_extendqisi2
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	add	r3, r3, r4
	uxtb	r3, r3
	strb	r3, [r2]
	ldrb	r4, [r1]	@ zero_extendqisi2
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	ldrb	r5, [r0, r4]	@ zero_extendqisi2
	strb	r3, [r0, r4]
	ldrb	r3, [r2]	@ zero_extendqisi2
	strb	r5, [r0, r3]
	ldrb	r3, [r1]	@ zero_extendqisi2
	ldrb	r2, [r2]	@ zero_extendqisi2
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	ldrb	r2, [r0, r2]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	ldrb	r0, [r0, r3]	@ zero_extendqisi2
	pop	{r4, r5, pc}
	.size	rc4_prga, .-rc4_prga
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
