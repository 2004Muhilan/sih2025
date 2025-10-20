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
	.file	"custom_md5.c"
	.text
	.align	1
	.p2align 2,,3
	.global	md5_transform
	.syntax unified
	.thumb
	.thumb_func
	.type	md5_transform, %function
md5_transform:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldrb	r2, [r1, #2]	@ zero_extendqisi2
	ldrb	r3, [r1, #1]	@ zero_extendqisi2
	ldrd	r6, r5, [r0, #8]
	lsls	r2, r2, #16
	orr	r2, r2, r3, lsl #8
	ldrb	r3, [r1]	@ zero_extendqisi2
	ldrd	r4, r7, [r0]
	orrs	r2, r2, r3
	ldrb	r3, [r1, #3]	@ zero_extendqisi2
	ldrb	ip, [r1, #5]	@ zero_extendqisi2
	ldrb	r9, [r1, #10]	@ zero_extendqisi2
	orr	r2, r2, r3, lsl #24
	eor	r3, r6, r5
	ands	r3, r3, r7
	eors	r3, r3, r5
	lsl	r9, r9, #16
	add	r3, r3, r4
	add	r2, r2, r3
	ldrb	r3, [r1, #6]	@ zero_extendqisi2
	add	r2, r7, r2, ror #25
	lsls	r3, r3, #16
	eor	lr, r7, r2
	orr	r3, r3, ip, lsl #8
	ldrb	ip, [r1, #4]	@ zero_extendqisi2
	orr	r3, r3, ip
	ldrb	ip, [r1, #7]	@ zero_extendqisi2
	orr	r3, r3, ip, lsl #24
	eor	ip, r7, r6
	and	ip, ip, r2
	add	r3, r3, r5
	eor	ip, ip, r6
	add	r3, r3, ip
	ldrb	ip, [r1, #9]	@ zero_extendqisi2
	add	r3, r2, r3, ror #25
	orr	r9, r9, ip, lsl #8
	ldrb	ip, [r1, #8]	@ zero_extendqisi2
	and	lr, lr, r3
	orr	r9, r9, ip
	ldrb	ip, [r1, #11]	@ zero_extendqisi2
	eor	lr, lr, r7
	orr	r9, r9, ip, lsl #24
	ldrb	ip, [r1, #14]	@ zero_extendqisi2
	add	r9, r9, r6
	add	r9, r9, lr
	ldrb	lr, [r1, #13]	@ zero_extendqisi2
	lsl	ip, ip, #16
	add	r9, r3, r9, ror #25
	orr	ip, ip, lr, lsl #8
	ldrb	lr, [r1, #12]	@ zero_extendqisi2
	orr	ip, ip, lr
	ldrb	lr, [r1, #15]	@ zero_extendqisi2
	orr	ip, ip, lr, lsl #24
	eor	lr, r3, r2
	and	lr, lr, r9
	add	r8, ip, r7
	eor	lr, lr, r2
	ldrb	ip, [r1, #18]	@ zero_extendqisi2
	add	r8, r8, lr
	ldrb	lr, [r1, #17]	@ zero_extendqisi2
	lsl	ip, ip, #16
	add	r8, r9, r8, ror #25
	orr	ip, ip, lr, lsl #8
	ldrb	lr, [r1, #16]	@ zero_extendqisi2
	eor	r10, r8, r9
	orr	ip, ip, lr
	ldrb	lr, [r1, #19]	@ zero_extendqisi2
	orr	ip, ip, lr, lsl #24
	eor	lr, r9, r3
	and	lr, lr, r8
	add	ip, ip, r2
	eor	lr, lr, r3
	ldrb	r2, [r1, #22]	@ zero_extendqisi2
	add	ip, ip, lr
	ldrb	lr, [r1, #21]	@ zero_extendqisi2
	lsls	r2, r2, #16
	add	ip, r8, ip, ror #25
	orr	r2, r2, lr, lsl #8
	ldrb	lr, [r1, #20]	@ zero_extendqisi2
	and	r10, r10, ip
	orr	r2, r2, lr
	ldrb	lr, [r1, #23]	@ zero_extendqisi2
	eor	r10, r10, r9
	orr	r2, r2, lr, lsl #24
	add	lr, r2, r3
	ldrb	r3, [r1, #26]	@ zero_extendqisi2
	ldrb	r2, [r1, #25]	@ zero_extendqisi2
	add	lr, lr, r10
	lsls	r3, r3, #16
	add	lr, ip, lr, ror #25
	orr	r3, r3, r2, lsl #8
	ldrb	r2, [r1, #24]	@ zero_extendqisi2
	ldrb	r10, [r1, #29]	@ zero_extendqisi2
	orrs	r3, r3, r2
	ldrb	r2, [r1, #27]	@ zero_extendqisi2
	orr	r3, r3, r2, lsl #24
	eor	r2, ip, r8
	and	r2, r2, lr
	add	r3, r3, r9
	eor	r2, r2, r8
	add	r3, r3, r2
	ldrb	r2, [r1, #30]	@ zero_extendqisi2
	add	r9, lr, r3, ror #25
	ldrb	r3, [r1, #28]	@ zero_extendqisi2
	lsls	r2, r2, #16
	orr	r2, r2, r10, lsl #8
	orrs	r2, r2, r3
	ldrb	r3, [r1, #31]	@ zero_extendqisi2
	orr	r2, r2, r3, lsl #24
	ldrb	r3, [r1, #34]	@ zero_extendqisi2
	add	r2, r2, r8
	eor	r8, ip, lr
	and	r8, r8, r9
	eor	r8, r8, ip
	lsls	r3, r3, #16
	add	r2, r2, r8
	ldrb	r8, [r1, #33]	@ zero_extendqisi2
	add	r2, r9, r2, ror #25
	orr	r3, r3, r8, lsl #8
	ldrb	r8, [r1, #32]	@ zero_extendqisi2
	orr	r3, r3, r8
	ldrb	r8, [r1, #35]	@ zero_extendqisi2
	orr	r3, r3, r8, lsl #24
	eor	r8, lr, r9
	and	r8, r8, r2
	add	ip, ip, r3
	eor	r8, r8, lr
	ldrb	r3, [r1, #38]	@ zero_extendqisi2
	add	ip, ip, r8
	ldrb	r8, [r1, #37]	@ zero_extendqisi2
	lsls	r3, r3, #16
	add	ip, r2, ip, ror #25
	orr	r3, r3, r8, lsl #8
	ldrb	r8, [r1, #36]	@ zero_extendqisi2
	orr	r3, r3, r8
	ldrb	r8, [r1, #39]	@ zero_extendqisi2
	orr	r3, r3, r8, lsl #24
	eor	r8, r9, r2
	and	r8, r8, ip
	add	r3, r3, lr
	eor	r8, r8, r9
	ldrb	lr, [r1, #42]	@ zero_extendqisi2
	add	r3, r3, r8
	ldrb	r8, [r1, #41]	@ zero_extendqisi2
	lsl	lr, lr, #16
	add	r3, ip, r3, ror #25
	orr	lr, lr, r8, lsl #8
	ldrb	r8, [r1, #40]	@ zero_extendqisi2
	orr	lr, lr, r8
	ldrb	r8, [r1, #43]	@ zero_extendqisi2
	orr	lr, lr, r8, lsl #24
	ldrb	r8, [r1, #46]	@ zero_extendqisi2
	add	lr, lr, r9
	eor	r9, r2, ip
	and	r9, r9, r3
	eor	r9, r9, r2
	lsl	r8, r8, #16
	add	lr, lr, r9
	ldrb	r9, [r1, #45]	@ zero_extendqisi2
	add	lr, r3, lr, ror #25
	orr	r8, r8, r9, lsl #8
	ldrb	r9, [r1, #44]	@ zero_extendqisi2
	orr	r8, r8, r9
	ldrb	r9, [r1, #47]	@ zero_extendqisi2
	orr	r8, r8, r9, lsl #24
	eor	r9, ip, r3
	and	r9, r9, lr
	add	r2, r2, r8
	eor	r9, r9, ip
	ldrb	r8, [r1, #50]	@ zero_extendqisi2
	add	r2, r2, r9
	ldrb	r9, [r1, #49]	@ zero_extendqisi2
	lsl	r8, r8, #16
	add	r2, lr, r2, ror #25
	orr	r8, r8, r9, lsl #8
	ldrb	r9, [r1, #48]	@ zero_extendqisi2
	orr	r8, r8, r9
	ldrb	r9, [r1, #51]	@ zero_extendqisi2
	orr	r8, r8, r9, lsl #24
	eor	r9, r3, lr
	and	r9, r9, r2
	add	ip, ip, r8
	eor	r9, r9, r3
	ldrb	r8, [r1, #54]	@ zero_extendqisi2
	add	ip, ip, r9
	ldrb	r9, [r1, #53]	@ zero_extendqisi2
	lsl	r8, r8, #16
	add	ip, r2, ip, ror #25
	orr	r8, r8, r9, lsl #8
	ldrb	r9, [r1, #52]	@ zero_extendqisi2
	add	r4, r4, ip
	orr	r8, r8, r9
	ldrb	r9, [r1, #55]	@ zero_extendqisi2
	orr	r8, r8, r9, lsl #24
	eor	r9, lr, r2
	and	r9, r9, ip
	add	r3, r3, r8
	eor	r9, r9, lr
	ldrb	r8, [r1, #58]	@ zero_extendqisi2
	add	r3, r3, r9
	ldrb	r9, [r1, #57]	@ zero_extendqisi2
	lsl	r8, r8, #16
	add	r3, ip, r3, ror #25
	orr	r8, r8, r9, lsl #8
	ldrb	r9, [r1, #56]	@ zero_extendqisi2
	add	r5, r5, r3
	orr	r8, r8, r9
	ldrb	r9, [r1, #59]	@ zero_extendqisi2
	orr	r8, r8, r9, lsl #24
	eor	r9, r2, ip
	and	r9, r9, r3
	add	lr, lr, r8
	eor	r9, r9, r2
	ldrb	r8, [r1, #61]	@ zero_extendqisi2
	add	lr, lr, r9
	add	r9, r3, lr, ror #25
	eor	r3, ip, r3
	and	r3, r3, r9
	add	lr, r7, r9
	eor	r3, r3, ip
	ldrb	ip, [r1, #62]	@ zero_extendqisi2
	ldrb	r7, [r1, #60]	@ zero_extendqisi2
	add	r6, r6, r9
	ldrb	r1, [r1, #63]	@ zero_extendqisi2
	lsl	ip, ip, #16
	str	r4, [r0]
	orr	ip, ip, r8, lsl #8
	strd	r6, r5, [r0, #8]
	orr	ip, ip, r7
	orr	r1, ip, r1, lsl #24
	add	r2, r2, r1
	add	r3, r3, r2
	add	r3, lr, r3, ror #25
	str	r3, [r0, #4]
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
	.size	md5_transform, .-md5_transform
	.align	1
	.p2align 2,,3
	.global	md5_init
	.syntax unified
	.thumb
	.thumb_func
	.type	md5_init, %function
md5_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4}
	movw	r1, #43913
	movt	r1, 61389
	movw	r4, #8961
	movt	r4, 26437
	movw	r2, #56574
	movt	r2, 39098
	movw	r3, #21622
	movt	r3, 4146
	strd	r4, r1, [r0]
	strd	r2, r3, [r0, #8]
	ldr	r4, [sp], #4
	bx	lr
	.size	md5_init, .-md5_init
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
