	.file	"rsa_extended_gcd.c"
	.text
	.globl	rsa_extended_gcd
	.type	rsa_extended_gcd, @function
rsa_extended_gcd:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	cmpq	$0, -40(%rbp)
	jne	.L2
	movq	-56(%rbp), %rax
	movq	$0, (%rax)
	movq	-64(%rbp), %rax
	movq	$1, (%rax)
	movq	-48(%rbp), %rax
	jmp	.L4
.L2:
	movq	-48(%rbp), %rax
	cqto
	idivq	-40(%rbp)
	movq	%rdx, %rdi
	leaq	-24(%rbp), %rcx
	leaq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	call	rsa_extended_gcd
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rcx
	movq	-48(%rbp), %rax
	cqto
	idivq	-40(%rbp)
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	imulq	%rdx, %rax
	subq	%rax, %rcx
	movq	%rcx, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
.L4:
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L5
	call	__stack_chk_fail@PLT
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	rsa_extended_gcd, .-rsa_extended_gcd
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
