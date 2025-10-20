	.arch armv8-a
	.file	"md5_round2.c"
	.text
	.align	2
	.global	md5_round2
	.type	md5_round2, %function
md5_round2:
.LFB0:
	.cfi_startproc
	eor	w7, w1, w2
	add	w4, w4, w6
	and	w7, w7, w3
	eor	w7, w7, w2
	ldr	w2, [x0]
	add	w7, w7, w2
	add	w7, w7, w4
	lsl	w7, w7, w5
	add	w7, w7, w1
	str	w7, [x0]
	ret
	.cfi_endproc
.LFE0:
	.size	md5_round2, .-md5_round2
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
