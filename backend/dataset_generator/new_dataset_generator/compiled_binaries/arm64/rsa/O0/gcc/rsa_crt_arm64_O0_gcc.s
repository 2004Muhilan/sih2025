	.arch armv8-a
	.file	"rsa_crt.c"
	.text
	.align	2
	.global	rsa_crt_decrypt
	.type	rsa_crt_decrypt, %function
rsa_crt_decrypt:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	str	x3, [sp]
	ldr	x0, [sp, 8]
	sub	x1, x0, #1
	ldr	x0, [sp, 16]
	udiv	x2, x0, x1
	mul	x1, x2, x1
	sub	x0, x0, x1
	str	x0, [sp, 32]
	ldr	x0, [sp]
	sub	x1, x0, #1
	ldr	x0, [sp, 16]
	udiv	x2, x0, x1
	mul	x1, x2, x1
	sub	x0, x0, x1
	str	x0, [sp, 40]
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 8]
	udiv	x2, x0, x1
	ldr	x1, [sp, 8]
	mul	x1, x2, x1
	sub	x0, x0, x1
	str	x0, [sp, 48]
	ldr	x0, [sp, 24]
	ldr	x1, [sp]
	udiv	x2, x0, x1
	ldr	x1, [sp]
	mul	x1, x2, x1
	sub	x0, x0, x1
	str	x0, [sp, 56]
	ldr	x1, [sp, 48]
	ldr	x0, [sp]
	mul	x1, x1, x0
	ldr	x2, [sp, 56]
	ldr	x0, [sp, 8]
	mul	x0, x2, x0
	add	x0, x1, x0
	ldr	x2, [sp, 8]
	ldr	x1, [sp]
	mul	x1, x2, x1
	udiv	x2, x0, x1
	mul	x1, x2, x1
	sub	x0, x0, x1
	add	sp, sp, 64
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	rsa_crt_decrypt, .-rsa_crt_decrypt
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
