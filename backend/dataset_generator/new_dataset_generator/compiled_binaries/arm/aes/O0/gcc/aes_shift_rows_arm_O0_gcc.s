	.arch armv7-a
	.fpu vfpv3-d16
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
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
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #1]
	strb	r3, [r7, #15]
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	ldr	r2, [r7, #4]
	ldrb	r2, [r2, #5]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #5
	ldr	r2, [r7, #4]
	ldrb	r2, [r2, #9]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #9
	ldr	r2, [r7, #4]
	ldrb	r2, [r2, #13]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #13
	ldrb	r2, [r7, #15]
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #2]
	strb	r3, [r7, #15]
	ldr	r3, [r7, #4]
	adds	r3, r3, #2
	ldr	r2, [r7, #4]
	ldrb	r2, [r2, #10]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #10
	ldrb	r2, [r7, #15]
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #6]
	strb	r3, [r7, #15]
	ldr	r3, [r7, #4]
	adds	r3, r3, #6
	ldr	r2, [r7, #4]
	ldrb	r2, [r2, #14]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #14
	ldrb	r2, [r7, #15]
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #15]
	strb	r3, [r7, #15]
	ldr	r3, [r7, #4]
	adds	r3, r3, #15
	ldr	r2, [r7, #4]
	ldrb	r2, [r2, #11]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #11
	ldr	r2, [r7, #4]
	ldrb	r2, [r2, #7]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #7
	ldr	r2, [r7, #4]
	ldrb	r2, [r2, #3]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #3
	ldrb	r2, [r7, #15]
	strb	r2, [r3]
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	aes_shift_rows, .-aes_shift_rows
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
