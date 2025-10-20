	.arch armv8-a
	.file	"rsa_pkcs1_padding.c"
	.text
	.align	2
	.p2align 4,,11
	.global	rsa_pkcs1_pad
	.type	rsa_pkcs1_pad, %function
rsa_pkcs1_pad:
.LFB14:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	sub	x20, x3, x1
	mov	x19, x2
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -32
	.cfi_offset 22, -24
	mov	x21, x1
	mov	w1, 512
	str	x23, [sp, 48]
	.cfi_offset 23, -16
	sub	x23, x20, #1
	strh	w1, [x2]
	mov	x22, x0
	cmp	x23, 2
	bls	.L2
	sub	x2, x20, #3
	add	x0, x19, 2
	mov	w1, 255
	bl	memset
.L2:
	strb	wzr, [x19, x23]
	mov	x2, x21
	mov	x1, x22
	add	x0, x19, x20
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldr	x23, [sp, 48]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 23
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	b	memcpy
	.cfi_endproc
.LFE14:
	.size	rsa_pkcs1_pad, .-rsa_pkcs1_pad
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
