	.arch armv7-a
	.fpu vfpv3-d16
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
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
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #36
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L2
.L3:
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldr	r2, [r7, #20]
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L2:
	ldr	r3, [r7, #20]
	cmp	r3, #255
	ble	.L3
	movs	r3, #0
	strb	r3, [r7, #17]
	movs	r3, #0
	str	r3, [r7, #24]
	b	.L4
.L5:
	ldrb	r3, [r7, #17]	@ zero_extendqisi2
	ldr	r2, [r7, #24]
	ldr	r1, [r7, #12]
	add	r2, r2, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	adds	r4, r3, r2
	ldr	r3, [r7, #24]
	ldr	r1, [r7, #4]
	mov	r0, r3
	bl	__aeabi_uidivmod(PLT)
	mov	r3, r1
	mov	r2, r3
	ldr	r3, [r7, #8]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	add	r3, r3, r4
	rsbs	r2, r3, #0
	uxtb	r3, r3
	uxtb	r2, r2
	it	pl
	rsbpl	r3, r2, #0
	strb	r3, [r7, #17]
	ldr	r3, [r7, #24]
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #17]	@ zero_extendqisi2
	ldr	r2, [r7, #12]
	add	r2, r2, r3
	ldr	r3, [r7, #24]
	ldr	r1, [r7, #12]
	add	r3, r3, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	ldrb	r3, [r7, #17]	@ zero_extendqisi2
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldrb	r2, [r7, #19]
	strb	r2, [r3]
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	str	r3, [r7, #24]
.L4:
	ldr	r3, [r7, #24]
	cmp	r3, #255
	ble	.L5
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L6
.L7:
	ldr	r3, [r7, #28]
	rsbs	r2, r3, #0
	uxtb	r3, r3
	uxtb	r2, r2
	it	pl
	rsbpl	r3, r2, #0
	mov	r2, r3
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #18]
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L6:
	ldr	r3, [r7, #28]
	cmp	r3, #3072
	blt	.L7
	nop
	nop
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	rc4_drop3072_init, .-rc4_drop3072_init
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
