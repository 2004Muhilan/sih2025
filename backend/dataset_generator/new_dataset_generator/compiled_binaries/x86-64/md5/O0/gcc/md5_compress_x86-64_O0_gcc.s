	.file	"md5_compress.c"
	.text
	.globl	md5_compress
	.type	md5_compress, @function
md5_compress:
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
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -28(%rbp)
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -20(%rbp)
	movq	-40(%rbp), %rax
	movl	12(%rax), %eax
	movl	%eax, -16(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L2
.L3:
	movl	-24(%rbp), %eax
	andl	-20(%rbp), %eax
	movl	%eax, %edx
	movl	-24(%rbp), %eax
	notl	%eax
	andl	-16(%rbp), %eax
	orl	%edx, %eax
	movl	%eax, -8(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-28(%rbp), %edx
	movl	-8(%rbp), %eax
	addl	%eax, %edx
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-48(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	sall	$7, %eax
	addl	%eax, -24(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, -28(%rbp)
	addl	$1, -12(%rbp)
.L2:
	cmpl	$15, -12(%rbp)
	jle	.L3
	movq	-40(%rbp), %rax
	movl	(%rax), %edx
	movl	-28(%rbp), %eax
	addl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	movq	-40(%rbp), %rax
	addq	$4, %rax
	movl	(%rax), %ecx
	movq	-40(%rbp), %rax
	addq	$4, %rax
	movl	-24(%rbp), %edx
	addl	%ecx, %edx
	movl	%edx, (%rax)
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %ecx
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movl	-20(%rbp), %edx
	addl	%ecx, %edx
	movl	%edx, (%rax)
	movq	-40(%rbp), %rax
	addq	$12, %rax
	movl	(%rax), %ecx
	movq	-40(%rbp), %rax
	addq	$12, %rax
	movl	-16(%rbp), %edx
	addl	%ecx, %edx
	movl	%edx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	md5_compress, .-md5_compress
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
