	.arch armv8-a
	.file	"sha256_maj.c"
	.text
	.align	2
	.p2align 4,,11
	.global	sha256_maj
	.type	sha256_maj, %function
sha256_maj:
.LFB0:
	.cfi_startproc
	eor	w3, w1, w2
	and	w1, w1, w2
	and	w0, w3, w0
	eor	w0, w0, w1
	ret
	.cfi_endproc
.LFE0:
	.size	sha256_maj, .-sha256_maj
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
