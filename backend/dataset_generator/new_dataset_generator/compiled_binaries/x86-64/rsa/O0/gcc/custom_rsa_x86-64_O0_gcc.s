	.file	"custom_rsa.c"
	.text
	.globl	mod_exp
	.type	mod_exp, @function
mod_exp:
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
	shrq	-32(%rbp)
	movq	-24(%rbp), %rax
	imulq	%rax, %rax
	movl	$0, %edx
	divq	-40(%rbp)
	movq	%rdx, -24(%rbp)
.L2:
	cmpq	$0, -32(%rbp)
	jne	.L4
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	mod_exp, .-mod_exp
	.globl	extended_gcd
	.type	extended_gcd, @function
extended_gcd:
.LFB1:
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
	jne	.L7
	movq	-56(%rbp), %rax
	movq	$0, (%rax)
	movq	-64(%rbp), %rax
	movq	$1, (%rax)
	movq	-48(%rbp), %rax
	jmp	.L9
.L7:
	movq	-48(%rbp), %rax
	cqto
	idivq	-40(%rbp)
	movq	%rdx, %rdi
	leaq	-24(%rbp), %rcx
	leaq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	call	extended_gcd
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
.L9:
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L10
	call	__stack_chk_fail@PLT
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	extended_gcd, .-extended_gcd
	.globl	rsa_encrypt
	.type	rsa_encrypt, @function
rsa_encrypt:
.LFB2:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mod_exp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	rsa_encrypt, .-rsa_encrypt
	.globl	rsa_decrypt
	.type	rsa_decrypt, @function
rsa_decrypt:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mod_exp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	rsa_decrypt, .-rsa_decrypt
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
