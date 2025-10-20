	.arch armv8-a
	.file	"sha256_sigma.c"
	.text
	.align	2
	.global	sha256_sigma0
	.type	sha256_sigma0, %function
sha256_sigma0:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	ror	w1, w0, 2
	ldr	w0, [sp, 12]
	ror	w0, w0, 13
	eor	w1, w1, w0
	ldr	w0, [sp, 12]
	ror	w0, w0, 22
	eor	w0, w1, w0
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	sha256_sigma0, .-sha256_sigma0
	.align	2
	.global	sha256_sigma1
	.type	sha256_sigma1, %function
sha256_sigma1:
.LFB1:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	ror	w1, w0, 6
	ldr	w0, [sp, 12]
	ror	w0, w0, 11
	eor	w1, w1, w0
	ldr	w0, [sp, 12]
	ror	w0, w0, 25
	eor	w0, w1, w0
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	sha256_sigma1, .-sha256_sigma1
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
