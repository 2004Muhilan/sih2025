	.arch armv8-a
	.file	"xor_simple.c"
	.text
	.align	2
	.global	xor_cipher_simple
	.type	xor_cipher_simple, %function
xor_cipher_simple:
.LFB14:
	.cfi_startproc
	cbz	x1, .L1
	mov	x4, 0
.L3:
	udiv	x5, x4, x3
	msub	x5, x5, x3, x4
	ldrb	w5, [x2, x5]
	ldrb	w6, [x0, x4]
	eor	w5, w5, w6
	strb	w5, [x0, x4]
	add	x4, x4, 1
	cmp	x1, x4
	bne	.L3
.L1:
	ret
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
	stp	x21, x22, [sp, 32]
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	.cfi_offset 21, -16
	.cfi_offset 22, -8
	mov	x20, x1
	mov	x21, x2
	mov	x22, x3
	mov	x19, x4
	mov	x2, x1
	mov	x1, x0
	mov	x0, x4
	bl	memcpy
	mov	x3, x22
	mov	x2, x21
	mov	x1, x20
	mov	x0, x19
	bl	xor_cipher_simple
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE15:
	.size	xor_encrypt_simple, .-xor_encrypt_simple
	.align	2
	.global	xor_decrypt_simple
	.type	xor_decrypt_simple, %function
xor_decrypt_simple:
.LFB16:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	.cfi_offset 21, -16
	.cfi_offset 22, -8
	mov	x20, x1
	mov	x21, x2
	mov	x22, x3
	mov	x19, x4
	mov	x2, x1
	mov	x1, x0
	mov	x0, x4
	bl	memcpy
	mov	x3, x22
	mov	x2, x21
	mov	x1, x20
	mov	x0, x19
	bl	xor_cipher_simple
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE16:
	.size	xor_decrypt_simple, .-xor_decrypt_simple
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
