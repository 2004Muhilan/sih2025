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
	.file	"md5_compress.c"
	.text
	.align	1
	.global	md5_compress
	.syntax unified
	.thumb
	.thumb_func
	.type	md5_compress, %function
md5_compress:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	sub	r8, r1, #4
	adds	r1, r1, #60
	ldrd	lr, ip, [r0]
	ldrd	r7, r5, [r0, #8]
	mov	r2, ip
	mov	r9, lr
	mov	r4, r5
	mov	r6, r7
.L2:
	eor	r3, r6, r4
	ldr	r10, [r8, #4]!
	ands	r3, r3, r2
	eors	r3, r3, r4
	cmp	r1, r8
	add	r3, r3, r10
	add	r3, r3, r9
	mov	r9, r4
	add	r3, r2, r3, lsl #7
	bne	.L3
	add	r4, r4, lr
	add	r3, r3, ip
	add	r7, r7, r2
	add	r5, r5, r6
	str	r4, [r0]
	str	r3, [r0, #4]
	str	r7, [r0, #8]
	str	r5, [r0, #12]
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L3:
	mov	r4, r6
	mov	r6, r2
	mov	r2, r3
	b	.L2
	.size	md5_compress, .-md5_compress
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
