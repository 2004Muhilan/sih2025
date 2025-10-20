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
	ldr	r3, .L6
	push	{r4, r5, r6, r7, r8, lr}
	add	r7, r0, #16
.LPIC0:
	add	r3, pc
.L2:
	ldrb	ip, [r0]	@ zero_extendqisi2
	movs	r2, #0
	ldrb	r1, [r0, #2]	@ zero_extendqisi2
	adds	r0, r0, #8
	ldrb	r6, [r0, #-4]	@ zero_extendqisi2
	ldrb	r5, [r0, #-7]	@ zero_extendqisi2
	ldrb	r4, [r0, #-3]	@ zero_extendqisi2
	ldrb	r8, [r3, ip]	@ zero_extendqisi2
	ldrb	ip, [r3, r1]	@ zero_extendqisi2
	ldrb	r1, [r0, #-2]	@ zero_extendqisi2
	ldrb	r6, [r3, r6]	@ zero_extendqisi2
	ldrb	r5, [r3, r5]	@ zero_extendqisi2
	ldrb	lr, [r3, r4]	@ zero_extendqisi2
	ldrb	r4, [r3, r1]	@ zero_extendqisi2
	mov	r1, r2
	bfi	r2, r8, #0, #8
	bfi	r1, r6, #0, #8
	bfi	r2, r5, #8, #8
	bfi	r1, lr, #8, #8
	ldrb	lr, [r0, #-1]	@ zero_extendqisi2
	bfi	r2, ip, #16, #8
	ldrb	ip, [r0, #-5]	@ zero_extendqisi2
	bfi	r1, r4, #16, #8
	cmp	r7, r0
	ldrb	lr, [r3, lr]	@ zero_extendqisi2
	ldrb	ip, [r3, ip]	@ zero_extendqisi2
	bfi	r1, lr, #24, #8
	str	r1, [r0, #-4]	@ unaligned
	bfi	r2, ip, #24, #8
	str	r2, [r0, #-8]	@ unaligned
	bne	.L2
	pop	{r4, r5, r6, r7, r8, pc}
.L7:
	.align	2
.L6:
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
	ldr	r3, .L12
	push	{r4, r5, r6, r7, r8, lr}
	add	r7, r0, #16
.LPIC1:
	add	r3, pc
	add	r3, r3, #256
.L9:
	ldrb	ip, [r0]	@ zero_extendqisi2
	movs	r2, #0
	ldrb	r1, [r0, #2]	@ zero_extendqisi2
	adds	r0, r0, #8
	ldrb	r6, [r0, #-4]	@ zero_extendqisi2
	ldrb	r5, [r0, #-7]	@ zero_extendqisi2
	ldrb	r4, [r0, #-3]	@ zero_extendqisi2
	ldrb	r8, [ip, r3]	@ zero_extendqisi2
	ldrb	ip, [r1, r3]	@ zero_extendqisi2
	ldrb	r1, [r0, #-2]	@ zero_extendqisi2
	ldrb	r6, [r6, r3]	@ zero_extendqisi2
	ldrb	r5, [r5, r3]	@ zero_extendqisi2
	ldrb	lr, [r4, r3]	@ zero_extendqisi2
	ldrb	r4, [r1, r3]	@ zero_extendqisi2
	mov	r1, r2
	bfi	r2, r8, #0, #8
	bfi	r1, r6, #0, #8
	bfi	r2, r5, #8, #8
	bfi	r1, lr, #8, #8
	ldrb	lr, [r0, #-1]	@ zero_extendqisi2
	bfi	r2, ip, #16, #8
	ldrb	ip, [r0, #-5]	@ zero_extendqisi2
	bfi	r1, r4, #16, #8
	cmp	r7, r0
	ldrb	lr, [lr, r3]	@ zero_extendqisi2
	ldrb	ip, [ip, r3]	@ zero_extendqisi2
	bfi	r1, lr, #24, #8
	str	r1, [r0, #-4]	@ unaligned
	bfi	r2, ip, #24, #8
	str	r2, [r0, #-8]	@ unaligned
	bne	.L9
	pop	{r4, r5, r6, r7, r8, pc}
.L13:
	.align	2
.L12:
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
