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
	.file	"des_permutation_choice.c"
	.text
	.align	1
	.global	des_pc1
	.syntax unified
	.thumb
	.thumb_func
	.type	des_pc1, %function
des_pc1:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #28
	add	r7, sp, #0
	strd	r0, [r7]
	mov	r0, #0
	mov	r1, #0
	strd	r0, [r7, #16]
	movs	r1, #0
	str	r1, [r7, #12]
	b	.L2
.L3:
	ldr	r1, [r7, #12]
	rsb	r6, r1, #64
	ldrd	r0, [r7]
	rsb	lr, r6, #32
	sub	ip, r6, #32
	lsr	r4, r0, r6
	lsl	lr, r1, lr
	orr	r4, r4, lr
	lsr	ip, r1, ip
	orr	r4, r4, ip
	lsr	r5, r1, r6
	and	r8, r4, #1
	mov	r9, #0
	ldr	r1, [r7, #12]
	rsb	r1, r1, #55
	sub	r6, r1, #32
	rsb	r0, r1, #32
	lsl	r3, r9, r1
	lsl	r6, r8, r6
	orrs	r3, r3, r6
	lsr	r0, r8, r0
	orrs	r3, r3, r0
	lsl	r2, r8, r1
	ldrd	r0, [r7, #16]
	orr	r10, r0, r2
	orr	fp, r1, r3
	strd	r10, [r7, #16]
	ldr	r1, [r7, #12]
	adds	r1, r1, #1
	str	r1, [r7, #12]
.L2:
	ldr	r1, [r7, #12]
	cmp	r1, #55
	ble	.L3
	ldrd	r2, [r7, #16]
	mov	r0, r2
	mov	r1, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.size	des_pc1, .-des_pc1
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
