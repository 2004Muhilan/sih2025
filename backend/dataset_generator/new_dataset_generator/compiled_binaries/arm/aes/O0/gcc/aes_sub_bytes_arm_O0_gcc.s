	.arch armv7-a
	.fpu vfpv3-d16
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"aes_sub_bytes.c"
	.text
	.section	.rodata
	.align	2
	.type	sbox, %object
	.size	sbox, 256
sbox:
	.ascii	"c|w{\362ko\3050\001g+\376\327\253v\000"
	.space	239
	.text
	.align	1
	.global	aes_sub_bytes
	.syntax unified
	.thumb
	.thumb_func
	.type	aes_sub_bytes, %function
aes_sub_bytes:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L2
.L3:
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldr	r2, .L4
.LPIC0:
	add	r2, pc
	ldrb	r2, [r2, r1]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L2:
	ldr	r3, [r7, #12]
	cmp	r3, #15
	ble	.L3
	nop
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L5:
	.align	2
.L4:
	.word	sbox-(.LPIC0+4)
	.size	aes_sub_bytes, .-aes_sub_bytes
	.align	1
	.global	aes_inv_sub_bytes
	.syntax unified
	.thumb
	.thumb_func
	.type	aes_inv_sub_bytes, %function
aes_inv_sub_bytes:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L7
.L8:
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldr	r2, .L9
.LPIC1:
	add	r2, pc
	ldrb	r2, [r2, r1]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L7:
	ldr	r3, [r7, #12]
	cmp	r3, #15
	ble	.L8
	nop
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L10:
	.align	2
.L9:
	.word	inv_sbox.0-(.LPIC1+4)
	.size	aes_inv_sub_bytes, .-aes_inv_sub_bytes
	.section	.rodata
	.align	2
	.type	inv_sbox.0, %object
	.size	inv_sbox.0, 256
inv_sbox.0:
	.ascii	"R\011j\32506\2458\000"
	.space	247
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
