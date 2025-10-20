	.file	"custom_base64.c"
	.text
	.section	.rodata
	.align 32
	.type	b64, @object
	.size	b64, 65
b64:
	.string	"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
	.text
	.globl	base64_encode
	.type	base64_encode, @function
base64_encode:
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
	movq	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L2
.L9:
	movq	-16(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jnb	.L3
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movq	-40(%rbp), %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	jmp	.L4
.L3:
	movl	$0, %eax
.L4:
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jnb	.L5
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movq	-40(%rbp), %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	jmp	.L6
.L5:
	movl	$0, %eax
.L6:
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jnb	.L7
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movq	-40(%rbp), %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	jmp	.L8
.L7:
	movl	$0, %eax
.L8:
	movl	%eax, -24(%rbp)
	movl	-32(%rbp), %eax
	sall	$16, %eax
	movl	%eax, %edx
	movl	-28(%rbp), %eax
	sall	$8, %eax
	addl	%eax, %edx
	movl	-24(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	shrl	$18, %eax
	andl	$63, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	-56(%rbp), %rdx
	addq	%rax, %rdx
	movl	%ecx, %ecx
	leaq	b64(%rip), %rax
	movzbl	(%rcx,%rax), %eax
	movb	%al, (%rdx)
	movl	-20(%rbp), %eax
	shrl	$12, %eax
	andl	$63, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	-56(%rbp), %rdx
	addq	%rax, %rdx
	movl	%ecx, %ecx
	leaq	b64(%rip), %rax
	movzbl	(%rcx,%rax), %eax
	movb	%al, (%rdx)
	movl	-20(%rbp), %eax
	shrl	$6, %eax
	andl	$63, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	-56(%rbp), %rdx
	addq	%rax, %rdx
	movl	%ecx, %ecx
	leaq	b64(%rip), %rax
	movzbl	(%rcx,%rax), %eax
	movb	%al, (%rdx)
	movl	-20(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	-56(%rbp), %rdx
	addq	%rax, %rdx
	movl	%ecx, %ecx
	leaq	b64(%rip), %rax
	movzbl	(%rcx,%rax), %eax
	movb	%al, (%rdx)
.L2:
	movq	-16(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jb	.L9
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	base64_encode, .-base64_encode
	.globl	base64_decode
	.type	base64_decode, @function
base64_decode:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L11
.L12:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	addl	$1, -4(%rbp)
.L11:
	cmpl	$3, -4(%rbp)
	jle	.L12
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	base64_decode, .-base64_decode
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
