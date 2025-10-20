	.arch armv8-a
	.file	"sha1_round3.c"
	.text
	.align	2
	.p2align 4,,11
	.global	sha1_round3
	.type	sha1_round3, %function
sha1_round3:
.LFB0:
	.cfi_startproc
	orr	w6, w2, w3
	ror	w0, w0, 27
	add	w0, w0, w4
	mov	w4, 48348
	and	w6, w6, w1
	and	w2, w2, w3
	movk	w4, 0x8f1b, lsl 16
	add	w5, w5, w4
	add	w0, w0, w5
	orr	w6, w6, w2
	add	w0, w6, w0
	ret
	.cfi_endproc
.LFE0:
	.size	sha1_round3, .-sha1_round3
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
