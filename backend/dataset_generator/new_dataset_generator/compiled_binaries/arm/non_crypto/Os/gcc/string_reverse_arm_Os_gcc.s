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
	.file	"string_reverse.c"
	.text
	.align	1
	.global	string_reverse
	.syntax unified
	.thumb
	.thumb_func
	.type	string_reverse, %function
string_reverse:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	subs	r2, r0, #1
	push	{r4, r5, lr}
	add	r0, r0, r1
	subs	r4, r1, #1
	movs	r3, #0
.L2:
	subs	r1, r4, r3
	cmp	r3, r1
	bcc	.L3
	pop	{r4, r5, pc}
.L3:
	ldrb	r1, [r2, #1]!	@ zero_extendqisi2
	adds	r3, r3, #1
	ldrb	r5, [r0, #-1]!	@ zero_extendqisi2
	strb	r5, [r2]
	strb	r1, [r0]
	b	.L2
	.size	string_reverse, .-string_reverse
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
