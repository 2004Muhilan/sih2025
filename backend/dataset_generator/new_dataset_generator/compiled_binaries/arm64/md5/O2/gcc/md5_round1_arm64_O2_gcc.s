	.arch armv8-a
	.file	"md5_round1.c"
	.text
	.align	2
	.p2align 4,,11
	.global	md5_round1
	.type	md5_round1, %function
md5_round1:
.LFB0:
	.cfi_startproc
	eor	w2, w2, w3
	ldr	w7, [x0]
	and	w2, w2, w1
	add	w4, w4, w6
	eor	w3, w2, w3
	add	w3, w3, w7
	add	w3, w3, w4
	lsl	w3, w3, w5
	add	w3, w3, w1
	str	w3, [x0]
	ret
	.cfi_endproc
.LFE0:
	.size	md5_round1, .-md5_round1
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
