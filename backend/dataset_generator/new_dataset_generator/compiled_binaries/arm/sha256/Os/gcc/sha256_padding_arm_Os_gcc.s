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
	.file	"sha256_padding.c"
	.text
	.align	1
	.global	sha256_padding
	.syntax unified
	.thumb
	.thumb_func
	.type	sha256_padding, %function
sha256_padding:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	mov	r4, r1
	mov	r5, r2
	rsb	r6, r4, #55
	mov	r2, r1
	mov	r1, r0
	mov	r0, r5
	bl	memcpy(PLT)
	and	r6, r6, #63
	adds	r0, r4, #1
	movs	r3, #128
	add	r0, r0, r5
	strb	r3, [r5, r4]
	mov	r2, r6
	movs	r1, #0
	bl	memset(PLT)
	lsl	ip, r4, #3
	add	r4, r4, r6
	movs	r7, #0
	add	r5, r5, r4
	movs	r3, #56
.L2:
	rsb	r0, r3, #32
	sub	r1, r3, #32
	lsr	r2, ip, r3
	subs	r3, r3, #8
	lsl	r0, r7, r0
	cmn	r3, #8
	orr	r2, r2, r0
	lsr	r1, r7, r1
	orr	r2, r2, r1
	strb	r2, [r5, #1]!
	bne	.L2
	pop	{r3, r4, r5, r6, r7, pc}
	.size	sha256_padding, .-sha256_padding
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
