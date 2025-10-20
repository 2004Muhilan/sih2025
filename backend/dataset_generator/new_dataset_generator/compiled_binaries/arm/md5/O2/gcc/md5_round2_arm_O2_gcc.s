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
	.file	"md5_round2.c"
	.text
	.align	1
	.p2align 2,,3
	.global	md5_round2
	.syntax unified
	.thumb
	.thumb_func
	.type	md5_round2, %function
md5_round2:
	@ args = 12, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	eor	ip, r1, r2
	ldr	r4, [sp, #12]
	ldr	r5, [sp, #20]
	and	ip, ip, r3
	eor	ip, ip, r2
	ldr	r3, [sp, #16]
	add	lr, r4, r5
	ldr	r4, [r0]
	add	lr, lr, r4
	add	ip, ip, lr
	lsl	ip, ip, r3
	add	r1, r1, ip
	str	r1, [r0]
	pop	{r4, r5, pc}
	.size	md5_round2, .-md5_round2
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
