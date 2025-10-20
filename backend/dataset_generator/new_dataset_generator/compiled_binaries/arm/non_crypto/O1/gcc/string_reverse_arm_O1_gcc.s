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
	cmp	r1, #1
	beq	.L6
	push	{r4, r5, lr}
	add	ip, r0, #-1
	add	lr, r0, r1
	mvn	r5, #1
.L3:
	mov	r2, ip
	ldrb	r3, [ip, #1]!	@ zero_extendqisi2
	ldrb	r4, [lr, #-1]!	@ zero_extendqisi2
	strb	r4, [ip]
	strb	r3, [lr]
	adds	r2, r2, #2
	subs	r2, r2, r0
	sub	r3, r5, ip
	add	r3, r3, r0
	add	r3, r3, r1
	cmp	r2, r3
	bcc	.L3
	pop	{r4, r5, pc}
.L6:
	bx	lr
	.size	string_reverse, .-string_reverse
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
