	.arch armv8-a
	.file	"des3_triple.c"
	.text
	.align	2
	.global	des3_encrypt
	.type	des3_encrypt, %function
des3_encrypt:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	str	x3, [sp]
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 16]
	eor	x0, x1, x0
	str	x0, [sp, 24]
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 8]
	eor	x0, x1, x0
	str	x0, [sp, 24]
	ldr	x1, [sp, 24]
	ldr	x0, [sp]
	eor	x0, x1, x0
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	des3_encrypt, .-des3_encrypt
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
