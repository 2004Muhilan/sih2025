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
	.file	"rsa_miller_rabin.c"
	.text
	.align	1
	.global	rsa_miller_rabin
	.syntax unified
	.thumb
	.thumb_func
	.type	rsa_miller_rabin, %function
rsa_miller_rabin:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r7, r8, r9, r10, fp}
	sub	sp, sp, #28
	add	r7, sp, #0
	strd	r0, [r7, #8]
	str	r2, [r7, #4]
	ldrd	r2, [r7, #8]
	cmp	r2, #2
	sbcs	r3, r3, #0
	bcs	.L2
	movs	r3, #0
	b	.L3
.L2:
	ldrd	r2, [r7, #8]
	subs	r1, r2, #2
	orrs	r3, r3, r1
	beq	.L4
	ldrd	r2, [r7, #8]
	subs	r1, r2, #3
	orrs	r3, r3, r1
	bne	.L5
.L4:
	movs	r3, #1
	b	.L3
.L5:
	ldrd	r2, [r7, #8]
	and	r8, r2, #1
	mov	r9, #0
	orrs	r3, r8, r9
	bne	.L6
	movs	r3, #0
	b	.L3
.L6:
	ldrd	r2, [r7, #8]
	adds	r10, r2, #-1
	adc	fp, r3, #-1
	strd	r10, [r7, #16]
	b	.L7
.L8:
	ldrd	r0, [r7, #16]
	mov	r2, #0
	mov	r3, #0
	lsrs	r2, r0, #1
	orr	r2, r2, r1, lsl #31
	lsrs	r3, r1, #1
	strd	r2, [r7, #16]
.L7:
	ldrd	r2, [r7, #16]
	and	r4, r2, #1
	movs	r5, #0
	orrs	r3, r4, r5
	beq	.L8
	movs	r3, #1
.L3:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, r8, r9, r10, fp}
	bx	lr
	.size	rsa_miller_rabin, .-rsa_miller_rabin
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
