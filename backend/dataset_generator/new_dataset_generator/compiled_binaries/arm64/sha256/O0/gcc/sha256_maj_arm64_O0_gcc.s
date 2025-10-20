	.arch armv8-a
	.file	"sha256_maj.c"
	.text
	.align	2
	.global	sha256_maj
	.type	sha256_maj, %function
sha256_maj:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	str	w2, [sp, 4]
	ldr	w1, [sp, 8]
	ldr	w0, [sp, 4]
	eor	w1, w1, w0
	ldr	w0, [sp, 12]
	and	w1, w1, w0
	ldr	w2, [sp, 8]
	ldr	w0, [sp, 4]
	and	w0, w2, w0
	eor	w0, w1, w0
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	sha256_maj, .-sha256_maj
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
