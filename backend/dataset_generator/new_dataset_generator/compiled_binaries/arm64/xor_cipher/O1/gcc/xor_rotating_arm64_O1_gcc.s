	.arch armv8-a
	.file	"xor_rotating.c"
	.text
	.align	2
	.global	xor_cipher_rotating
	.type	xor_cipher_rotating, %function
xor_cipher_rotating:
.LFB15:
	.cfi_startproc
	cbz	x1, .L1
	mov	x4, 0
.L3:
	udiv	x6, x4, x3
	msub	x6, x6, x3, x4
	ldrb	w5, [x2, x6]
	ldrb	w7, [x0, x4]
	eor	w7, w5, w7
	strb	w7, [x0, x4]
	ubfiz	w7, w5, 1, 7
	orr	w5, w7, w5, lsr 7
	strb	w5, [x2, x6]
	add	x4, x4, 1
	cmp	x1, x4
	bne	.L3
.L1:
	ret
	.cfi_endproc
.LFE15:
	.size	xor_cipher_rotating, .-xor_cipher_rotating
	.align	2
	.global	xor_encrypt_rotating
	.type	xor_encrypt_rotating, %function
xor_encrypt_rotating:
.LFB16:
	.cfi_startproc
	sub	sp, sp, #336
	.cfi_def_cfa_offset 336
	stp	x29, x30, [sp, 272]
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	add	x29, sp, 272
	stp	x19, x20, [sp, 288]
	stp	x21, x22, [sp, 304]
	str	x23, [sp, 320]
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	.cfi_offset 21, -32
	.cfi_offset 22, -24
	.cfi_offset 23, -16
	mov	x20, x1
	mov	x23, x2
	mov	x22, x3
	mov	x19, x4
	adrp	x1, :got:__stack_chk_guard
	ldr	x1, [x1, :got_lo12:__stack_chk_guard]
	ldr	x2, [x1]
	str	x2, [sp, 264]
	mov	x2, 0
	mov	x2, x20
	mov	x1, x0
	mov	x0, x4
	bl	memcpy
	add	x21, sp, 8
	mov	x3, 256
	mov	x2, x22
	mov	x1, x23
	mov	x0, x21
	bl	__memcpy_chk
	mov	x3, x22
	mov	x2, x21
	mov	x1, x20
	mov	x0, x19
	bl	xor_cipher_rotating
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 264]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	bne	.L8
	ldp	x19, x20, [sp, 288]
	ldp	x21, x22, [sp, 304]
	ldr	x23, [sp, 320]
	ldp	x29, x30, [sp, 272]
	add	sp, sp, 336
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 23
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
.L8:
	.cfi_restore_state
	bl	__stack_chk_fail
	.cfi_endproc
.LFE16:
	.size	xor_encrypt_rotating, .-xor_encrypt_rotating
	.align	2
	.global	xor_decrypt_rotating
	.type	xor_decrypt_rotating, %function
xor_decrypt_rotating:
.LFB17:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp
	bl	xor_encrypt_rotating
	ldp	x29, x30, [sp], 16
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE17:
	.size	xor_decrypt_rotating, .-xor_decrypt_rotating
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
