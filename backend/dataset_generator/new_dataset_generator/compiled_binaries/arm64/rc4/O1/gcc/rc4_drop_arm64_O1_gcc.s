	.arch armv8-a
	.file	"rc4_drop.c"
	.text
	.align	2
	.global	rc4_drop_init
	.type	rc4_drop_init, %function
rc4_drop_init:
.LFB14:
	.cfi_startproc
	mov	x4, 0
.L2:
	strb	w4, [x0, x4]
	add	x4, x4, 1
	cmp	x4, 256
	bne	.L2
	mov	x6, 0
	mov	w7, 0
.L3:
	ldrb	w8, [x0, x6]
	udiv	x4, x6, x2
	msub	x4, x4, x2, x6
	ldrb	w5, [x1, x4]
	add	w7, w7, w8
	add	w5, w5, w7
	negs	w4, w5
	and	w5, w5, 255
	and	w4, w4, 255
	csneg	w4, w5, w4, mi
	and	w7, w4, 255
	ldrb	w5, [x0, w4, sxtw]
	strb	w5, [x0, x6]
	strb	w8, [x0, w4, sxtw]
	add	x6, x6, 1
	cmp	x6, 256
	bne	.L3
	strb	wzr, [x0, 256]
	strb	wzr, [x0, 257]
	cbz	x3, .L1
	mov	w4, 0
	mov	w1, 0
	mov	x6, 0
.L5:
	add	w1, w1, 1
	negs	w2, w1
	and	w1, w1, 255
	and	w2, w2, 255
	csneg	w2, w1, w2, mi
	and	w1, w2, 255
	ldrb	w5, [x0, w2, sxtw]
	add	w4, w4, w5
	and	w4, w4, 255
	ldrb	w7, [x0, w4, sxtw]
	strb	w7, [x0, w2, sxtw]
	strb	w5, [x0, w4, sxtw]
	add	x6, x6, 1
	cmp	x3, x6
	bne	.L5
	strb	w1, [x0, 256]
	strb	w4, [x0, 257]
	strb	w7, [x0, w2, sxtw]
	strb	w5, [x0, w4, sxtw]
.L1:
	ret
	.cfi_endproc
.LFE14:
	.size	rc4_drop_init, .-rc4_drop_init
	.align	2
	.global	rc4_drop_crypt
	.type	rc4_drop_crypt, %function
rc4_drop_crypt:
.LFB15:
	.cfi_startproc
	cbz	x2, .L9
	mov	x4, x1
	add	x6, x1, x2
.L11:
	ldrb	w2, [x0, 256]
	add	w2, w2, 1
	negs	w1, w2
	and	w2, w2, 255
	and	w1, w1, 255
	csneg	w1, w2, w1, mi
	strb	w1, [x0, 256]
	ldrb	w2, [x0, w1, sxtw]
	ldrb	w3, [x0, 257]
	add	w3, w2, w3
	and	w3, w3, 255
	strb	w3, [x0, 257]
	ldrb	w5, [x0, w3, sxtw]
	strb	w5, [x0, w1, sxtw]
	strb	w2, [x0, w3, sxtw]
	ldrb	w1, [x0, w1, sxtw]
	add	w2, w2, w1
	and	w2, w2, 255
	ldrb	w1, [x0, w2, sxtw]
	ldrb	w2, [x4]
	eor	w1, w1, w2
	strb	w1, [x4], 1
	cmp	x4, x6
	bne	.L11
.L9:
	ret
	.cfi_endproc
.LFE15:
	.size	rc4_drop_crypt, .-rc4_drop_crypt
	.align	2
	.global	rc4_drop_encrypt
	.type	rc4_drop_encrypt, %function
rc4_drop_encrypt:
.LFB16:
	.cfi_startproc
	sub	sp, sp, #320
	.cfi_def_cfa_offset 320
	stp	x29, x30, [sp, 272]
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	add	x29, sp, 272
	stp	x19, x20, [sp, 288]
	stp	x21, x22, [sp, 304]
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	.cfi_offset 21, -16
	.cfi_offset 22, -8
	mov	x22, x2
	mov	x21, x3
	mov	x20, x4
	adrp	x2, :got:__stack_chk_guard
	ldr	x2, [x2, :got_lo12:__stack_chk_guard]
	ldr	x3, [x2]
	str	x3, [sp, 264]
	mov	x3, 0
	mov	x19, sp
	mov	x3, 768
	mov	x2, x1
	mov	x1, x0
	mov	x0, x19
	bl	rc4_drop_init
	mov	x2, x21
	mov	x1, x22
	mov	x0, x20
	bl	memcpy
	mov	x2, x21
	mov	x1, x20
	mov	x0, x19
	bl	rc4_drop_crypt
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 264]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	bne	.L16
	ldp	x19, x20, [sp, 288]
	ldp	x21, x22, [sp, 304]
	ldp	x29, x30, [sp, 272]
	add	sp, sp, 320
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
.L16:
	.cfi_restore_state
	bl	__stack_chk_fail
	.cfi_endproc
.LFE16:
	.size	rc4_drop_encrypt, .-rc4_drop_encrypt
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
