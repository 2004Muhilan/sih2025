	.arch armv8-a
	.file	"xor_simple.c"
	.text
	.align	2
	.global	xor_cipher_simple
	.type	xor_cipher_simple, %function
xor_cipher_simple:
.LFB14:
	.cfi_startproc
	mov	x4, 0
.L2:
	cmp	x4, x1
	bne	.L3
	ret
.L3:
	udiv	x5, x4, x3
	ldrb	w6, [x0, x4]
	msub	x5, x5, x3, x4
	ldrb	w5, [x2, x5]
	eor	w5, w5, w6
	strb	w5, [x0, x4]
	add	x4, x4, 1
	b	.L2
	.cfi_endproc
.LFE14:
	.size	xor_cipher_simple, .-xor_cipher_simple
	.align	2
	.global	xor_encrypt_simple
	.type	xor_encrypt_simple, %function
xor_encrypt_simple:
.LFB15:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	mov	x19, x1
	mov	x20, x2
	mov	x2, x1
	mov	x1, x0
	mov	x0, x4
	str	x21, [sp, 32]
	.cfi_offset 21, -16
	mov	x21, x3
	bl	memcpy
	mov	x3, x21
	mov	x2, x20
	ldr	x21, [sp, 32]
	mov	x1, x19
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	b	xor_cipher_simple
	.cfi_endproc
.LFE15:
	.size	xor_encrypt_simple, .-xor_encrypt_simple
	.align	2
	.global	xor_decrypt_simple
	.type	xor_decrypt_simple, %function
xor_decrypt_simple:
.LFB18:
	.cfi_startproc
	b	xor_encrypt_simple
	.cfi_endproc
.LFE18:
	.size	xor_decrypt_simple, .-xor_decrypt_simple
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
