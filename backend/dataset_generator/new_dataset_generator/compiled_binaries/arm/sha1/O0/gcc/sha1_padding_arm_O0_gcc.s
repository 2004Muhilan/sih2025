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
	.file	"sha1_padding.c"
	.text
	.align	1
	.global	sha1_padding
	.syntax unified
	.thumb
	.thumb_func
	.type	sha1_padding, %function
sha1_padding:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	sub	sp, sp, #36
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r2, [r7, #8]
	ldr	r1, [r7, #12]
	ldr	r0, [r7, #4]
	bl	memcpy(PLT)
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #8]
	add	r3, r3, r2
	movs	r2, #128
	strb	r2, [r3]
	ldr	r3, [r7, #8]
	rsb	r3, r3, #55
	and	r3, r3, #63
	str	r3, [r7, #20]
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldr	r2, [r7, #20]
	movs	r1, #0
	mov	r0, r3
	bl	memset(PLT)
	ldr	r3, [r7, #8]
	lsls	r3, r3, #3
	movs	r2, #0
	mov	r8, r3
	mov	r9, r2
	strd	r8, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #16]
	b	.L2
.L3:
	ldr	r3, [r7, #16]
	rsb	r3, r3, #7
	lsls	r1, r3, #3
	ldrd	r2, [r7, #24]
	rsb	r6, r1, #32
	sub	r0, r1, #32
	lsr	r4, r2, r1
	lsl	r6, r3, r6
	orrs	r4, r4, r6
	lsr	r0, r3, r0
	orrs	r4, r4, r0
	lsr	r5, r3, r1
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #20]
	add	r2, r2, r3
	ldr	r3, [r7, #16]
	add	r3, r3, r2
	adds	r3, r3, #1
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	uxtb	r2, r4
	strb	r2, [r3]
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
.L2:
	ldr	r3, [r7, #16]
	cmp	r3, #7
	ble	.L3
	nop
	nop
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
	.size	sha1_padding, .-sha1_padding
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
