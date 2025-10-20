	.arch armv8-a
	.file	"rsa_crt.c"
	.text
	.align	2
	.global	rsa_crt_decrypt
	.type	rsa_crt_decrypt, %function
rsa_crt_decrypt:
.LFB0:
	.cfi_startproc
	udiv	x1, x0, x2
	udiv	x4, x0, x3
	msub	x1, x1, x2, x0
	msub	x0, x4, x3, x0
	mul	x0, x0, x2
	madd	x0, x1, x3, x0
	mul	x2, x2, x3
	udiv	x1, x0, x2
	msub	x0, x1, x2, x0
	ret
	.cfi_endproc
.LFE0:
	.size	rsa_crt_decrypt, .-rsa_crt_decrypt
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
