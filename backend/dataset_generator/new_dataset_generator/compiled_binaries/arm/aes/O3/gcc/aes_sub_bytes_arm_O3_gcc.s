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
	.file	"aes_sub_bytes.c"
	.text
	.align	1
	.p2align 2,,3
	.global	aes_sub_bytes
	.syntax unified
	.thumb
	.thumb_func
	.type	aes_sub_bytes, %function
aes_sub_bytes:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L4
	movs	r2, #0
	push	{r4, lr}
	mov	r1, r2
	ldrb	r4, [r0]	@ zero_extendqisi2
.LPIC0:
	add	r3, pc
	ldrb	ip, [r0, #9]	@ zero_extendqisi2
	ldrb	lr, [r0, #12]	@ zero_extendqisi2
	ldrb	r4, [r4, r3]	@ zero_extendqisi2
	bfi	r2, r4, #0, #8
	ldrb	r4, [r0, #1]	@ zero_extendqisi2
	ldrb	r4, [r4, r3]	@ zero_extendqisi2
	bfi	r2, r4, #8, #8
	ldrb	r4, [r0, #2]	@ zero_extendqisi2
	ldrb	r4, [r4, r3]	@ zero_extendqisi2
	bfi	r2, r4, #16, #8
	ldrb	r4, [r0, #3]	@ zero_extendqisi2
	ldrb	r4, [r4, r3]	@ zero_extendqisi2
	bfi	r2, r4, #24, #8
	ldrb	r4, [r0, #4]	@ zero_extendqisi2
	ldrb	r4, [r4, r3]	@ zero_extendqisi2
	bfi	r1, r4, #0, #8
	ldrb	r4, [r0, #5]	@ zero_extendqisi2
	ldrb	r4, [r4, r3]	@ zero_extendqisi2
	bfi	r1, r4, #8, #8
	ldrb	r4, [r0, #6]	@ zero_extendqisi2
	ldrb	r4, [r4, r3]	@ zero_extendqisi2
	bfi	r1, r4, #16, #8
	ldrb	r4, [r0, #7]	@ zero_extendqisi2
	ldrb	r4, [r4, r3]	@ zero_extendqisi2
	str	r2, [r0]	@ unaligned
	movs	r2, #0
	bfi	r1, r4, #24, #8
	ldrb	r4, [r0, #8]	@ zero_extendqisi2
	str	r1, [r0, #4]	@ unaligned
	mov	r1, r2
	ldrb	ip, [ip, r3]	@ zero_extendqisi2
	ldrb	r4, [r4, r3]	@ zero_extendqisi2
	ldrb	lr, [lr, r3]	@ zero_extendqisi2
	bfi	r2, r4, #0, #8
	bfi	r1, lr, #0, #8
	bfi	r2, ip, #8, #8
	ldrb	ip, [r0, #10]	@ zero_extendqisi2
	ldrb	ip, [ip, r3]	@ zero_extendqisi2
	bfi	r2, ip, #16, #8
	ldrb	ip, [r0, #11]	@ zero_extendqisi2
	ldrb	ip, [ip, r3]	@ zero_extendqisi2
	bfi	r2, ip, #24, #8
	ldrb	ip, [r0, #13]	@ zero_extendqisi2
	ldrb	ip, [ip, r3]	@ zero_extendqisi2
	bfi	r1, ip, #8, #8
	ldrb	ip, [r0, #14]	@ zero_extendqisi2
	ldrb	ip, [ip, r3]	@ zero_extendqisi2
	bfi	r1, ip, #16, #8
	ldrb	ip, [r0, #15]	@ zero_extendqisi2
	ldrb	r3, [ip, r3]	@ zero_extendqisi2
	str	r2, [r0, #8]	@ unaligned
	bfi	r1, r3, #24, #8
	str	r1, [r0, #12]	@ unaligned
	pop	{r4, pc}
.L5:
	.align	2
.L4:
	.word	.LANCHOR0-(.LPIC0+4)
	.size	aes_sub_bytes, .-aes_sub_bytes
	.align	1
	.p2align 2,,3
	.global	aes_inv_sub_bytes
	.syntax unified
	.thumb
	.thumb_func
	.type	aes_inv_sub_bytes, %function
aes_inv_sub_bytes:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L8
	movs	r2, #0
	push	{r4, lr}
	mov	r1, r2
	ldrb	r4, [r0]	@ zero_extendqisi2
.LPIC1:
	add	r3, pc
	ldrb	ip, [r0, #9]	@ zero_extendqisi2
	add	r3, r3, #256
	ldrb	lr, [r0, #12]	@ zero_extendqisi2
	ldrb	r4, [r4, r3]	@ zero_extendqisi2
	bfi	r2, r4, #0, #8
	ldrb	r4, [r0, #1]	@ zero_extendqisi2
	ldrb	r4, [r4, r3]	@ zero_extendqisi2
	bfi	r2, r4, #8, #8
	ldrb	r4, [r0, #2]	@ zero_extendqisi2
	ldrb	r4, [r4, r3]	@ zero_extendqisi2
	bfi	r2, r4, #16, #8
	ldrb	r4, [r0, #3]	@ zero_extendqisi2
	ldrb	r4, [r4, r3]	@ zero_extendqisi2
	bfi	r2, r4, #24, #8
	ldrb	r4, [r0, #4]	@ zero_extendqisi2
	ldrb	r4, [r4, r3]	@ zero_extendqisi2
	bfi	r1, r4, #0, #8
	ldrb	r4, [r0, #5]	@ zero_extendqisi2
	ldrb	r4, [r4, r3]	@ zero_extendqisi2
	bfi	r1, r4, #8, #8
	ldrb	r4, [r0, #6]	@ zero_extendqisi2
	ldrb	r4, [r4, r3]	@ zero_extendqisi2
	bfi	r1, r4, #16, #8
	ldrb	r4, [r0, #7]	@ zero_extendqisi2
	ldrb	r4, [r4, r3]	@ zero_extendqisi2
	str	r2, [r0]	@ unaligned
	movs	r2, #0
	bfi	r1, r4, #24, #8
	ldrb	r4, [r0, #8]	@ zero_extendqisi2
	str	r1, [r0, #4]	@ unaligned
	mov	r1, r2
	ldrb	ip, [ip, r3]	@ zero_extendqisi2
	ldrb	r4, [r4, r3]	@ zero_extendqisi2
	ldrb	lr, [lr, r3]	@ zero_extendqisi2
	bfi	r2, r4, #0, #8
	bfi	r1, lr, #0, #8
	bfi	r2, ip, #8, #8
	ldrb	ip, [r0, #10]	@ zero_extendqisi2
	ldrb	ip, [ip, r3]	@ zero_extendqisi2
	bfi	r2, ip, #16, #8
	ldrb	ip, [r0, #11]	@ zero_extendqisi2
	ldrb	ip, [ip, r3]	@ zero_extendqisi2
	bfi	r2, ip, #24, #8
	ldrb	ip, [r0, #13]	@ zero_extendqisi2
	ldrb	ip, [ip, r3]	@ zero_extendqisi2
	bfi	r1, ip, #8, #8
	ldrb	ip, [r0, #14]	@ zero_extendqisi2
	ldrb	ip, [ip, r3]	@ zero_extendqisi2
	bfi	r1, ip, #16, #8
	ldrb	ip, [r0, #15]	@ zero_extendqisi2
	ldrb	r3, [ip, r3]	@ zero_extendqisi2
	str	r2, [r0, #8]	@ unaligned
	bfi	r1, r3, #24, #8
	str	r1, [r0, #12]	@ unaligned
	pop	{r4, pc}
.L9:
	.align	2
.L8:
	.word	.LANCHOR0-(.LPIC1+4)
	.size	aes_inv_sub_bytes, .-aes_inv_sub_bytes
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
	.type	sbox, %object
	.size	sbox, 256
sbox:
	.ascii	"c|w{\362ko\3050\001g+\376\327\253v\000"
	.space	239
	.type	inv_sbox.0, %object
	.size	inv_sbox.0, 256
inv_sbox.0:
	.ascii	"R\011j\32506\2458\000"
	.space	247
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
