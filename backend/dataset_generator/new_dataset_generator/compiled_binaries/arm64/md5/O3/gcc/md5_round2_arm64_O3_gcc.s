	.arch armv8-a
	.file	"md5_round2.c"
	.text
	.align	2
	.p2align 4,,11
	.global	md5_round2
	.type	md5_round2, %function
md5_round2:
.LFB0:
	.cfi_startproc
	eor	w7, w1, w2
	ldr	w8, [x0]
	and	w3, w7, w3
	add	w4, w4, w6
	eor	w3, w3, w2
	add	w3, w3, w8
	add	w3, w3, w4
	lsl	w3, w3, w5
	add	w3, w3, w1
	str	w3, [x0]
	ret
	.cfi_endproc
.LFE0:
	.size	md5_round2, .-md5_round2
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
