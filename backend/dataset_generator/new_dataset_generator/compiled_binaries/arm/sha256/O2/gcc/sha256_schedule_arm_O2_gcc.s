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
	.file	"sha256_schedule.c"
	.text
	.align	1
	.p2align 2,,3
	.global	sha256_message_schedule
	.syntax unified
	.thumb
	.thumb_func
	.type	sha256_message_schedule, %function
sha256_message_schedule:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	subs	r3, r0, #4
	subs	r2, r1, #4
	add	r4, r0, #60
.L2:
	ldr	r0, [r3, #4]!
	str	r0, [r2, #4]!
	cmp	r4, r3
	bne	.L2
	mov	r0, r1
	ldrd	r4, r5, [r1, #56]
	add	lr, r0, #192
	ldr	r1, [r1]
.L3:
	mov	ip, r1
	ldr	r1, [r0, #4]!
	ror	r3, r4, #19
	eor	r3, r3, r4, ror #17
	cmp	r0, lr
	eor	r3, r3, r4, lsr #10
	ror	r2, r1, #18
	mov	r4, r5
	ldr	r5, [r0, #32]
	eor	r2, r2, r1, ror #7
	add	r3, r3, r5
	eor	r2, r2, r1, lsr #3
	add	r3, r3, r2
	add	r5, ip, r3
	str	r5, [r0, #60]
	bne	.L3
	pop	{r4, r5, pc}
	.size	sha256_message_schedule, .-sha256_message_schedule
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
