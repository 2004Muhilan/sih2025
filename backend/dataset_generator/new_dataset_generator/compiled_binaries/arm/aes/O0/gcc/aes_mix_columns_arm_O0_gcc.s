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
	.file	"aes_mix_columns.c"
	.text
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	gf_mul, %function
gf_mul:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	mov	r3, r0
	mov	r2, r1
	strb	r3, [r7, #7]
	mov	r3, r2
	strb	r3, [r7, #6]
	movs	r3, #0
	strb	r3, [r7, #10]
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L2
.L5:
	ldrb	r3, [r7, #6]	@ zero_extendqisi2
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L3
	ldrb	r2, [r7, #10]
	ldrb	r3, [r7, #7]
	eors	r3, r3, r2
	strb	r3, [r7, #10]
.L3:
	ldrb	r3, [r7, #7]
	bic	r3, r3, #127
	strb	r3, [r7, #11]
	ldrb	r3, [r7, #7]
	lsls	r3, r3, #1
	strb	r3, [r7, #7]
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L4
	ldrb	r3, [r7, #7]
	eor	r3, r3, #27
	strb	r3, [r7, #7]
.L4:
	ldrb	r3, [r7, #6]	@ zero_extendqisi2
	lsrs	r3, r3, #1
	strb	r3, [r7, #6]
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L2:
	ldr	r3, [r7, #12]
	cmp	r3, #7
	ble	.L5
	ldrb	r3, [r7, #10]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	gf_mul, .-gf_mul
	.align	1
	.global	aes_mix_columns
	.syntax unified
	.thumb
	.thumb_func
	.type	aes_mix_columns, %function
aes_mix_columns:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #16]
	b	.L8
.L9:
	ldr	r3, [r7, #16]
	lsls	r3, r3, #2
	mov	r2, r3
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldrb	r3, [r3]
	strb	r3, [r7, #12]
	ldr	r3, [r7, #20]
	ldrb	r3, [r3, #1]
	strb	r3, [r7, #13]
	ldr	r3, [r7, #20]
	ldrb	r3, [r3, #2]
	strb	r3, [r7, #14]
	ldr	r3, [r7, #20]
	ldrb	r3, [r3, #3]
	strb	r3, [r7, #15]
	ldrb	r3, [r7, #12]	@ zero_extendqisi2
	movs	r1, #2
	mov	r0, r3
	bl	gf_mul(PLT)
	mov	r3, r0
	mov	r4, r3
	ldrb	r3, [r7, #13]	@ zero_extendqisi2
	movs	r1, #3
	mov	r0, r3
	bl	gf_mul(PLT)
	mov	r3, r0
	eors	r3, r3, r4
	uxtb	r2, r3
	ldrb	r3, [r7, #14]
	eors	r3, r3, r2
	uxtb	r2, r3
	ldrb	r3, [r7, #15]
	eors	r3, r3, r2
	uxtb	r2, r3
	ldr	r3, [r7, #20]
	strb	r2, [r3]
	ldrb	r3, [r7, #13]	@ zero_extendqisi2
	movs	r1, #2
	mov	r0, r3
	bl	gf_mul(PLT)
	mov	r3, r0
	mov	r2, r3
	ldrb	r3, [r7, #12]
	eors	r3, r3, r2
	uxtb	r4, r3
	ldrb	r3, [r7, #14]	@ zero_extendqisi2
	movs	r1, #3
	mov	r0, r3
	bl	gf_mul(PLT)
	mov	r3, r0
	eors	r3, r3, r4
	uxtb	r1, r3
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	ldrb	r2, [r7, #15]
	eors	r2, r2, r1
	uxtb	r2, r2
	strb	r2, [r3]
	ldrb	r2, [r7, #12]
	ldrb	r3, [r7, #13]
	eors	r3, r3, r2
	uxtb	r4, r3
	ldrb	r3, [r7, #14]	@ zero_extendqisi2
	movs	r1, #2
	mov	r0, r3
	bl	gf_mul(PLT)
	mov	r3, r0
	eors	r3, r3, r4
	uxtb	r4, r3
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	movs	r1, #3
	mov	r0, r3
	bl	gf_mul(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #20]
	adds	r3, r3, #2
	eors	r2, r2, r4
	uxtb	r2, r2
	strb	r2, [r3]
	ldrb	r3, [r7, #12]	@ zero_extendqisi2
	movs	r1, #3
	mov	r0, r3
	bl	gf_mul(PLT)
	mov	r3, r0
	mov	r2, r3
	ldrb	r3, [r7, #13]
	eors	r3, r3, r2
	uxtb	r2, r3
	ldrb	r3, [r7, #14]
	eors	r3, r3, r2
	uxtb	r4, r3
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	movs	r1, #2
	mov	r0, r3
	bl	gf_mul(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #20]
	adds	r3, r3, #3
	eors	r2, r2, r4
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
.L8:
	ldr	r3, [r7, #16]
	cmp	r3, #3
	ble	.L9
	nop
	nop
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	aes_mix_columns, .-aes_mix_columns
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
