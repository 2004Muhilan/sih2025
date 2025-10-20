	.arch armv8-a
	.file	"rc4_drop.c"
	.text
	.align	2
	.p2align 4,,11
	.global	rc4_drop_init
	.type	rc4_drop_init, %function
rc4_drop_init:
.LFB14:
	.cfi_startproc
	adrp	x4, .LC0
	add	x5, x0, 256
	movi	v16.4s, 0x10
	movi	v7.4s, 0x4
	movi	v6.4s, 0x8
	movi	v5.4s, 0xc
	ldr	q2, [x4, #:lo12:.LC0]
	mov	x4, x0
	.p2align 3,,7
.L2:
	mov	v0.16b, v2.16b
	add	v2.4s, v2.4s, v16.4s
	add	v1.4s, v0.4s, v6.4s
	add	v3.4s, v0.4s, v5.4s
	add	v4.4s, v0.4s, v7.4s
	uzp1	v1.8h, v1.8h, v3.8h
	uzp1	v0.8h, v0.8h, v4.8h
	uzp1	v0.16b, v0.16b, v1.16b
	str	q0, [x4], 16
	cmp	x5, x4
	bne	.L2
	mov	x4, 0
	mov	w5, 0
	.p2align 3,,7
.L3:
	udiv	x7, x4, x2
	ldrb	w8, [x0, x4]
	add	w6, w5, w8
	msub	x5, x7, x2, x4
	ldrb	w5, [x1, x5]
	add	w5, w5, w6
	and	w6, w5, 255
	and	w5, w5, 255
	ldrb	w7, [x0, w6, sxtw]
	strb	w7, [x0, x4]
	add	x4, x4, 1
	strb	w8, [x0, w6, sxtw]
	cmp	x4, 256
	bne	.L3
	strh	wzr, [x0, 256]
	cbz	x3, .L1
	mov	w2, 0
	mov	x4, 0
	.p2align 3,,7
.L5:
	and	w1, w4, 255
	add	x4, x4, 1
	add	w1, w1, 1
	and	w1, w1, 255
	ldrb	w5, [x0, w1, sxtw]
	add	w2, w5, w2
	and	w2, w2, 255
	ldrb	w6, [x0, w2, sxtw]
	strb	w6, [x0, w1, sxtw]
	strb	w5, [x0, w2, sxtw]
	cmp	x3, x4
	bne	.L5
	strb	w3, [x0, 256]
	strb	w2, [x0, 257]
	strb	w6, [x0, w1, sxtw]
	strb	w5, [x0, w2, sxtw]
.L1:
	ret
	.cfi_endproc
.LFE14:
	.size	rc4_drop_init, .-rc4_drop_init
	.align	2
	.p2align 4,,11
	.global	rc4_drop_crypt
	.type	rc4_drop_crypt, %function
rc4_drop_crypt:
.LFB15:
	.cfi_startproc
	cbz	x2, .L13
	add	x6, x1, x2
	.p2align 3,,7
.L15:
	ldrb	w2, [x0, 256]
	ldrb	w4, [x0, 257]
	add	w2, w2, 1
	strb	w2, [x0, 256]
	and	w2, w2, 255
	ldrb	w3, [x0, w2, sxtw]
	add	w4, w3, w4
	and	w4, w4, 255
	strb	w4, [x0, 257]
	ldrb	w5, [x0, w4, sxtw]
	strb	w5, [x0, w2, sxtw]
	strb	w3, [x0, w4, sxtw]
	ldrb	w2, [x0, w2, sxtw]
	ldrb	w4, [x1]
	add	w3, w3, w2
	and	w3, w3, 255
	ldrb	w2, [x0, w3, sxtw]
	eor	w2, w2, w4
	strb	w2, [x1], 1
	cmp	x6, x1
	bne	.L15
.L13:
	ret
	.cfi_endproc
.LFE15:
	.size	rc4_drop_crypt, .-rc4_drop_crypt
	.align	2
	.p2align 4,,11
	.global	rc4_drop_encrypt
	.type	rc4_drop_encrypt, %function
rc4_drop_encrypt:
.LFB16:
	.cfi_startproc
	sub	sp, sp, #320
	.cfi_def_cfa_offset 320
	mov	x6, x1
	adrp	x5, :got:__stack_chk_guard
	ldr	x5, [x5, :got_lo12:__stack_chk_guard]
	mov	x9, x2
	stp	x29, x30, [sp, 272]
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	add	x29, sp, 272
	mov	x1, x0
	mov	x2, x6
	stp	x19, x20, [sp, 288]
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	mov	x19, sp
	mov	x20, x4
	str	x21, [sp, 304]
	.cfi_offset 21, -16
	mov	x21, x3
	mov	x3, 768
	ldr	x0, [x5]
	str	x0, [sp, 264]
	mov	x0, 0
	mov	x0, x19
	bl	rc4_drop_init
	mov	x2, x21
	mov	x1, x9
	mov	x0, x20
	bl	memcpy
	mov	x0, x19
	mov	x2, x21
	mov	x1, x20
	bl	rc4_drop_crypt
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 264]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	bne	.L23
	ldp	x29, x30, [sp, 272]
	ldp	x19, x20, [sp, 288]
	ldr	x21, [sp, 304]
	add	sp, sp, 320
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 21
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
.L23:
	.cfi_restore_state
	bl	__stack_chk_fail
	.cfi_endproc
.LFE16:
	.size	rc4_drop_encrypt, .-rc4_drop_encrypt
	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LC0:
	.word	0
	.word	1
	.word	2
	.word	3
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
