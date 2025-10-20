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
	.file	"sha256_padding.c"
	.text
	.align	1
	.p2align 2,,3
	.global	sha256_padding
	.syntax unified
	.thumb
	.thumb_func
	.type	sha256_padding, %function
sha256_padding:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	mov	r5, r1
	mov	r4, r2
	rsb	r7, r5, #55
	mov	r1, r0
	mov	r2, r5
	adds	r6, r5, #1
	and	r7, r7, #63
	mov	r0, r4
	bl	memcpy(PLT)
	movs	r3, #128
	mov	r2, r7
	strb	r3, [r4, r5]
	movs	r1, #0
	adds	r0, r4, r6
	add	r6, r6, r7
	bl	memset(PLT)
	lsls	r5, r5, #3
	movs	r1, #0
	adds	r2, r4, r6
	movs	r3, #56
.L2:
	rsb	r0, r3, #32
	sub	lr, r3, #32
	lsr	ip, r5, r3
	subs	r3, r3, #8
	lsl	r0, r1, r0
	cmn	r3, #8
	lsr	lr, r1, lr
	orr	ip, ip, r0
	orr	ip, ip, lr
	strb	ip, [r2], #1
	bne	.L2
	pop	{r3, r4, r5, r6, r7, pc}
	.size	sha256_padding, .-sha256_padding
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
