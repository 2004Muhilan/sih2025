	.arch armv8-a
	.file	"ecc_ecdh_shared_secret.c"
	.text
	.align	2
	.global	ecc_ecdh_shared
	.type	ecc_ecdh_shared, %function
ecc_ecdh_shared:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x0, x1, [sp, 16]
	str	x2, [sp, 8]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 8]
	mul	x2, x1, x0
	mov	x0, -9223372034707292160
	movk	x0, 0x1, lsl 0
	umulh	x0, x2, x0
	lsr	x1, x0, 31
	mov	x0, x1
	lsl	x0, x0, 32
	sub	x0, x0, x1
	sub	x1, x2, x0
	mov	x0, x1
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	ecc_ecdh_shared, .-ecc_ecdh_shared
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
