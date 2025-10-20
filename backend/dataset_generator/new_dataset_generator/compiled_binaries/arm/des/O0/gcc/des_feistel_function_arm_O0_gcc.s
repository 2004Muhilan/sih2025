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
	.file	"des_feistel_function.c"
	.text
	.align	1
	.global	des_feistel
	.syntax unified
	.thumb
	.thumb_func
	.type	des_feistel, %function
des_feistel:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r7, r8, r9, r10, fp}
	sub	sp, sp, #36
	add	r7, sp, #0
	str	r0, [r7, #12]
	strd	r2, [r7]
	mov	r2, #0
	mov	r3, #0
	strd	r2, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #16]
	b	.L2
.L3:
	ldr	r3, [r7, #16]
	rsb	r3, r3, #32
	ldr	r2, [r7, #12]
	lsr	r3, r2, r3
	and	r2, r3, #1
	ldr	r3, [r7, #16]
	rsb	r3, r3, #47
	lsl	r3, r2, r3
	movs	r2, #0
	mov	r4, r3
	mov	r5, r2
	ldrd	r2, [r7, #24]
	orr	r10, r2, r4
	orr	fp, r3, r5
	strd	r10, [r7, #24]
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
.L2:
	ldr	r3, [r7, #16]
	cmp	r3, #47
	ble	.L3
	ldrd	r0, [r7, #24]
	ldrd	r2, [r7]
	eor	r8, r0, r2
	eor	r9, r1, r3
	strd	r8, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, r8, r9, r10, fp}
	bx	lr
	.size	des_feistel, .-des_feistel
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
