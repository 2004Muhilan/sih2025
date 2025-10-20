	.arch armv8-a
	.file	"rsa_modular_exponentiation.c"
	.text
	.align	2
	.global	rsa_mod_exp
	.type	rsa_mod_exp, %function
rsa_mod_exp:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	mov	x0, 1
	str	x0, [sp, 40]
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 8]
	udiv	x2, x0, x1
	ldr	x1, [sp, 8]
	mul	x1, x2, x1
	sub	x0, x0, x1
	str	x0, [sp, 24]
	b	.L2
.L4:
	ldr	x0, [sp, 16]
	and	x0, x0, 1
	cmp	x0, 0
	beq	.L3
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 24]
	mul	x0, x1, x0
	ldr	x1, [sp, 8]
	udiv	x2, x0, x1
	ldr	x1, [sp, 8]
	mul	x1, x2, x1
	sub	x0, x0, x1
	str	x0, [sp, 40]
.L3:
	ldr	x0, [sp, 24]
	mul	x0, x0, x0
	ldr	x1, [sp, 8]
	udiv	x2, x0, x1
	ldr	x1, [sp, 8]
	mul	x1, x2, x1
	sub	x0, x0, x1
	str	x0, [sp, 24]
	ldr	x0, [sp, 16]
	lsr	x0, x0, 1
	str	x0, [sp, 16]
.L2:
	ldr	x0, [sp, 16]
	cmp	x0, 0
	bne	.L4
	ldr	x0, [sp, 40]
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	rsa_mod_exp, .-rsa_mod_exp
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
