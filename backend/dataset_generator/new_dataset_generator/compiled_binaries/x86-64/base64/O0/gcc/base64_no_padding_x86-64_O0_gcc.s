	.file	"base64_no_padding.c"
	.text
	.section	.rodata
	.align 32
	.type	b64, @object
	.size	b64, 65
b64:
	.string	"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
	.text
	.globl	base64_encode_no_padding
	.type	base64_encode_no_padding, @function
base64_encode_no_padding:
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
.L7:
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rax
	addq	$1, %rax
	cmpq	-48(%rbp), %rax
	jnb	.L3
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, -20(%rbp)
.L3:
	movq	-8(%rbp), %rax
	addq	$2, %rax
	cmpq	-48(%rbp), %rax
	jnb	.L4
	movq	-8(%rbp), %rax
	leaq	2(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, -20(%rbp)
.L4:
	movl	-20(%rbp), %eax
	shrl	$18, %eax
	andl	$63, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
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
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movq	-56(%rbp), %rdx
	addq	%rax, %rdx
	movl	%ecx, %ecx
	leaq	b64(%rip), %rax
	movzbl	(%rcx,%rax), %eax
	movb	%al, (%rdx)
	movq	-8(%rbp), %rax
	addq	$1, %rax
	cmpq	-48(%rbp), %rax
	jnb	.L5
	movl	-20(%rbp), %eax
	shrl	$6, %eax
	andl	$63, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movq	-56(%rbp), %rdx
	addq	%rax, %rdx
	movl	%ecx, %ecx
	leaq	b64(%rip), %rax
	movzbl	(%rcx,%rax), %eax
	movb	%al, (%rdx)
.L5:
	movq	-8(%rbp), %rax
	addq	$2, %rax
	cmpq	-48(%rbp), %rax
	jnb	.L6
	movl	-20(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movq	-56(%rbp), %rdx
	addq	%rax, %rdx
	movl	%ecx, %ecx
	leaq	b64(%rip), %rax
	movzbl	(%rcx,%rax), %eax
	movb	%al, (%rdx)
.L6:
	addq	$3, -8(%rbp)
.L2:
	movq	-8(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jb	.L7
	movq	-56(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	base64_encode_no_padding, .-base64_encode_no_padding
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
