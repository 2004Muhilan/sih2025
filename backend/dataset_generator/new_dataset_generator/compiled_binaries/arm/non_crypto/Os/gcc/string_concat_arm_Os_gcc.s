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
	.file	"string_concat.c"
	.text
	.align	1
	.global	string_concat
	.syntax unified
	.thumb
	.thumb_func
	.type	string_concat, %function
string_concat:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r3, #0
	push	{r4, lr}
.L2:
	cmp	r3, r2
	beq	.L3
	ldrb	r4, [r0, r3]	@ zero_extendqisi2
	cbnz	r4, .L4
.L3:
	add	r3, r3, r0
	subs	r1, r1, #1
	subs	r2, r2, #1
	b	.L5
.L4:
	adds	r3, r3, #1
	b	.L2
.L7:
	strb	r4, [r3], #1
.L5:
	subs	r4, r3, r0
	cmp	r2, r4
	bls	.L6
	ldrb	r4, [r1, #1]!	@ zero_extendqisi2
	cmp	r4, #0
	bne	.L7
.L6:
	movs	r2, #0
	strb	r2, [r3]
	pop	{r4, pc}
	.size	string_concat, .-string_concat
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
