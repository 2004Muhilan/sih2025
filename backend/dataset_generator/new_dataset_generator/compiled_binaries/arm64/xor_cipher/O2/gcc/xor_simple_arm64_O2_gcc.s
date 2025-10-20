	.arch armv8-a
	.file	"xor_simple.c"
	.text
	.align	2
	.p2align 4,,11
	.global	xor_cipher_simple
	.type	xor_cipher_simple, %function
xor_cipher_simple:
.LFB14:
	.cfi_startproc
	cbz	x1, .L1
	mov	x4, 0
	.p2align 3,,7
.L3:
	udiv	x5, x4, x3
	ldrb	w6, [x0, x4]
	msub	x5, x5, x3, x4
	ldrb	w5, [x2, x5]
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
	.p2align 4,,11
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
	mov	x20, x1
	mov	x19, x3
	mov	x1, x0
	mov	x0, x4
	str	x21, [sp, 32]
	.cfi_offset 21, -16
	mov	x21, x2
	mov	x2, x20
	bl	memcpy
	cbz	x20, .L9
	mov	x4, x0
	mov	x0, 0
	.p2align 3,,7
.L11:
	udiv	x5, x0, x19
	ldrb	w3, [x4, x0]
	msub	x5, x5, x19, x0
	ldrb	w5, [x21, x5]
	eor	w5, w5, w3
	strb	w5, [x4, x0]
	add	x0, x0, 1
	cmp	x20, x0
	bne	.L11
.L9:
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE15:
	.size	xor_encrypt_simple, .-xor_encrypt_simple
	.align	2
	.p2align 4,,11
	.global	xor_decrypt_simple
	.type	xor_decrypt_simple, %function
xor_decrypt_simple:
.LFB18:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	mov	x20, x1
	mov	x19, x3
	mov	x1, x0
	mov	x0, x4
	str	x21, [sp, 32]
	.cfi_offset 21, -16
	mov	x21, x2
	mov	x2, x20
	bl	memcpy
	cbz	x20, .L17
	mov	x4, x0
	mov	x0, 0
	.p2align 3,,7
.L19:
	udiv	x5, x0, x19
	ldrb	w3, [x4, x0]
	msub	x5, x5, x19, x0
	ldrb	w5, [x21, x5]
	eor	w5, w5, w3
	strb	w5, [x4, x0]
	add	x0, x0, 1
	cmp	x20, x0
	bne	.L19
.L17:
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE18:
	.size	xor_decrypt_simple, .-xor_decrypt_simple
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
