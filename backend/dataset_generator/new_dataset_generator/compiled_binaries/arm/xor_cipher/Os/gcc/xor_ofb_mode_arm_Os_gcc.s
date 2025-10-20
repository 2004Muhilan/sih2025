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
	.file	"xor_ofb_mode.c"
	.text
	.global	__aeabi_uidivmod
	.align	1
	.global	xor_ofb_mode
	.syntax unified
	.thumb
	.thumb_func
	.type	xor_ofb_mode, %function
xor_ofb_mode:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, lr}
	mov	r6, r1
	mov	r7, r2
	ldrb	r9, [sp, #32]	@ zero_extendqisi2
	mov	r8, r3
	subs	r4, r0, #1
	movs	r5, #0
.L2:
	cmp	r5, r6
	bne	.L3
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
.L3:
	mov	r0, r5
	mov	r1, r8
	bl	__aeabi_uidivmod(PLT)
	ldrb	r3, [r7, r1]	@ zero_extendqisi2
	adds	r5, r5, #1
	eor	r9, r9, r3
	ldrb	r3, [r4, #1]!	@ zero_extendqisi2
	eor	r3, r9, r3
	strb	r3, [r4]
	b	.L2
	.size	xor_ofb_mode, .-xor_ofb_mode
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
