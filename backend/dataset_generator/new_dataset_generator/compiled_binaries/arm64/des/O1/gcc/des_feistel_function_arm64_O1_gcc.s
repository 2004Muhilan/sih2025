	.arch armv8-a
	.file	"des_feistel_function.c"
	.text
	.align	2
	.global	des_feistel
	.type	des_feistel, %function
des_feistel:
.LFB0:
	.cfi_startproc
	mov	w0, 48
.L2:
	subs	w0, w0, #1
	bne	.L2
	mov	w0, 0
	ret
	.cfi_endproc
.LFE0:
	.size	des_feistel, .-des_feistel
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
