	.arch armv8-a
	.file	"des3_triple.c"
	.text
	.align	2
	.p2align 4,,11
	.global	des3_encrypt
	.type	des3_encrypt, %function
des3_encrypt:
.LFB0:
	.cfi_startproc
	eor	x0, x0, x1
	eor	x2, x2, x3
	eor	x0, x2, x0
	ret
	.cfi_endproc
.LFE0:
	.size	des3_encrypt, .-des3_encrypt
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
