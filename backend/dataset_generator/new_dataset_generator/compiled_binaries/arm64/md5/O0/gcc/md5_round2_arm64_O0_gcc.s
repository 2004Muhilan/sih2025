	.arch armv8-a
	.file	"md5_round2.c"
	.text
	.align	2
	.global	md5_round2
	.type	md5_round2, %function
md5_round2:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	str	w2, [sp, 16]
	str	w3, [sp, 12]
	str	w4, [sp, 8]
	str	w5, [sp, 4]
	str	w6, [sp]
	ldr	x0, [sp, 24]
	ldr	w1, [x0]
	ldr	w2, [sp, 20]
	ldr	w0, [sp, 12]
	and	w2, w2, w0
	ldr	w0, [sp, 12]
	mvn	w3, w0
	ldr	w0, [sp, 16]
	and	w0, w3, w0
	orr	w0, w2, w0
	add	w1, w1, w0
	ldr	w0, [sp, 8]
	add	w1, w1, w0
	ldr	w0, [sp]
	add	w1, w1, w0
	ldr	w0, [sp, 4]
	lsl	w1, w1, w0
	ldr	w0, [sp, 20]
	add	w1, w1, w0
	ldr	x0, [sp, 24]
	str	w1, [x0]
	nop
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	md5_round2, .-md5_round2
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
