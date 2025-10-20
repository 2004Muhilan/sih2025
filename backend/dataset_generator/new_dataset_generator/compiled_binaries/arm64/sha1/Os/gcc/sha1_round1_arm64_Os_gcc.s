	.arch armv8-a
	.file	"sha1_round1.c"
	.text
	.align	2
	.global	sha1_round1
	.type	sha1_round1, %function
sha1_round1:
.LFB0:
	.cfi_startproc
	eor	w2, w2, w3
	ror	w0, w0, 27
	and	w2, w2, w1
	eor	w2, w2, w3
	add	w2, w2, w0
	mov	w0, 31129
	movk	w0, 0x5a82, lsl 16
	add	w5, w5, w0
	add	w2, w2, w5
	add	w0, w2, w4
	ret
	.cfi_endproc
.LFE0:
	.size	sha1_round1, .-sha1_round1
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
