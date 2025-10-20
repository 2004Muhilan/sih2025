	.file	"rsa_modular_exponentiation.c"
	.text
	.globl	rsa_mod_exp
	.type	rsa_mod_exp, @function
rsa_mod_exp:
.LFB0:
	.cfi_startproc
	endbr64
	movq	%rdi, %rax
	movq	%rdx, %rcx
	xorl	%edx, %edx
	movl	$1, %edi
	divq	%rcx
	movq	%rdx, %r8
.L2:
	testq	%rsi, %rsi
	je	.L9
	testl	$1, %esi
	je	.L3
	movq	%rdi, %rax
	xorl	%edx, %edx
	imulq	%r8, %rax
	divq	%rcx
	movq	%rdx, %rdi
.L3:
	imulq	%r8, %r8
	xorl	%edx, %edx
	shrq	%rsi
	movq	%r8, %rax
	divq	%rcx
	movq	%rdx, %r8
	jmp	.L2
.L9:
	movq	%rdi, %rax
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
