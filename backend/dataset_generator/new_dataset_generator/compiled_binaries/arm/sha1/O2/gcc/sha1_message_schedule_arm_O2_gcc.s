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
	.file	"sha1_message_schedule.c"
	.text
	.align	1
	.p2align 2,,3
	.global	sha1_message_schedule
	.syntax unified
	.thumb
	.thumb_func
	.type	sha1_message_schedule, %function
sha1_message_schedule:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r6, r7}
	subs	r3, r0, #4
	subs	r2, r1, #4
	add	r4, r0, #60
.L2:
	ldr	r0, [r3, #4]!
	str	r0, [r2, #4]!
	cmp	r3, r4
	bne	.L2
	ldrd	r7, r6, [r1, #52]
	add	ip, r1, #260
	ldr	r2, [r1, #60]
	ldr	r5, [r1]
	ldr	r4, [r1, #4]!
.L3:
	ldr	r3, [r1, #28]
	ldr	r0, [r1, #4]!
	eors	r3, r3, r0
	cmp	r1, ip
	eor	r3, r3, r7
	mov	r7, r6
	eor	r3, r3, r5
	mov	r6, r2
	mov	r5, r4
	mov	r4, r0
	ror	r2, r3, #31
	str	r2, [r1, #56]
	bne	.L3
	pop	{r4, r5, r6, r7}
	bx	lr
	.size	sha1_message_schedule, .-sha1_message_schedule
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
