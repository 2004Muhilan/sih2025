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
	.file	"rc4_drop3072.c"
	.text
	.global	__aeabi_uidivmod
	.align	1
	.global	rc4_drop3072_init
	.syntax unified
	.thumb
	.thumb_func
	.type	rc4_drop3072_init, %function
rc4_drop3072_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r7, r0
	mov	r8, r1
	mov	r9, r2
	subs	r4, r0, #1
	mov	r2, r4
	movs	r3, #0
.L2:
	strb	r3, [r2, #1]!
	adds	r3, r3, #1
	cmp	r3, #256
	bne	.L2
	add	fp, r7, #255
	movs	r5, #0
	rsb	r10, r7, #1
.L3:
	add	r0, r10, r4
	ldrb	r6, [r4, #1]!	@ zero_extendqisi2
	mov	r1, r9
	bl	__aeabi_uidivmod(PLT)
	ldrb	r3, [r8, r1]	@ zero_extendqisi2
	add	r5, r5, r6
	add	r3, r3, r5
	rsbs	r2, r3, #0
	uxtb	r3, r3
	uxtb	r2, r2
	it	pl
	rsbpl	r3, r2, #0
	uxtb	r5, r3
	ldrb	r2, [r7, r3]	@ zero_extendqisi2
	strb	r2, [r4]
	strb	r6, [r7, r3]
	cmp	r4, fp
	bne	.L3
	mov	r3, #3072
.L4:
	subs	r3, r3, #1
	bne	.L4
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.size	rc4_drop3072_init, .-rc4_drop3072_init
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
