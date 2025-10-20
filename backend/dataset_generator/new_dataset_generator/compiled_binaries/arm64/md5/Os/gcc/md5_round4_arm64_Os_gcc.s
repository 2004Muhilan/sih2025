	.arch armv8-a
	.file	"md5_round4.c"
	.text
	.align	2
	.global	md5_round4
	.type	md5_round4, %function
md5_round4:
.LFB0:
	.cfi_startproc
	orn	w3, w1, w3
	add	w4, w4, w6
	eor	w3, w3, w2
	ldr	w2, [x0]
	add	w3, w3, w2
	add	w3, w3, w4
	lsl	w3, w3, w5
	add	w3, w3, w1
	str	w3, [x0]
	ret
	.cfi_endproc
.LFE0:
	.size	md5_round4, .-md5_round4
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
