	.file	"rsa_modular_exponentiation.c"
	.text
	.globl	rsa_mod_exp
	.type	rsa_mod_exp, @function
rsa_mod_exp:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	$1, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	$0, %edx
	divq	-40(%rbp)
	movq	%rdx, -24(%rbp)
	jmp	.L2
.L4:
	movq	-32(%rbp), %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L3
	movq	-8(%rbp), %rax
	imulq	-24(%rbp), %rax
	movl	$0, %edx
	divq	-40(%rbp)
	movq	%rdx, -8(%rbp)
.L3:
	movq	-24(%rbp), %rax
	imulq	%rax, %rax
	movl	$0, %edx
	divq	-40(%rbp)
	movq	%rdx, -24(%rbp)
	shrq	-32(%rbp)
.L2:
	cmpq	$0, -32(%rbp)
	jne	.L4
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	rsa_mod_exp, .-rsa_mod_exp
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
