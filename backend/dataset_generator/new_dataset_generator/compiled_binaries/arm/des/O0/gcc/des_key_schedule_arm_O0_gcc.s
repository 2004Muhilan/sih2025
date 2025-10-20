	.arch armv7-a
	.fpu vfpv3-d16
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
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
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r6, r7, r8, r9}
	sub	sp, sp, #24
	add	r7, sp, #0
	strd	r0, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L2
.L3:
	ldr	r3, [r7, #20]
	lsls	r1, r3, #2
	ldrd	r2, [r7, #8]
	rsb	r6, r1, #32
	sub	r0, r1, #32
	lsr	r4, r2, r1
	lsl	r6, r3, r6
	orrs	r4, r4, r6
	lsr	r0, r3, r0
	orrs	r4, r4, r0
	lsr	r5, r3, r1
	ldr	r3, [r7, #20]
	lsls	r3, r3, #3
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	mov	r8, r4
	uxth	r9, r5
	strd	r8, [r3]
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L2:
	ldr	r3, [r7, #20]
	cmp	r3, #15
	ble	.L3
	nop
	nop
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9}
	bx	lr
	.size	des_key_schedule, .-des_key_schedule
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
