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
	.file	"aes_shift_rows.c"
	.text
	.align	1
	.global	aes_shift_rows
	.syntax unified
	.thumb
	.thumb_func
	.type	aes_shift_rows, %function
aes_shift_rows:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r0, #1]	@ zero_extendqisi2
	ldrb	r2, [r0, #5]	@ zero_extendqisi2
	strb	r2, [r0, #1]
	ldrb	r2, [r0, #9]	@ zero_extendqisi2
	strb	r2, [r0, #5]
	ldrb	r2, [r0, #13]	@ zero_extendqisi2
	strb	r2, [r0, #9]
	strb	r3, [r0, #13]
	ldrb	r3, [r0, #2]	@ zero_extendqisi2
	ldrb	r2, [r0, #10]	@ zero_extendqisi2
	strb	r2, [r0, #2]
	strb	r3, [r0, #10]
	ldrb	r3, [r0, #6]	@ zero_extendqisi2
	ldrb	r2, [r0, #14]	@ zero_extendqisi2
	strb	r2, [r0, #6]
	strb	r3, [r0, #14]
	ldrb	r3, [r0, #15]	@ zero_extendqisi2
	ldrb	r2, [r0, #11]	@ zero_extendqisi2
	strb	r2, [r0, #15]
	ldrb	r2, [r0, #7]	@ zero_extendqisi2
	strb	r2, [r0, #11]
	ldrb	r2, [r0, #3]	@ zero_extendqisi2
	strb	r2, [r0, #7]
	strb	r3, [r0, #3]
	bx	lr
	.size	aes_shift_rows, .-aes_shift_rows
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
