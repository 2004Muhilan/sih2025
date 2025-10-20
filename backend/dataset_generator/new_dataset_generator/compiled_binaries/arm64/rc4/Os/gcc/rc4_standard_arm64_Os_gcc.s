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
	mov	x3, 0
	mov	w5, 0
.L3:
	udiv	x4, x3, x2
	ldrb	w6, [x0, x3]
	add	w5, w5, w6
	msub	x4, x4, x2, x3
	ldrb	w4, [x1, x4]
	add	w4, w4, w5
	and	w5, w4, 255
	and	x4, x4, 255
	ldrb	w7, [x0, x4]
	strb	w7, [x0, x3]
	add	x3, x3, 1
	strb	w6, [x0, x4]
	cmp	x3, 256
	bne	.L3
	strh	wzr, [x0, 256]
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
	mov	x6, 0
.L7:
	cmp	x6, x2
	bne	.L8
	ret
.L8:
	ldrb	w4, [x0, 256]
	ldrb	w3, [x0, 257]
	add	w4, w4, 1
	strb	w4, [x0, 256]
	and	x4, x4, 255
	ldrb	w5, [x0, x4]
	add	w3, w5, w3
	and	x3, x3, 255
	strb	w3, [x0, 257]
	ldrb	w7, [x0, x3]
	strb	w7, [x0, x4]
	strb	w5, [x0, x3]
	ldrb	w3, [x0, x4]
	ldrb	w4, [x1, x6]
	add	w5, w5, w3
	and	x5, x5, 255
	ldrb	w3, [x0, x5]
	eor	w3, w3, w4
	strb	w3, [x1, x6]
	add	x6, x6, 1
	b	.L7
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
	mov	x8, x2
	adrp	x2, :got:__stack_chk_guard
	ldr	x2, [x2, :got_lo12:__stack_chk_guard]
	stp	x29, x30, [sp, 272]
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	add	x29, sp, 272
	stp	x19, x20, [sp, 288]
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	mov	x19, sp
	mov	x20, x4
	str	x21, [sp, 304]
	.cfi_offset 21, -16
	mov	x21, x3
	ldr	x3, [x2]
	str	x3, [sp, 264]
	mov	x3, 0
	mov	x2, x1
	mov	x1, x0
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
	beq	.L10
	bl	__stack_chk_fail
.L10:
	ldp	x29, x30, [sp, 272]
	ldp	x19, x20, [sp, 288]
	ldr	x21, [sp, 304]
	add	sp, sp, 320
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 21
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE16:
	.size	rc4_encrypt, .-rc4_encrypt
	.align	2
	.global	rc4_decrypt
	.type	rc4_decrypt, %function
rc4_decrypt:
.LFB17:
	.cfi_startproc
	b	rc4_encrypt
	.cfi_endproc
.LFE17:
	.size	rc4_decrypt, .-rc4_decrypt
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
