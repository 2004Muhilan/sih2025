	.arch armv8-a
	.file	"md5_round3.c"
	.text
	.align	2
	.global	md5_round3
	.type	md5_round3, %function
md5_round3:
.LFB0:
	.cfi_startproc
	eor	w2, w2, w3
	eor	w2, w2, w1
	ldr	w3, [x0]
	add	w2, w2, w3
	add	w4, w4, w6
	add	w2, w2, w4
	lsl	w2, w2, w5
	add	w2, w2, w1
	str	w2, [x0]
	ret
	.cfi_endproc
.LFE0:
	.size	md5_round3, .-md5_round3
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
