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
	.file	"xor_multi_key.c"
	.text
	.global	__aeabi_uidivmod
	.align	1
	.p2align 2,,3
	.global	xor_multi_key
	.syntax unified
	.thumb
	.thumb_func
	.type	xor_multi_key, %function
xor_multi_key:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, lr}
	ldr	r8, [sp, #32]
	cbz	r1, .L1
	add	r1, r1, r0
	mov	r6, r2
	mov	r7, r3
	subs	r4, r1, #1
	add	r9, r0, #-1
	rsb	r5, r0, #1
.L3:
	add	r0, r5, r9
	mov	r1, r8
	bl	__aeabi_uidivmod(PLT)
	ldrb	r3, [r9, #1]!	@ zero_extendqisi2
	ldrb	r0, [r6, r1]	@ zero_extendqisi2
	cmp	r9, r4
	eor	r0, r0, r3
	strb	r0, [r9]
	ldrb	r3, [r7, r1]	@ zero_extendqisi2
	eor	r0, r0, r3
	strb	r0, [r9]
	bne	.L3
.L1:
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
	.size	xor_multi_key, .-xor_multi_key
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
