	.arch armv8-a
	.file	"rc4_standard.c"
	.text
	.align	2
	.global	rc4_init
	.type	rc4_init, %function
rc4_init:
.LFB14:
	.cfi_startproc
	mov	x3, 0
.L2:
	strb	w3, [x0, x3]
	add	x3, x3, 1
	cmp	x3, 256
	bne	.L2
	mov	x5, 0
	mov	w6, 0
.L3:
	ldrb	w7, [x0, x5]
	udiv	x3, x5, x2
	msub	x3, x3, x2, x5
	ldrb	w4, [x1, x3]
	add	w6, w6, w7
	add	w4, w4, w6
	negs	w3, w4
	and	w4, w4, 255
	and	w3, w3, 255
	csneg	w3, w4, w3, mi
	and	w6, w3, 255
	ldrb	w4, [x0, w3, sxtw]
	strb	w4, [x0, x5]
	strb	w7, [x0, w3, sxtw]
	add	x5, x5, 1
	cmp	x5, 256
	bne	.L3
	strb	wzr, [x0, 256]
	strb	wzr, [x0, 257]
	ret
	.cfi_endproc
.LFE14:
	.size	rc4_init, .-rc4_init
	.align	2
	.global	rc4_crypt
	.type	rc4_crypt, %function
rc4_crypt:
.LFB15:
	.cfi_startproc
	cbz	x2, .L6
	mov	x4, x1
	add	x6, x1, x2
.L8:
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
	bne	.L8
.L6:
	ret
	.cfi_endproc
.LFE15:
	.size	rc4_crypt, .-rc4_crypt
	.align	2
	.global	rc4_encrypt
	.type	rc4_encrypt, %function
rc4_encrypt:
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
	mov	x2, x1
	mov	x1, x0
	mov	x0, x19
	bl	rc4_init
	mov	x2, x21
	mov	x1, x22
	mov	x0, x20
	bl	memcpy
	mov	x2, x21
	mov	x1, x20
	mov	x0, x19
	bl	rc4_crypt
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 264]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	bne	.L13
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
.L13:
	.cfi_restore_state
	bl	__stack_chk_fail
	.cfi_endproc
.LFE16:
	.size	rc4_encrypt, .-rc4_encrypt
	.align	2
	.global	rc4_decrypt
	.type	rc4_decrypt, %function
rc4_decrypt:
.LFB17:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp
	bl	rc4_encrypt
	ldp	x29, x30, [sp], 16
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE17:
	.size	rc4_decrypt, .-rc4_decrypt
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
