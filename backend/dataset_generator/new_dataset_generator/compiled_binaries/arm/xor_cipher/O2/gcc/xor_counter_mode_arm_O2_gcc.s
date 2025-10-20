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
	.file	"xor_counter_mode.c"
	.text
	.global	__aeabi_uidivmod
	.align	1
	.p2align 2,,3
	.global	xor_counter_mode
	.syntax unified
	.thumb
	.thumb_func
	.type	xor_counter_mode, %function
xor_counter_mode:
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, lr}
	ldr	r7, [sp, #32]
	cbz	r1, .L1
	subs	r4, r0, #1
	uxtb	r7, r7
	mov	r8, r2
	mov	r9, r3
	adds	r5, r4, r1
	rsb	r6, r0, #1
	subs	r7, r7, r4
.L3:
	adds	r0, r6, r4
	mov	r1, r9
	bl	__aeabi_uidivmod(PLT)
	adds	r0, r7, r4
	ldrb	r2, [r4, #1]!	@ zero_extendqisi2
	ldrb	r3, [r8, r1]	@ zero_extendqisi2
	uxtb	r0, r0
	eors	r0, r0, r2
	cmp	r4, r5
	eor	r3, r3, r0
	strb	r3, [r4]
	bne	.L3
.L1:
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
	.size	xor_counter_mode, .-xor_counter_mode
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
