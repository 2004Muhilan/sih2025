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
	push	{r4, r5, r6, r7, r8, r9, lr}
	ldr	r3, [r1]
	ldrd	r5, r6, [r0, #8]
	ldrd	r9, r4, [r0]
	ldr	r7, [r1, #16]
	add	r2, r9, r3
	eor	r3, r5, r6
	ands	r3, r3, r4
	eor	lr, r4, r5
	eors	r3, r3, r6
	add	r3, r3, r2
	ldr	r2, [r1, #4]
	add	r3, r4, r3, lsl #7
	add	r2, r2, r6
	and	lr, lr, r3
	eor	ip, r4, r3
	eor	lr, lr, r5
	add	lr, lr, r2
	ldr	r2, [r1, #8]
	add	lr, r3, lr, lsl #7
	add	r2, r2, r5
	and	ip, ip, lr
	eor	ip, ip, r4
	add	ip, ip, r2
	ldr	r2, [r1, #12]
	add	ip, lr, ip, lsl #7
	add	r8, r4, r2
	eor	r2, r3, lr
	and	r2, r2, ip
	eors	r2, r2, r3
	add	r3, r3, r7
	add	r2, r2, r8
	eor	r8, lr, ip
	add	r2, ip, r2, lsl #7
	and	r8, r8, r2
	eor	r8, r8, lr
	add	r8, r8, r3
	ldr	r3, [r1, #20]
	add	r8, r2, r8, lsl #7
	add	lr, lr, r3
	eor	r3, ip, r2
	and	r3, r3, r8
	eor	r3, r3, ip
	add	lr, lr, r3
	ldr	r3, [r1, #24]
	add	lr, r8, lr, lsl #7
	add	ip, ip, r3
	eor	r3, r2, r8
	and	r3, r3, lr
	eors	r3, r3, r2
	add	ip, ip, r3
	ldr	r3, [r1, #28]
	add	ip, lr, ip, lsl #7
	add	r2, r2, r3
	eor	r3, r8, lr
	and	r3, r3, ip
	eor	r3, r3, r8
	add	r2, r2, r3
	ldr	r3, [r1, #32]
	add	r2, ip, r2, lsl #7
	add	r8, r8, r3
	eor	r3, lr, ip
	ands	r3, r3, r2
	eor	r3, r3, lr
	add	r8, r8, r3
	ldr	r3, [r1, #36]
	add	r8, r2, r8, lsl #7
	add	lr, lr, r3
	eor	r3, ip, r2
	and	r3, r3, r8
	eor	r3, r3, ip
	add	lr, lr, r3
	ldr	r3, [r1, #40]
	add	lr, r8, lr, lsl #7
	add	ip, ip, r3
	eor	r3, r2, r8
	and	r3, r3, lr
	eors	r3, r3, r2
	add	ip, ip, r3
	ldr	r3, [r1, #44]
	add	ip, lr, ip, lsl #7
	add	r2, r2, r3
	eor	r3, r8, lr
	and	r3, r3, ip
	eor	r3, r3, r8
	add	r2, r2, r3
	ldr	r3, [r1, #48]
	add	r2, ip, r2, lsl #7
	add	r8, r8, r3
	eor	r3, lr, ip
	ands	r3, r3, r2
	eor	r3, r3, lr
	add	r8, r8, r3
	ldr	r3, [r1, #52]
	add	r8, r2, r8, lsl #7
	add	lr, lr, r3
	eor	r3, ip, r2
	add	r7, r9, r8
	and	r3, r3, r8
	eor	r3, r3, ip
	add	r3, r3, lr
	add	r3, r8, r3, lsl #7
	add	lr, r6, r3
	ldr	r6, [r1, #56]
	ldr	r1, [r1, #60]
	add	ip, ip, r6
	str	r7, [r0]
	adds	r6, r2, r1
	eor	r1, r2, r8
	ands	r1, r1, r3
	str	lr, [r0, #12]
	eors	r2, r2, r1
	add	r2, r2, ip
	add	r2, r3, r2, lsl #7
	eor	r3, r8, r3
	ands	r3, r3, r2
	add	r4, r4, r2
	eor	r3, r3, r8
	add	r5, r5, r2
	add	r3, r3, r6
	add	r4, r4, r3, lsl #7
	strd	r4, r5, [r0, #4]
	pop	{r4, r5, r6, r7, r8, r9, pc}
	.size	md5_compress, .-md5_compress
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
