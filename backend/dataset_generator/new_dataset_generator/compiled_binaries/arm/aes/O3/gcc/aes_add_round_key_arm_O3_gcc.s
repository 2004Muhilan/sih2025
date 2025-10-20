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
	.file	"aes_add_round_key.c"
	.text
	.align	1
	.p2align 2,,3
	.global	aes_add_round_key
	.syntax unified
	.thumb
	.thumb_func
	.type	aes_add_round_key, %function
aes_add_round_key:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	adds	r3, r1, #1
	push	{lr}
	subs	r3, r0, r3
	cmp	r3, #2
	bls	.L2
	ldr	ip, [r1]	@ unaligned
	ldr	r3, [r0]	@ unaligned
	ldr	r2, [r0, #4]	@ unaligned
	eor	r3, r3, ip
	str	r3, [r0]	@ unaligned
	ldr	r3, [r0, #8]	@ unaligned
	ldr	lr, [r1, #4]	@ unaligned
	ldr	ip, [r0, #12]	@ unaligned
	eor	r2, r2, lr
	str	r2, [r0, #4]	@ unaligned
	ldr	r2, [r1, #8]	@ unaligned
	eors	r3, r3, r2
	str	r3, [r0, #8]	@ unaligned
	ldr	r3, [r1, #12]	@ unaligned
	eor	r3, r3, ip
	str	r3, [r0, #12]	@ unaligned
	ldr	pc, [sp], #4
.L2:
	ldrb	ip, [r1]	@ zero_extendqisi2
	ldrb	r3, [r0]	@ zero_extendqisi2
	ldrb	r2, [r0, #1]	@ zero_extendqisi2
	eor	r3, r3, ip
	strb	r3, [r0]
	ldrb	r3, [r0, #2]	@ zero_extendqisi2
	ldrb	lr, [r1, #1]	@ zero_extendqisi2
	ldrb	ip, [r0, #3]	@ zero_extendqisi2
	eor	r2, r2, lr
	strb	r2, [r0, #1]
	ldrb	r2, [r1, #2]	@ zero_extendqisi2
	eors	r3, r3, r2
	strb	r3, [r0, #2]
	ldrb	r3, [r0, #4]	@ zero_extendqisi2
	ldrb	lr, [r1, #3]	@ zero_extendqisi2
	ldrb	r2, [r0, #5]	@ zero_extendqisi2
	eor	ip, ip, lr
	strb	ip, [r0, #3]
	ldrb	ip, [r1, #4]	@ zero_extendqisi2
	eor	r3, r3, ip
	strb	r3, [r0, #4]
	ldrb	r3, [r0, #6]	@ zero_extendqisi2
	ldrb	lr, [r1, #5]	@ zero_extendqisi2
	ldrb	ip, [r0, #7]	@ zero_extendqisi2
	eor	r2, r2, lr
	strb	r2, [r0, #5]
	ldrb	r2, [r1, #6]	@ zero_extendqisi2
	eors	r3, r3, r2
	strb	r3, [r0, #6]
	ldrb	r3, [r0, #8]	@ zero_extendqisi2
	ldrb	lr, [r1, #7]	@ zero_extendqisi2
	ldrb	r2, [r0, #9]	@ zero_extendqisi2
	eor	ip, ip, lr
	strb	ip, [r0, #7]
	ldrb	ip, [r1, #8]	@ zero_extendqisi2
	eor	r3, r3, ip
	strb	r3, [r0, #8]
	ldrb	r3, [r0, #10]	@ zero_extendqisi2
	ldrb	ip, [r1, #9]	@ zero_extendqisi2
	eor	r2, r2, ip
	strb	r2, [r0, #9]
	ldrb	r2, [r1, #10]	@ zero_extendqisi2
	eors	r3, r3, r2
	strb	r3, [r0, #10]
	ldrb	r2, [r1, #11]	@ zero_extendqisi2
	ldrb	r3, [r0, #11]	@ zero_extendqisi2
	ldrb	ip, [r0, #12]	@ zero_extendqisi2
	eors	r3, r3, r2
	strb	r3, [r0, #11]
	ldrb	r3, [r0, #13]	@ zero_extendqisi2
	ldrb	lr, [r1, #12]	@ zero_extendqisi2
	ldrb	r2, [r0, #14]	@ zero_extendqisi2
	eor	ip, ip, lr
	strb	ip, [r0, #12]
	ldrb	ip, [r1, #13]	@ zero_extendqisi2
	eor	r3, r3, ip
	strb	r3, [r0, #13]
	ldrb	r3, [r0, #15]	@ zero_extendqisi2
	ldrb	ip, [r1, #14]	@ zero_extendqisi2
	eor	r2, r2, ip
	strb	r2, [r0, #14]
	ldrb	r2, [r1, #15]	@ zero_extendqisi2
	eors	r3, r3, r2
	strb	r3, [r0, #15]
	ldr	pc, [sp], #4
	.size	aes_add_round_key, .-aes_add_round_key
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
