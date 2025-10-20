	.arch armv8-a
	.file	"ecc_ecdh_shared_secret.c"
	.text
	.align	2
	.global	ecc_ecdh_shared
	.type	ecc_ecdh_shared, %function
ecc_ecdh_shared:
.LFB0:
	.cfi_startproc
	mul	x2, x2, x0
	mov	x0, 4294967295
	udiv	x1, x2, x0
	msub	x0, x1, x0, x2
	ret
	.cfi_endproc
.LFE0:
	.size	ecc_ecdh_shared, .-ecc_ecdh_shared
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
