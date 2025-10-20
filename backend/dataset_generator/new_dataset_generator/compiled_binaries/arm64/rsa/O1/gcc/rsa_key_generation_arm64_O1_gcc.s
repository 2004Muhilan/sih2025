	.arch armv8-a
	.file	"rsa_key_generation.c"
	.text
	.align	2
	.global	rsa_generate_keys
	.type	rsa_generate_keys, %function
rsa_generate_keys:
.LFB0:
	.cfi_startproc
	mov	x3, 3233
	str	x3, [x0]
	mov	x0, 17
	str	x0, [x1]
	str	xzr, [x2]
	ret
	.cfi_endproc
.LFE0:
	.size	rsa_generate_keys, .-rsa_generate_keys
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
