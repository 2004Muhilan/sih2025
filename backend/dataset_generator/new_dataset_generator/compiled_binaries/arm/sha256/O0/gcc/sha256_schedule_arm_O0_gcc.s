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
	.file	"sha256_schedule.c"
	.text
	.align	1
	.global	sha256_message_schedule
	.syntax unified
	.thumb
	.thumb_func
	.type	sha256_message_schedule, %function
sha256_message_schedule:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #8]
	b	.L2
.L3:
	ldr	r3, [r7, #8]
	lsls	r3, r3, #2
	ldr	r2, [r7, #4]
	add	r2, r2, r3
	ldr	r3, [r7, #8]
	lsls	r3, r3, #2
	ldr	r1, [r7]
	add	r3, r3, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #8]
.L2:
	ldr	r3, [r7, #8]
	cmp	r3, #15
	ble	.L3
	movs	r3, #16
	str	r3, [r7, #12]
	b	.L4
.L5:
	ldr	r3, [r7, #12]
	add	r3, r3, #1073741824
	subs	r3, r3, #15
	lsls	r3, r3, #2
	ldr	r2, [r7]
	add	r3, r3, r2
	ldr	r3, [r3]
	ror	r2, r3, #7
	ldr	r3, [r7, #12]
	add	r3, r3, #1073741824
	subs	r3, r3, #15
	lsls	r3, r3, #2
	ldr	r1, [r7]
	add	r3, r3, r1
	ldr	r3, [r3]
	ror	r3, r3, #18
	eors	r2, r2, r3
	ldr	r3, [r7, #12]
	add	r3, r3, #1073741824
	subs	r3, r3, #15
	lsls	r3, r3, #2
	ldr	r1, [r7]
	add	r3, r3, r1
	ldr	r3, [r3]
	lsrs	r3, r3, #3
	eors	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	add	r3, r3, #1073741824
	subs	r3, r3, #2
	lsls	r3, r3, #2
	ldr	r2, [r7]
	add	r3, r3, r2
	ldr	r3, [r3]
	ror	r2, r3, #17
	ldr	r3, [r7, #12]
	add	r3, r3, #1073741824
	subs	r3, r3, #2
	lsls	r3, r3, #2
	ldr	r1, [r7]
	add	r3, r3, r1
	ldr	r3, [r3]
	ror	r3, r3, #19
	eors	r2, r2, r3
	ldr	r3, [r7, #12]
	add	r3, r3, #1073741824
	subs	r3, r3, #2
	lsls	r3, r3, #2
	ldr	r1, [r7]
	add	r3, r3, r1
	ldr	r3, [r3]
	lsrs	r3, r3, #10
	eors	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	add	r3, r3, #1073741824
	subs	r3, r3, #16
	lsls	r3, r3, #2
	ldr	r2, [r7]
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #16]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	add	r3, r3, #1073741824
	subs	r3, r3, #7
	lsls	r3, r3, #2
	ldr	r1, [r7]
	add	r3, r3, r1
	ldr	r3, [r3]
	adds	r1, r2, r3
	ldr	r3, [r7, #12]
	lsls	r3, r3, #2
	ldr	r2, [r7]
	add	r3, r3, r2
	ldr	r2, [r7, #20]
	add	r2, r2, r1
	str	r2, [r3]
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L4:
	ldr	r3, [r7, #12]
	cmp	r3, #63
	ble	.L5
	nop
	nop
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	sha256_message_schedule, .-sha256_message_schedule
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
