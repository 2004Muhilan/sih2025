	.arch armv8-a
	.file	"rsa_pkcs1_padding.c"
	.text
	.align	2
	.global	rsa_pkcs1_pad
	.type	rsa_pkcs1_pad, %function
rsa_pkcs1_pad:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	str	x3, [sp, 16]
	ldr	x0, [sp, 24]
	strb	wzr, [x0]
	ldr	x0, [sp, 24]
	add	x0, x0, 1
	mov	w1, 2
	strb	w1, [x0]
	mov	x0, 2
	str	x0, [sp, 56]
	b	.L2
.L3:
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 56]
	add	x0, x1, x0
	mov	w1, -1
	strb	w1, [x0]
	ldr	x0, [sp, 56]
	add	x0, x0, 1
	str	x0, [sp, 56]
.L2:
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 32]
	sub	x0, x1, x0
	sub	x0, x0, #1
	ldr	x1, [sp, 56]
	cmp	x1, x0
	bcc	.L3
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 32]
	sub	x0, x1, x0
	sub	x0, x0, #1
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	strb	wzr, [x0]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 32]
	sub	x0, x1, x0
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	x2, [sp, 32]
	ldr	x1, [sp, 40]
	bl	memcpy
	nop
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	rsa_pkcs1_pad, .-rsa_pkcs1_pad
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
