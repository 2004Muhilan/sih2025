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
	.file	"sha256_schedule.c"
	.text
	.align	1
	.global	sha256_message_schedule
	.syntax unified
	.thumb
	.thumb_func
	.type	sha256_message_schedule, %function
sha256_message_schedule:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	subs	r3, r0, #4
	subs	r2, r1, #4
	add	lr, r0, #60
.L2:
	ldr	r0, [r3, #4]!
	str	r0, [r2, #4]!
	cmp	r3, lr
	bne	.L2
	mov	r2, r1
	add	ip, r1, #192
.L3:
	mov	lr, r2
	ldr	r1, [r2, #4]
	ldr	r0, [r2, #56]
	adds	r2, r2, #4
	ror	r3, r1, #18
	eor	r3, r3, r1, ror #7
	eor	r3, r3, r1, lsr #3
	ldr	r1, [lr]
	ldr	r4, [r2, #32]
	add	r1, r1, r4
	add	r3, r3, r1
	ror	r1, r0, #19
	eor	r1, r1, r0, ror #17
	eor	r1, r1, r0, lsr #10
	add	r3, r3, r1
	str	r3, [r2, #60]
	cmp	r2, ip
	bne	.L3
	pop	{r4, pc}
	.size	sha256_message_schedule, .-sha256_message_schedule
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
