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
	adds	r3, r0, #4
	push	{r4, r5, r6, r7, lr}
	cmp	r1, r3
	ldr	r3, [r0]
	beq	.L2
	ldr	r2, [r0, #4]
	strd	r3, r2, [r1]
	ldrd	r3, r2, [r0, #8]
	strd	r3, r2, [r1, #8]
	ldrd	r3, r2, [r0, #16]
	strd	r3, r2, [r1, #16]
	ldrd	r3, r2, [r0, #24]
	strd	r3, r2, [r1, #24]
	ldrd	r3, r2, [r0, #32]
	strd	r3, r2, [r1, #32]
	ldrd	r3, r2, [r0, #40]
	strd	r3, r2, [r1, #40]
	ldrd	r3, r2, [r0, #48]
	strd	r3, r2, [r1, #48]
	ldrd	r3, r2, [r0, #56]
	strd	r3, r2, [r1, #56]
.L3:
	ldrd	r7, ip, [r1, #52]
	mov	r3, r1
	ldr	r6, [r1, #60]
	movs	r4, #16
	ldrd	r5, lr, [r1]
.L4:
	adds	r4, r4, #3
	ldr	r2, [r3, #8]
	cmp	r4, #79
	ldr	r0, [r3, #32]
	add	r3, r3, #12
	eor	r0, r0, r2
	eor	r0, r0, r7
	eor	r0, r0, r5
	ldr	r5, [r3]
	ror	r7, r0, #31
	ldr	r0, [r3, #24]
	str	r7, [r3, #52]
	eor	r0, r0, r5
	eor	r0, r0, ip
	eor	r0, r0, lr
	ldr	lr, [r3, #4]
	ror	ip, r0, #31
	ldr	r0, [r3, #28]
	str	ip, [r3, #56]
	eor	r2, r2, r0
	eor	r2, r2, lr
	eor	r2, r2, r6
	ror	r6, r2, #31
	str	r6, [r3, #60]
	bne	.L4
	add	r0, r1, #312
	add	ip, r1, #316
.L5:
	ldr	r3, [r0, #-8]
	ldr	r4, [r0, #-28]
	ldr	r1, [r0, #-52]
	ldr	r2, [r0, #-60]
	eors	r3, r3, r4
	eors	r3, r3, r1
	eors	r3, r3, r2
	ror	r3, r3, #31
	str	r3, [r0, #4]!
	cmp	ip, r0
	bne	.L5
	pop	{r4, r5, r6, r7, pc}
.L2:
	strd	r3, r3, [r0, #4]
	strd	r3, r3, [r0, #12]
	strd	r3, r3, [r0, #20]
	strd	r3, r3, [r0, #28]
	strd	r3, r3, [r0, #36]
	strd	r3, r3, [r0, #44]
	strd	r3, r3, [r0, #52]
	strd	r3, r3, [r0, #60]
	b	.L3
	.size	sha1_message_schedule, .-sha1_message_schedule
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
