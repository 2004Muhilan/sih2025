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
	@ link register save eliminated.
	push	{r4, r5}
	uxth	r4, r1
	lsrs	r3, r1, #4
	strd	r0, r4, [r2]
	lsrs	r4, r0, #4
	orr	r4, r4, r1, lsl #28
	str	r4, [r2, #8]
	lsrs	r4, r0, #8
	str	r3, [r2, #72]
	orr	r4, r4, r1, lsl #24
	str	r4, [r2, #16]
	lsrs	r4, r0, #12
	uxth	r3, r3
	orr	r4, r4, r1, lsl #20
	str	r4, [r2, #24]
	lsrs	r4, r0, #16
	str	r3, [r2, #12]
	orr	r4, r4, r1, lsl #16
	lsrs	r3, r0, #20
	str	r4, [r2, #32]
	lsrs	r4, r1, #20
	str	r4, [r2, #44]
	lsrs	r5, r1, #24
	str	r4, [r2, #104]
	lsrs	r4, r0, #24
	lsrs	r0, r0, #28
	orr	r3, r3, r1, lsl #12
	orr	r0, r0, r1, lsl #4
	str	r3, [r2, #40]
	str	r0, [r2, #56]
	movs	r3, #0
	lsrs	r0, r1, #12
	strd	r3, r5, [r2, #108]
	str	r3, [r2, #68]
	orr	r4, r4, r1, lsl #8
	str	r3, [r2, #76]
	str	r3, [r2, #84]
	str	r3, [r2, #92]
	str	r3, [r2, #100]
	str	r3, [r2, #116]
	str	r3, [r2, #124]
	lsrs	r3, r1, #8
	strd	r4, r5, [r2, #48]
	uxth	r4, r0
	str	r1, [r2, #64]
	str	r3, [r2, #80]
	uxth	r3, r3
	str	r4, [r2, #28]
	str	r3, [r2, #20]
	lsrs	r3, r1, #16
	str	r0, [r2, #88]
	lsrs	r1, r1, #28
	str	r3, [r2, #36]
	str	r1, [r2, #60]
	str	r3, [r2, #96]
	pop	{r4, r5}
	str	r1, [r2, #120]
	bx	lr
	.size	des_key_schedule, .-des_key_schedule
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
