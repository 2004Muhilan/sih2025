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
	.file	"md5_compress.c"
	.text
	.align	1
	.p2align 2,,3
	.global	md5_compress
	.syntax unified
	.thumb
	.thumb_func
	.type	md5_compress, %function
md5_compress:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	sub	ip, r1, #4
	add	r5, r1, #60
	ldrd	r9, r8, [r0]
	ldrd	r7, r10, [r0, #8]
	mov	r1, r8
	mov	r4, r9
	mov	r2, r10
	mov	lr, r7
	b	.L2
.L3:
	mov	r2, lr
	mov	lr, r1
	mov	r1, r3
.L2:
	eor	r3, lr, r2
	ldr	r6, [ip, #4]!
	ands	r3, r3, r1
	eors	r3, r3, r2
	cmp	r5, ip
	add	r3, r3, r6
	add	r3, r3, r4
	mov	r4, r2
	add	r3, r1, r3, lsl #7
	bne	.L3
	add	r2, r2, r9
	add	r3, r3, r8
	add	r7, r7, r1
	add	r6, r10, lr
	strd	r2, r3, [r0]
	strd	r7, r6, [r0, #8]
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
	.size	md5_compress, .-md5_compress
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
