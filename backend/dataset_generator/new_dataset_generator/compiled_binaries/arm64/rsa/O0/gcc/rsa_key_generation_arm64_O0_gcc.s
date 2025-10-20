	.arch armv8-a
	.file	"rsa_key_generation.c"
	.text
	.align	2
	.global	rsa_generate_keys
	.type	rsa_generate_keys, %function
rsa_generate_keys:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	mov	x0, 61
	str	x0, [sp, 40]
	mov	x0, 53
	str	x0, [sp, 48]
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 48]
	mul	x1, x1, x0
	ldr	x0, [sp, 24]
	str	x1, [x0]
	ldr	x0, [sp, 40]
	sub	x1, x0, #1
	ldr	x0, [sp, 48]
	sub	x0, x0, #1
	mul	x0, x1, x0
	str	x0, [sp, 56]
	ldr	x0, [sp, 16]
	mov	x1, 17
	str	x1, [x0]
	ldr	x0, [sp, 8]
	str	xzr, [x0]
	nop
	add	sp, sp, 64
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	rsa_generate_keys, .-rsa_generate_keys
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
