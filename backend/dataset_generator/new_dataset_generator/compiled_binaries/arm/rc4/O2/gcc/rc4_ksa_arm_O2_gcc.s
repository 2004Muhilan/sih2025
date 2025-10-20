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
	.file	"rc4_ksa.c"
	.text
	.global	__aeabi_uidivmod
	.align	1
	.p2align 2,,3
	.global	rc4_ksa
	.syntax unified
	.thumb
	.thumb_func
	.type	rc4_ksa, %function
rc4_ksa:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	subs	r5, r0, #1
	mov	r8, r2
	mov	r6, r0
	mov	r7, r1
	mov	r2, r5
	movs	r3, #0
.L2:
	strb	r3, [r2, #1]!
	adds	r3, r3, #1
	cmp	r3, #256
	bne	.L2
	add	r10, r6, #255
	movs	r4, #0
	rsb	r9, r6, #1
.L3:
	add	r0, r9, r5
	mov	r1, r8
	ldrb	fp, [r5, #1]!	@ zero_extendqisi2
	bl	__aeabi_uidivmod(PLT)
	ldrb	r3, [r7, r1]	@ zero_extendqisi2
	add	r4, r4, fp
	cmp	r10, r5
	add	r4, r4, r3
	uxtb	r4, r4
	ldrb	r3, [r6, r4]	@ zero_extendqisi2
	strb	r3, [r5]
	strb	fp, [r6, r4]
	bne	.L3
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.size	rc4_ksa, .-rc4_ksa
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
