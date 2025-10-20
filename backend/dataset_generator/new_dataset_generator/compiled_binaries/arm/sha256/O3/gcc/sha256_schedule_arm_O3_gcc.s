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
	ldrd	r7, r3, [r1, #56]
	mov	r0, r1
	ldr	r4, [r1]
	movs	r5, #16
.L4:
	ror	r2, r7, #19
	ldr	r6, [r0, #4]
	eor	r2, r2, r7, ror #17
	adds	r5, r5, #2
	eor	r2, r2, r7, lsr #10
	ldr	r7, [r0, #36]
	cmp	r5, #62
	add	r0, r0, #8
	add	r2, r2, r7
	ror	r7, r6, #18
	eor	r7, r7, r6, ror #7
	eor	r7, r7, r6, lsr #3
	add	r2, r2, r7
	add	r7, r2, r4
	ldr	r2, [r0, #32]
	ldr	r4, [r0]
	add	r6, r6, r2
	ror	r2, r3, #19
	eor	r2, r2, r3, ror #17
	str	r7, [r0, #56]
	eor	r2, r2, r3, lsr #10
	ror	r3, r4, #18
	eor	r3, r3, r4, ror #7
	add	r2, r2, r6
	eor	r3, r3, r4, lsr #3
	add	r3, r3, r2
	str	r3, [r0, #60]
	bne	.L4
	add	r2, r1, #244
	add	lr, r1, #252
.L5:
	ldr	r5, [r2, #-56]
	ldr	r1, [r2, #-4]
	ldr	r4, [r2, #-24]
	ldr	r6, [r2, #-60]
	ror	r3, r5, #7
	ror	r0, r1, #19
	eor	r3, r3, r5, ror #18
	add	ip, r4, r6
	eor	r3, r3, r5, lsr #3
	eor	r0, r0, r1, ror #17
	add	r3, r3, ip
	eor	r0, r0, r1, lsr #10
	add	r3, r3, r0
	str	r3, [r2, #4]!
	cmp	lr, r2
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
	.size	sha256_message_schedule, .-sha256_message_schedule
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
