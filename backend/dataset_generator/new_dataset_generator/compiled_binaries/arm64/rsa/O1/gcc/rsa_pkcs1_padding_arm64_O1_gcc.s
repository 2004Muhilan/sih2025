	.arch armv8-a
	.file	"rsa_pkcs1_padding.c"
	.text
	.align	2
	.global	rsa_pkcs1_pad
	.type	rsa_pkcs1_pad, %function
rsa_pkcs1_pad:
.LFB14:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp
	mov	x7, x2
	strb	wzr, [x2]
	mov	w2, 2
	strb	w2, [x7, 1]
	sub	x3, x3, x1
	sub	x2, x3, #1
	cmp	x2, 2
	bls	.L2
	add	x4, x7, 2
	add	x6, x7, x2
	mov	w5, -1
.L3:
	strb	w5, [x4], 1
	cmp	x4, x6
	bne	.L3
.L2:
	strb	wzr, [x7, x2]
	mov	x2, x1
	mov	x1, x0
	add	x0, x7, x3
	bl	memcpy
	ldp	x29, x30, [sp], 16
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE14:
	.size	rsa_pkcs1_pad, .-rsa_pkcs1_pad
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
