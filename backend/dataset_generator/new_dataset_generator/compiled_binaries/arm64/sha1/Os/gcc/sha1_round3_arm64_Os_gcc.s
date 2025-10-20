	.arch armv8-a
	.file	"sha1_round3.c"
	.text
	.align	2
	.global	sha1_round3
	.type	sha1_round3, %function
sha1_round3:
.LFB0:
	.cfi_startproc
	orr	w6, w2, w3
	ror	w0, w0, 27
	and	w6, w6, w1
	mov	w1, 48348
	and	w2, w2, w3
	add	w0, w0, w4
	movk	w1, 0x8f1b, lsl 16
	add	w5, w5, w1
	orr	w6, w6, w2
	add	w0, w0, w5
	add	w0, w6, w0
	ret
	.cfi_endproc
.LFE0:
	.size	sha1_round3, .-sha1_round3
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
