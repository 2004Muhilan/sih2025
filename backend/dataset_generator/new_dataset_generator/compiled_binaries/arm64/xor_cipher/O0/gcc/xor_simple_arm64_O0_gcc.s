	.arch armv8-a
	.file	"xor_simple.c"
	.text
	.align	2
	.global	xor_cipher_simple
	.type	xor_cipher_simple, %function
xor_cipher_simple:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	str	x3, [sp]
	str	xzr, [sp, 40]
	b	.L2
.L3:
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 40]
	add	x0, x1, x0
	ldrb	w2, [x0]
	ldr	x0, [sp, 40]
	ldr	x1, [sp]
	udiv	x3, x0, x1
	ldr	x1, [sp]
	mul	x1, x3, x1
	sub	x0, x0, x1
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldrb	w1, [x0]
	ldr	x3, [sp, 24]
	ldr	x0, [sp, 40]
	add	x0, x3, x0
	eor	w1, w2, w1
	and	w1, w1, 255
	strb	w1, [x0]
	ldr	x0, [sp, 40]
	add	x0, x0, 1
	str	x0, [sp, 40]
.L2:
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 16]
	cmp	x1, x0
	bcc	.L3
	nop
	nop
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	xor_cipher_simple, .-xor_cipher_simple
	.align	2
	.global	xor_encrypt_simple
	.type	xor_encrypt_simple, %function
xor_encrypt_simple:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	str	x3, [sp, 32]
	str	x4, [sp, 24]
	ldr	x2, [sp, 48]
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 24]
	bl	memcpy
	ldr	x3, [sp, 32]
	ldr	x2, [sp, 40]
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 24]
	bl	xor_cipher_simple
	nop
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	xor_encrypt_simple, .-xor_encrypt_simple
	.align	2
	.global	xor_decrypt_simple
	.type	xor_decrypt_simple, %function
xor_decrypt_simple:
.LFB2:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	str	x3, [sp, 32]
	str	x4, [sp, 24]
	ldr	x2, [sp, 48]
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 24]
	bl	memcpy
	ldr	x3, [sp, 32]
	ldr	x2, [sp, 40]
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 24]
	bl	xor_cipher_simple
	nop
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2:
	.size	xor_decrypt_simple, .-xor_decrypt_simple
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
