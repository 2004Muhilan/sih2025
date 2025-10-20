	.arch armv8-a
	.file	"xor_rotating.c"
	.text
	.align	2
	.global	xor_cipher_rotating
	.type	xor_cipher_rotating, %function
xor_cipher_rotating:
.LFB15:
	.cfi_startproc
	mov	x4, 0
.L2:
	cmp	x4, x1
	bne	.L3
	ret
.L3:
	udiv	x6, x4, x3
	ldrb	w7, [x0, x4]
	msub	x6, x6, x3, x4
	ldrb	w5, [x2, x6]
	eor	w7, w5, w7
	strb	w7, [x0, x4]
	lsr	w7, w5, 7
	add	x4, x4, 1
	orr	w5, w7, w5, lsl 1
	strb	w5, [x2, x6]
	b	.L2
	.cfi_endproc
.LFE15:
	.size	xor_cipher_rotating, .-xor_cipher_rotating
	.align	2
	.global	xor_encrypt_rotating
	.type	xor_encrypt_rotating, %function
xor_encrypt_rotating:
.LFB16:
	.cfi_startproc
	sub	sp, sp, #320
	.cfi_def_cfa_offset 320
	stp	x29, x30, [sp, 272]
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	add	x29, sp, 272
	stp	x19, x20, [sp, 288]
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	mov	x20, x1
	mov	x19, x4
	adrp	x1, :got:__stack_chk_guard
	ldr	x1, [x1, :got_lo12:__stack_chk_guard]
	stp	x21, x22, [sp, 304]
	.cfi_offset 21, -16
	.cfi_offset 22, -8
	mov	x22, x2
	ldr	x2, [x1]
	str	x2, [sp, 264]
	mov	x2, 0
	mov	x21, x3
	mov	x1, x0
	mov	x2, x20
	mov	x0, x4
	bl	memcpy
	add	x4, sp, 8
	mov	x2, x21
	mov	x1, x22
	mov	x0, x4
	mov	x3, 256
	bl	__memcpy_chk
	mov	x2, x0
	mov	x0, x19
	mov	x1, x20
	mov	x3, x21
	bl	xor_cipher_rotating
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 264]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L5
	bl	__stack_chk_fail
.L5:
	ldp	x29, x30, [sp, 272]
	ldp	x19, x20, [sp, 288]
	ldp	x21, x22, [sp, 304]
	add	sp, sp, 320
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE16:
	.size	xor_encrypt_rotating, .-xor_encrypt_rotating
	.align	2
	.global	xor_decrypt_rotating
	.type	xor_decrypt_rotating, %function
xor_decrypt_rotating:
.LFB17:
	.cfi_startproc
	b	xor_encrypt_rotating
	.cfi_endproc
.LFE17:
	.size	xor_decrypt_rotating, .-xor_decrypt_rotating
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
