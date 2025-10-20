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
	.file	"xor_counter_mode.c"
	.text
	.global	__aeabi_uidivmod
	.align	1
	.global	xor_counter_mode
	.syntax unified
	.thumb
	.thumb_func
	.type	xor_counter_mode, %function
xor_counter_mode:
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, lr}
	mov	r6, r1
	ldr	r9, [sp, #32]
	mov	r7, r2
	mov	r8, r3
	subs	r5, r0, #1
	movs	r4, #0
.L2:
	cmp	r4, r6
	bne	.L3
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
.L3:
	mov	r0, r4
	mov	r1, r8
	bl	__aeabi_uidivmod(PLT)
	ldrb	r3, [r5, #1]!	@ zero_extendqisi2
	add	r2, r9, r4
	adds	r4, r4, #1
	eors	r2, r2, r3
	ldrb	r3, [r7, r1]	@ zero_extendqisi2
	eors	r3, r3, r2
	strb	r3, [r5]
	b	.L2
	.size	xor_counter_mode, .-xor_counter_mode
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
