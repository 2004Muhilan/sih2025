	.arch armv8-a
	.file	"ecc_ecdh_shared_secret.c"
	.text
	.align	2
	.p2align 4,,11
	.global	ecc_ecdh_shared
	.type	ecc_ecdh_shared, %function
ecc_ecdh_shared:
.LFB0:
	.cfi_startproc
	mul	x2, x2, x0
	mov	x1, -9223372034707292160
	movk	x1, 0x1, lsl 0
	umulh	x1, x2, x1
	lsr	x1, x1, 31
	lsl	x0, x1, 32
	sub	x0, x0, x1
	sub	x0, x2, x0
	ret
	.cfi_endproc
.LFE0:
	.size	ecc_ecdh_shared, .-ecc_ecdh_shared
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
