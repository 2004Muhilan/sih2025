	.arch armv8-a
	.file	"sha1_round2.c"
	.text
	.align	2
	.global	sha1_round2
	.type	sha1_round2, %function
sha1_round2:
.LFB0:
	.cfi_startproc
	eor	w2, w2, w3
	ror	w0, w0, 27
	eor	w2, w2, w1
	mov	w1, 60321
	add	w2, w2, w4
	movk	w1, 0x6ed9, lsl 16
	add	w5, w5, w1
	add	w2, w2, w5
	add	w0, w2, w0
	ret
	.cfi_endproc
.LFE0:
	.size	sha1_round2, .-sha1_round2
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
