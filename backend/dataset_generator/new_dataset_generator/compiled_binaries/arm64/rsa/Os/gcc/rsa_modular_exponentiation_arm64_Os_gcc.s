	.arch armv8-a
	.file	"rsa_modular_exponentiation.c"
	.text
	.align	2
	.global	rsa_mod_exp
	.type	rsa_mod_exp, %function
rsa_mod_exp:
.LFB0:
	.cfi_startproc
	udiv	x3, x0, x2
	msub	x3, x3, x2, x0
	mov	x0, 1
.L2:
	cbnz	x1, .L4
	ret
.L4:
	tbz	x1, 0, .L3
	mul	x0, x3, x0
	udiv	x4, x0, x2
	msub	x0, x4, x2, x0
.L3:
	mul	x3, x3, x3
	lsr	x1, x1, 1
	udiv	x4, x3, x2
	msub	x3, x4, x2, x3
	b	.L2
	.cfi_endproc
.LFE0:
	.size	rsa_mod_exp, .-rsa_mod_exp
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
