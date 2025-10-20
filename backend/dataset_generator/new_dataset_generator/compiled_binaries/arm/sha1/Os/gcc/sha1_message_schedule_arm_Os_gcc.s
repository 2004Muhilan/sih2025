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
	movs	r3, #0
	push	{r4, lr}
.L2:
	ldr	r2, [r0, r3, lsl #2]
	str	r2, [r1, r3, lsl #2]
	adds	r3, r3, #1
	cmp	r3, #16
	bne	.L2
	subs	r2, r1, #4
	adds	r1, r1, #252
.L3:
	ldr	r3, [r2, #56]
	ldr	r4, [r2, #36]
	ldr	r0, [r2, #12]
	eors	r3, r3, r4
	eors	r3, r3, r0
	ldr	r0, [r2, #4]!
	eors	r3, r3, r0
	cmp	r1, r2
	ror	r3, r3, #31
	str	r3, [r2, #64]
	bne	.L3
	pop	{r4, pc}
	.size	sha1_message_schedule, .-sha1_message_schedule
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
