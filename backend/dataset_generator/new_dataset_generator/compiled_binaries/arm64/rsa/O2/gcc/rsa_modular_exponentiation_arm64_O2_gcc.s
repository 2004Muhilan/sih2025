	.arch armv8-a
	.file	"rsa_modular_exponentiation.c"
	.text
	.align	2
	.p2align 4,,11
	.global	rsa_mod_exp
	.type	rsa_mod_exp, %function
rsa_mod_exp:
.LFB0:
	.cfi_startproc
	udiv	x3, x0, x2
	msub	x3, x3, x2, x0
	mov	x0, 1
	cbz	x1, .L1
	.p2align 3,,7
.L4:
	mul	x4, x3, x0
	tbz	x1, 0, .L3
	udiv	x0, x4, x2
	msub	x0, x0, x2, x4
.L3:
	mul	x3, x3, x3
	lsr	x1, x1, 1
	udiv	x4, x3, x2
	msub	x3, x4, x2, x3
	cbnz	x1, .L4
.L1:
	ret
	.cfi_endproc
.LFE0:
	.size	rsa_mod_exp, .-rsa_mod_exp
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
