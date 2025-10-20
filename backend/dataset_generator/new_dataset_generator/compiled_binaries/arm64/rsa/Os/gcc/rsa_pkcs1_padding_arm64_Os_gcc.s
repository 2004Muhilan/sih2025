	.arch armv8-a
	.file	"rsa_pkcs1_padding.c"
	.text
	.align	2
	.global	rsa_pkcs1_pad
	.type	rsa_pkcs1_pad, %function
rsa_pkcs1_pad:
.LFB14:
	.cfi_startproc
	mov	x4, x2
	sub	x3, x3, x1
	mov	w2, 512
	sub	x5, x3, #1
	mov	w6, -1
	strh	w2, [x4]
	mov	x2, 2
.L2:
	cmp	x5, x2
	bhi	.L3
	strb	wzr, [x4, x5]
	mov	x2, x1
	mov	x1, x0
	add	x0, x4, x3
	b	memcpy
.L3:
	strb	w6, [x4, x2]
	add	x2, x2, 1
	b	.L2
	.cfi_endproc
.LFE14:
	.size	rsa_pkcs1_pad, .-rsa_pkcs1_pad
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
