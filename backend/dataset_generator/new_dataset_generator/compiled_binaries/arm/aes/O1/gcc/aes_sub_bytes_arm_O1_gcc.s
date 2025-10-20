	.arch armv7-a
	.fpu vfpv3-d16
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 1
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"aes_sub_bytes.c"
	.text
	.align	1
	.global	aes_sub_bytes
	.syntax unified
	.thumb
	.thumb_func
	.type	aes_sub_bytes, %function
aes_sub_bytes:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	subs	r3, r0, #1
	add	r1, r0, #15
	ldr	r0, .L4
.LPIC0:
	add	r0, pc
.L2:
	ldrb	r2, [r3, #1]!	@ zero_extendqisi2
	ldrb	r2, [r0, r2]	@ zero_extendqisi2
	strb	r2, [r3]
	cmp	r3, r1
	bne	.L2
	bx	lr
.L5:
	.align	2
.L4:
	.word	.LANCHOR0-(.LPIC0+4)
	.size	aes_sub_bytes, .-aes_sub_bytes
	.align	1
	.global	aes_inv_sub_bytes
	.syntax unified
	.thumb
	.thumb_func
	.type	aes_inv_sub_bytes, %function
aes_inv_sub_bytes:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	subs	r3, r0, #1
	add	r1, r0, #15
	ldr	r0, .L9
.LPIC1:
	add	r0, pc
.L7:
	ldrb	r2, [r3, #1]!	@ zero_extendqisi2
	add	r2, r2, r0
	ldrb	r2, [r2, #256]	@ zero_extendqisi2
	strb	r2, [r3]
	cmp	r3, r1
	bne	.L7
	bx	lr
.L10:
	.align	2
.L9:
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
