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
	.file	"rc4_ksa.c"
	.text
	.global	__aeabi_uidivmod
	.align	1
	.global	rc4_ksa
	.syntax unified
	.thumb
	.thumb_func
	.type	rc4_ksa, %function
rc4_ksa:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	movs	r3, #0
	mov	r5, r0
	mov	r9, r1
	mov	r8, r2
.L2:
	strb	r3, [r5, r3]
	adds	r3, r3, #1
	cmp	r3, #256
	bne	.L2
	movs	r6, #0
	subs	r7, r5, #1
	mov	r4, r6
.L3:
	ldrb	r10, [r7, #1]!	@ zero_extendqisi2
	mov	r0, r6
	mov	r1, r8
	adds	r6, r6, #1
	bl	__aeabi_uidivmod(PLT)
	ldrb	r3, [r9, r1]	@ zero_extendqisi2
	add	r4, r4, r10
	cmp	r6, #256
	add	r3, r3, r4
	uxtb	r4, r3
	ldrb	r3, [r5, r4]	@ zero_extendqisi2
	strb	r3, [r7]
	strb	r10, [r5, r4]
	bne	.L3
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
	.size	rc4_ksa, .-rc4_ksa
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
