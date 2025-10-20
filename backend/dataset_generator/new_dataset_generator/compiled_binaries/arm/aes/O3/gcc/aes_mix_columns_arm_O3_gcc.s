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
	.file	"aes_mix_columns.c"
	.text
	.align	1
	.p2align 2,,3
	.global	aes_mix_columns
	.syntax unified
	.thumb
	.thumb_func
	.type	aes_mix_columns, %function
aes_mix_columns:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldrb	r1, [r0]	@ zero_extendqisi2
	push	{r4, r5, r6, lr}
	ldrb	r4, [r0, #1]	@ zero_extendqisi2
	ldrb	ip, [r0, #2]	@ zero_extendqisi2
	lsls	r5, r1, #1
	ldrb	lr, [r0, #3]	@ zero_extendqisi2
	lsls	r3, r1, #24
	lsl	r2, r4, #1
	uxtb	r5, r5
	eor	r3, r4, ip
	it	mi
	eormi	r5, r5, #27
	uxtb	r2, r2
	eor	r3, lr, r3
	lsls	r6, r4, #24
	eor	r3, r3, r5
	it	mi
	eormi	r2, r2, #27
	eor	r6, r1, ip
	eors	r3, r3, r2
	strb	r3, [r0]
	lsl	r3, ip, #1
	eors	r1, r1, r4
	tst	ip, #128
	eor	r4, lr, r6
	uxtb	r3, r3
	eor	r6, lr, r1
	it	ne
	eorne	r3, r3, #27
	eors	r2, r2, r4
	lsl	r4, lr, #1
	eors	r2, r2, r3
	strb	r2, [r0, #1]
	eor	r2, ip, r1
	eor	r1, r3, r6
	ldrb	r3, [r0, #4]	@ zero_extendqisi2
	uxtb	r4, r4
	tst	lr, #128
	ldrb	lr, [r0, #5]	@ zero_extendqisi2
	it	ne
	eorne	r4, r4, #27
	eors	r5, r5, r2
	eor	r2, r4, r1
	eors	r4, r4, r5
	ldrb	r5, [r0, #6]	@ zero_extendqisi2
	strb	r4, [r0, #3]
	lsls	r4, r3, #1
	ldrb	ip, [r0, #7]	@ zero_extendqisi2
	lsl	r1, lr, #1
	uxtb	r4, r4
	strb	r2, [r0, #2]
	lsls	r2, r3, #24
	eor	r2, lr, r5
	it	mi
	eormi	r4, r4, #27
	uxtb	r1, r1
	tst	lr, #128
	eor	r2, ip, r2
	it	ne
	eorne	r1, r1, #27
	eors	r2, r2, r4
	eors	r2, r2, r1
	strb	r2, [r0, #4]
	lsls	r2, r5, #1
	eor	r6, r3, r5
	tst	r5, #128
	eor	r6, r6, ip
	uxtb	r2, r2
	eor	r1, r1, r6
	it	ne
	eorne	r2, r2, #27
	eor	r3, r3, lr
	eors	r1, r1, r2
	strb	r1, [r0, #5]
	lsl	r1, ip, #1
	ldrb	lr, [r0, #8]	@ zero_extendqisi2
	eor	r6, r3, ip
	tst	ip, #128
	uxtb	r1, r1
	eor	r3, r3, r5
	it	ne
	eorne	r1, r1, #27
	eors	r4, r4, r3
	eors	r2, r2, r6
	ldrb	r3, [r0, #9]	@ zero_extendqisi2
	eors	r2, r2, r1
	eors	r1, r1, r4
	lsl	r4, lr, #1
	ldrb	r5, [r0, #10]	@ zero_extendqisi2
	ldrb	ip, [r0, #11]	@ zero_extendqisi2
	tst	lr, #128
	uxtb	r4, r4
	strb	r2, [r0, #6]
	lsl	r2, r3, #1
	it	ne
	eorne	r4, r4, #27
	strb	r1, [r0, #7]
	lsls	r1, r3, #24
	eor	r1, r5, r3
	uxtb	r2, r2
	eor	r1, ip, r1
	it	mi
	eormi	r2, r2, #27
	eors	r1, r1, r4
	eor	r6, r5, lr
	eors	r1, r1, r2
	strb	r1, [r0, #8]
	lsls	r1, r5, #1
	tst	r5, #128
	eor	r6, r6, ip
	eor	r3, r3, lr
	uxtb	r1, r1
	eor	r2, r2, r6
	it	ne
	eorne	r1, r1, #27
	eor	lr, r3, ip
	eors	r2, r2, r1
	strb	r2, [r0, #9]
	lsl	r2, ip, #1
	tst	ip, #128
	ldrb	ip, [r0, #12]	@ zero_extendqisi2
	eor	r3, r3, r5
	uxtb	r2, r2
	eor	r1, lr, r1
	it	ne
	eorne	r2, r2, #27
	eors	r4, r4, r3
	eor	r3, r2, r1
	ldrb	r1, [r0, #13]	@ zero_extendqisi2
	lsl	lr, ip, #1
	eors	r2, r2, r4
	ldrb	r4, [r0, #14]	@ zero_extendqisi2
	tst	ip, #128
	ldrb	r5, [r0, #15]	@ zero_extendqisi2
	uxtb	lr, lr
	strb	r2, [r0, #11]
	lsl	r2, r1, #1
	it	ne
	eorne	lr, lr, #27
	strb	r3, [r0, #10]
	lsls	r3, r1, #24
	eor	r3, r1, r4
	uxtb	r2, r2
	eor	r3, r3, r5
	it	mi
	eormi	r2, r2, #27
	eor	r3, lr, r3
	eors	r3, r3, r2
	eor	r6, ip, r4
	strb	r3, [r0, #12]
	lsls	r3, r4, #1
	eor	r1, r1, ip
	eor	ip, r6, r5
	uxtb	r3, r3
	tst	r4, #128
	eor	r2, r2, ip
	lsl	ip, r5, #1
	it	ne
	eorne	r3, r3, #27
	eor	r6, r1, r5
	eors	r2, r2, r3
	uxtb	ip, ip
	strb	r2, [r0, #13]
	lsls	r2, r5, #24
	eor	r2, r4, r1
	it	mi
	eormi	ip, ip, #27
	eors	r3, r3, r6
	eor	lr, lr, r2
	eor	r3, ip, r3
	eor	ip, ip, lr
	strb	r3, [r0, #14]
	strb	ip, [r0, #15]
	pop	{r4, r5, r6, pc}
	.size	aes_mix_columns, .-aes_mix_columns
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
