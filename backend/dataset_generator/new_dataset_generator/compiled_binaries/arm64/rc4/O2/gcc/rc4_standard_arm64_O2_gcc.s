	.arch armv8-a
	.file	"rc4_standard.c"
	.text
	.align	2
	.p2align 4,,11
	.global	rc4_init
	.type	rc4_init, %function
rc4_init:
.LFB14:
	.cfi_startproc
	adrp	x3, .LC0
	add	x4, x0, 256
	movi	v16.4s, 0x10
	movi	v7.4s, 0x4
	movi	v6.4s, 0x8
	movi	v5.4s, 0xc
	ldr	q2, [x3, #:lo12:.LC0]
	mov	x3, x0
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
	str	q0, [x3], 16
	cmp	x4, x3
	bne	.L2
	mov	x3, 0
	mov	w4, 0
	.p2align 3,,7
.L3:
	udiv	x6, x3, x2
	ldrb	w7, [x0, x3]
	add	w5, w4, w7
	msub	x4, x6, x2, x3
	ldrb	w4, [x1, x4]
	add	w4, w4, w5
	and	w5, w4, 255
	and	w4, w4, 255
	ldrb	w6, [x0, w5, sxtw]
	strb	w6, [x0, x3]
	add	x3, x3, 1
	strb	w7, [x0, w5, sxtw]
	cmp	x3, 256
	bne	.L3
	strh	wzr, [x0, 256]
	ret
	.cfi_endproc
.LFE14:
	.size	rc4_init, .-rc4_init
	.align	2
	.p2align 4,,11
	.global	rc4_crypt
	.type	rc4_crypt, %function
rc4_crypt:
.LFB15:
	.cfi_startproc
	cbz	x2, .L7
	add	x6, x1, x2
	.p2align 3,,7
.L9:
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
	bne	.L9
.L7:
	ret
	.cfi_endproc
.LFE15:
	.size	rc4_crypt, .-rc4_crypt
	.align	2
	.p2align 4,,11
	.global	rc4_encrypt
	.type	rc4_encrypt, %function
rc4_encrypt:
.LFB16:
	.cfi_startproc
	sub	sp, sp, #320
	.cfi_def_cfa_offset 320
	mov	x6, x1
	adrp	x5, :got:__stack_chk_guard
	ldr	x5, [x5, :got_lo12:__stack_chk_guard]
	mov	x8, x2
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
	ldr	x0, [x5]
	str	x0, [sp, 264]
	mov	x0, 0
	mov	x0, x19
	bl	rc4_init
	mov	x2, x21
	mov	x1, x8
	mov	x0, x20
	bl	memcpy
	mov	x0, x19
	mov	x2, x21
	mov	x1, x20
	bl	rc4_crypt
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 264]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	bne	.L17
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
.L17:
	.cfi_restore_state
	bl	__stack_chk_fail
	.cfi_endproc
.LFE16:
	.size	rc4_encrypt, .-rc4_encrypt
	.align	2
	.p2align 4,,11
	.global	rc4_decrypt
	.type	rc4_decrypt, %function
rc4_decrypt:
.LFB17:
	.cfi_startproc
	b	rc4_encrypt
	.cfi_endproc
.LFE17:
	.size	rc4_decrypt, .-rc4_decrypt
	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LC0:
	.word	0
	.word	1
	.word	2
	.word	3
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
