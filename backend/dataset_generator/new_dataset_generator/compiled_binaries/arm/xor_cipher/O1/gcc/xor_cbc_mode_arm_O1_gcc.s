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
	.file	"xor_cbc_mode.c"
	.text
	.global	__aeabi_uidivmod
	.align	1
	.global	xor_cbc_mode
	.syntax unified
	.thumb
	.thumb_func
	.type	xor_cbc_mode, %function
xor_cbc_mode:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, lr}
	ldrb	r5, [sp, #32]	@ zero_extendqisi2
	cbz	r1, .L1
	mov	r8, r2
	mov	r9, r3
	mov	r7, r1
	subs	r4, r0, #1
	add	r7, r7, r0
	subs	r7, r7, #1
	rsb	r6, r0, #1
.L3:
	mov	r1, r9
	adds	r0, r6, r4
	bl	__aeabi_uidivmod(PLT)
	ldrb	r0, [r8, r1]	@ zero_extendqisi2
	ldrb	r3, [r4, #1]!	@ zero_extendqisi2
	eors	r0, r0, r3
	eors	r5, r5, r0
	strb	r5, [r4]
	cmp	r4, r7
	bne	.L3
.L1:
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
	.size	xor_cbc_mode, .-xor_cbc_mode
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
