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
	.file	"sha1_padding.c"
	.text
	.align	1
	.global	sha1_padding
	.syntax unified
	.thumb
	.thumb_func
	.type	sha1_padding, %function
sha1_padding:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	mov	r5, r1
	mov	r4, r2
	mov	r2, r1
	mov	r1, r0
	mov	r0, r4
	bl	memcpy(PLT)
	movs	r3, #128
	strb	r3, [r4, r5]
	rsb	r7, r5, #55
	and	r7, r7, #63
	adds	r0, r5, #1
	mov	r2, r7
	movs	r1, #0
	add	r0, r0, r4
	bl	memset(PLT)
	lsls	r6, r5, #3
	movs	r0, #0
	add	r5, r5, r7
	adds	r2, r4, r5
	movs	r3, #56
.L2:
	rsb	lr, r3, #32
	sub	ip, r3, #32
	lsr	r1, r6, r3
	lsl	lr, r0, lr
	orr	r1, r1, lr
	lsr	ip, r0, ip
	orr	r1, r1, ip
	strb	r1, [r2, #1]!
	subs	r3, r3, #8
	cmn	r3, #8
	bne	.L2
	pop	{r3, r4, r5, r6, r7, pc}
	.size	sha1_padding, .-sha1_padding
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
