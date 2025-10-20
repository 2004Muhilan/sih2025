	.file	"rsa_crt.c"
	.text
	.globl	rsa_crt_decrypt
	.type	rsa_crt_decrypt, @function
rsa_crt_decrypt:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	-56(%rbp), %rax
	leaq	-1(%rax), %rcx
	movq	-48(%rbp), %rax
	movl	$0, %edx
	divq	%rcx
	movq	%rdx, -32(%rbp)
	movq	-64(%rbp), %rax
	leaq	-1(%rax), %rcx
	movq	-48(%rbp), %rax
	movl	$0, %edx
	divq	%rcx
	movq	%rdx, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	$0, %edx
	divq	-56(%rbp)
	movq	%rdx, -16(%rbp)
	movq	-40(%rbp), %rax
	movl	$0, %edx
	divq	-64(%rbp)
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rax
	imulq	-64(%rbp), %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	imulq	-56(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-56(%rbp), %rax
	imulq	-64(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rax
	movl	$0, %edx
	divq	%rsi
	movq	%rdx, %rcx
	movq	%rcx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	rsa_crt_decrypt, .-rsa_crt_decrypt
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
