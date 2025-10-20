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
	mov	r5, r2
	mov	r4, r1
	rsb	r7, r4, #55
	mov	r2, r1
	adds	r6, r4, #1
	mov	r1, r0
	and	r7, r7, #63
	mov	r0, r5
	bl	memcpy(PLT)
	movs	r3, #128
	mov	r2, r7
	strb	r3, [r5, r4]
	movs	r1, #0
	adds	r0, r5, r6
	add	r6, r6, r7
	bl	memset(PLT)
	adds	r3, r5, r6
	lsls	r4, r4, #3
	movs	r1, #0
	lsrs	r2, r4, #24
	str	r1, [r5, r6]	@ unaligned
	lsrs	r1, r4, #16
	strb	r2, [r3, #4]
	strb	r1, [r3, #5]
	lsrs	r2, r4, #8
	strb	r4, [r3, #7]
	strb	r2, [r3, #6]
	pop	{r3, r4, r5, r6, r7, pc}
	.size	sha256_padding, .-sha256_padding
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
