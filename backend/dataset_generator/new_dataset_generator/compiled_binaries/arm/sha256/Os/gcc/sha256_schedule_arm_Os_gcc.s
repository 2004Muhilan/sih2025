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
	movs	r3, #0
	push	{r4, r5, lr}
.L2:
	ldr	r2, [r0, r3, lsl #2]
	str	r2, [r1, r3, lsl #2]
	adds	r3, r3, #1
	cmp	r3, #16
	bne	.L2
	add	r4, r1, #192
.L3:
	ldr	r2, [r1, #4]
	mov	r5, r1
	ldr	r0, [r1, #56]
	adds	r1, r1, #4
	cmp	r4, r1
	ror	r3, r2, #18
	eor	r3, r3, r2, ror #7
	eor	r3, r3, r2, lsr #3
	ldr	r2, [r5]
	ldr	r5, [r1, #32]
	add	r2, r2, r5
	add	r3, r3, r2
	ror	r2, r0, #19
	eor	r2, r2, r0, ror #17
	eor	r2, r2, r0, lsr #10
	add	r3, r3, r2
	str	r3, [r1, #60]
	bne	.L3
	pop	{r4, r5, pc}
	.size	sha256_message_schedule, .-sha256_message_schedule
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
