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
	.file	"aes_mix_columns.c"
	.text
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	gf_mul, %function
gf_mul:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, r0
	mov	ip, #8
	movs	r0, #0
.L3:
	sbfx	r2, r1, #0, #1
	ands	r2, r2, r3
	eors	r0, r0, r2
	lsls	r2, r3, #1
	uxtb	r2, r2
	tst	r3, #128
	ite	ne
	eorne	r3, r2, #27
	moveq	r3, r2
	lsrs	r1, r1, #1
	subs	ip, ip, #1
	bne	.L3
	bx	lr
	.size	gf_mul, .-gf_mul
	.align	1
	.global	aes_mix_columns
	.syntax unified
	.thumb
	.thumb_func
	.type	aes_mix_columns, %function
aes_mix_columns:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #12
	mov	r4, r0
	add	r3, r0, #16
	str	r3, [sp, #4]
	mov	fp, #2
	mov	r10, #3
.L7:
	ldrb	r9, [r4]	@ zero_extendqisi2
	ldrb	r7, [r4, #1]	@ zero_extendqisi2
	ldrb	r6, [r4, #2]	@ zero_extendqisi2
	ldrb	r8, [r4, #3]	@ zero_extendqisi2
	mov	r1, fp
	mov	r0, r9
	bl	gf_mul(PLT)
	mov	r5, r0
	mov	r1, r10
	mov	r0, r7
	bl	gf_mul(PLT)
	eors	r5, r5, r0
	eors	r5, r5, r6
	eor	r5, r8, r5
	strb	r5, [r4]
	mov	r1, fp
	mov	r0, r7
	bl	gf_mul(PLT)
	mov	r5, r0
	mov	r1, r10
	mov	r0, r6
	bl	gf_mul(PLT)
	eors	r5, r5, r0
	eor	r5, r9, r5
	eor	r5, r8, r5
	strb	r5, [r4, #1]
	mov	r1, fp
	mov	r0, r6
	bl	gf_mul(PLT)
	mov	r5, r0
	mov	r1, r10
	mov	r0, r8
	bl	gf_mul(PLT)
	eors	r5, r5, r0
	eor	r5, r9, r5
	eors	r5, r5, r7
	strb	r5, [r4, #2]
	mov	r1, r10
	mov	r0, r9
	bl	gf_mul(PLT)
	mov	r5, r0
	mov	r1, fp
	mov	r0, r8
	bl	gf_mul(PLT)
	eors	r5, r5, r0
	eors	r7, r7, r5
	eors	r6, r6, r7
	strb	r6, [r4, #3]
	adds	r4, r4, #4
	ldr	r3, [sp, #4]
	cmp	r4, r3
	bne	.L7
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.size	aes_mix_columns, .-aes_mix_columns
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
