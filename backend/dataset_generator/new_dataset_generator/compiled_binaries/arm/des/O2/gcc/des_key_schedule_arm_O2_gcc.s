	.arch armv7-a
	.fpu vfpv3-d16
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"des_key_schedule.c"
	.text
	.align	1
	.p2align 2,,3
	.global	des_key_schedule
	.syntax unified
	.thumb
	.thumb_func
	.type	des_key_schedule, %function
des_key_schedule:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	movs	r3, #0
	sub	r5, r2, #8
.L2:
	rsb	r4, r3, #32
	sub	lr, r3, #32
	lsr	r2, r0, r3
	lsl	r4, r1, r4
	lsr	lr, r1, lr
	orrs	r2, r2, r4
	lsr	ip, r1, r3
	orr	r2, r2, lr
	str	r2, [r5, #8]!
	adds	r3, r3, #4
	uxth	r2, ip
	cmp	r3, #64
	str	r2, [r5, #4]
	bne	.L2
	pop	{r4, r5, pc}
	.size	des_key_schedule, .-des_key_schedule
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
