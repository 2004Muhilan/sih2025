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
	.file	"sha1_message_schedule.c"
	.text
	.align	1
	.global	sha1_message_schedule
	.syntax unified
	.thumb
	.thumb_func
	.type	sha1_message_schedule, %function
sha1_message_schedule:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4}
	subs	r3, r0, #4
	subs	r2, r1, #4
	add	ip, r0, #60
	mov	r0, r2
.L2:
	ldr	r4, [r3, #4]!
	str	r4, [r0, #4]!
	cmp	r3, ip
	bne	.L2
	add	ip, r1, #252
.L3:
	ldr	r3, [r2, #56]
	ldr	r0, [r2, #36]
	eors	r3, r3, r0
	ldr	r1, [r2, #12]
	eors	r3, r3, r1
	ldr	r1, [r2, #4]!
	eors	r3, r3, r1
	ror	r3, r3, #31
	str	r3, [r2, #64]
	cmp	r2, ip
	bne	.L3
	ldr	r4, [sp], #4
	bx	lr
	.size	sha1_message_schedule, .-sha1_message_schedule
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
