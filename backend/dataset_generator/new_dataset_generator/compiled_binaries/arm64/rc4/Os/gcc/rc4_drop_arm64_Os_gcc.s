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
	mov	x4, 0
	mov	w6, 0
.L3:
	udiv	x5, x4, x2
	ldrb	w7, [x0, x4]
	add	w6, w6, w7
	msub	x5, x5, x2, x4
	ldrb	w5, [x1, x5]
	add	w5, w5, w6
	and	w6, w5, 255
	and	x5, x5, 255
	ldrb	w8, [x0, x5]
	strb	w8, [x0, x4]
	add	x4, x4, 1
	strb	w7, [x0, x5]
	cmp	x4, 256
	bne	.L3
	mov	x4, 0
	strh	wzr, [x0, 256]
.L4:
	cmp	x4, x3
	bne	.L5
	ret
.L5:
	ldrb	w2, [x0, 256]
	add	x4, x4, 1
	ldrb	w1, [x0, 257]
	add	w2, w2, 1
	strb	w2, [x0, 256]
	and	x2, x2, 255
	ldrb	w5, [x0, x2]
	add	w1, w5, w1
	and	x1, x1, 255
	strb	w1, [x0, 257]
	ldrb	w6, [x0, x1]
	strb	w6, [x0, x2]
	strb	w5, [x0, x1]
	b	.L4
	.cfi_endproc
.LFE14:
	.size	rc4_drop_init, .-rc4_drop_init
	.align	2
	.global	rc4_drop_crypt
	.type	rc4_drop_crypt, %function
rc4_drop_crypt:
.LFB15:
	.cfi_startproc
	mov	x6, 0
.L9:
	cmp	x6, x2
	bne	.L10
	ret
.L10:
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
	b	.L9
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
	mov	x9, x2
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
	mov	x3, 768
	mov	x1, x0
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
	beq	.L12
	bl	__stack_chk_fail
.L12:
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
	.size	rc4_drop_encrypt, .-rc4_drop_encrypt
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
