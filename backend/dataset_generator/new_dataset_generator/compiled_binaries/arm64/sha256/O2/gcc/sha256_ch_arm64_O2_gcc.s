	.arch armv8-a
	.file	"sha256_ch.c"
	.text
	.align	2
	.p2align 4,,11
	.global	sha256_ch
	.type	sha256_ch, %function
sha256_ch:
.LFB0:
	.cfi_startproc
	and	w1, w0, w1
	bic	w0, w2, w0
	eor	w0, w0, w1
	ret
	.cfi_endproc
.LFE0:
	.size	sha256_ch, .-sha256_ch
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
