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
	.file	"des_key_schedule.c"
	.text
	.align	1
	.global	des_key_schedule
	.syntax unified
	.thumb
	.thumb_func
	.type	des_key_schedule, %function
des_key_schedule:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	sub	lr, r2, #8
	movs	r3, #0
.L2:
	rsb	ip, r3, #32
	sub	r4, r3, #32
	lsr	r2, r0, r3
	lsl	ip, r1, ip
	orr	r2, r2, ip
	lsr	r4, r1, r4
	orrs	r2, r2, r4
	lsr	r4, r1, r3
	uxth	r4, r4
	str	r2, [lr, #8]!
	str	r4, [lr, #4]
	adds	r3, r3, #4
	cmp	r3, #64
	bne	.L2
	pop	{r4, pc}
	.size	des_key_schedule, .-des_key_schedule
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
