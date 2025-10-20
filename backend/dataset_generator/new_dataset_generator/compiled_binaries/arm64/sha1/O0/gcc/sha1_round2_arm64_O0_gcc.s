	.arch armv8-a
	.file	"sha1_round2.c"
	.text
	.align	2
	.global	sha1_round2
	.type	sha1_round2, %function
sha1_round2:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	str	w2, [sp, 20]
	str	w3, [sp, 16]
	str	w4, [sp, 12]
	str	w5, [sp, 8]
	ldr	w0, [sp, 28]
	ror	w1, w0, 27
	ldr	w2, [sp, 24]
	ldr	w0, [sp, 20]
	eor	w2, w2, w0
	ldr	w0, [sp, 16]
	eor	w0, w2, w0
	add	w1, w1, w0
	ldr	w0, [sp, 12]
	add	w1, w1, w0
	ldr	w0, [sp, 8]
	add	w1, w1, w0
	mov	w0, 60321
	movk	w0, 0x6ed9, lsl 16
	add	w0, w1, w0
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	sha1_round2, .-sha1_round2
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
