	.file	"custom_md5.c"
	.text
	.globl	md5_transform
	.type	md5_transform, @function
md5_transform:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-136(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -116(%rbp)
	movq	-136(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -112(%rbp)
	movq	-136(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -108(%rbp)
	movq	-136(%rbp), %rax
	movl	12(%rax), %eax
	movl	%eax, -104(%rbp)
	movl	$0, -100(%rbp)
	movl	$0, -96(%rbp)
	jmp	.L2
.L3:
	movl	-96(%rbp), %eax
	movslq	%eax, %rdx
	movq	-144(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	-96(%rbp), %edx
	movslq	%edx, %rdx
	leaq	1(%rdx), %rcx
	movq	-144(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	orl	%eax, %edx
	movl	-96(%rbp), %eax
	cltq
	leaq	2(%rax), %rcx
	movq	-144(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, %edx
	movl	-96(%rbp), %eax
	cltq
	leaq	3(%rax), %rcx
	movq	-144(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	orl	%edx, %eax
	movl	%eax, %edx
	movl	-100(%rbp), %eax
	cltq
	movl	%edx, -80(%rbp,%rax,4)
	addl	$1, -100(%rbp)
	addl	$4, -96(%rbp)
.L2:
	cmpl	$15, -100(%rbp)
	jle	.L3
	movl	$0, -92(%rbp)
	jmp	.L4
.L5:
	movl	-112(%rbp), %eax
	andl	-108(%rbp), %eax
	movl	%eax, %edx
	movl	-112(%rbp), %eax
	notl	%eax
	andl	-104(%rbp), %eax
	orl	%edx, %eax
	movl	%eax, -88(%rbp)
	movl	-104(%rbp), %eax
	movl	%eax, -84(%rbp)
	movl	-108(%rbp), %eax
	movl	%eax, -104(%rbp)
	movl	-112(%rbp), %eax
	movl	%eax, -108(%rbp)
	movl	-116(%rbp), %edx
	movl	-88(%rbp), %eax
	addl	%eax, %edx
	movl	-92(%rbp), %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	roll	$7, %eax
	addl	%eax, -112(%rbp)
	movl	-84(%rbp), %eax
	movl	%eax, -116(%rbp)
	addl	$1, -92(%rbp)
.L4:
	cmpl	$15, -92(%rbp)
	jle	.L5
	movq	-136(%rbp), %rax
	movl	(%rax), %edx
	movl	-116(%rbp), %eax
	addl	%eax, %edx
	movq	-136(%rbp), %rax
	movl	%edx, (%rax)
	movq	-136(%rbp), %rax
	addq	$4, %rax
	movl	(%rax), %ecx
	movq	-136(%rbp), %rax
	addq	$4, %rax
	movl	-112(%rbp), %edx
	addl	%ecx, %edx
	movl	%edx, (%rax)
	movq	-136(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %ecx
	movq	-136(%rbp), %rax
	addq	$8, %rax
	movl	-108(%rbp), %edx
	addl	%ecx, %edx
	movl	%edx, (%rax)
	movq	-136(%rbp), %rax
	addq	$12, %rax
	movl	(%rax), %ecx
	movq	-136(%rbp), %rax
	addq	$12, %rax
	movl	-104(%rbp), %edx
	addl	%ecx, %edx
	movl	%edx, (%rax)
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L6
	call	__stack_chk_fail@PLT
.L6:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	md5_transform, .-md5_transform
	.globl	md5_init
	.type	md5_init, @function
md5_init:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$1732584193, (%rax)
	movq	-8(%rbp), %rax
	movl	$-271733879, 4(%rax)
	movq	-8(%rbp), %rax
	movl	$-1732584194, 8(%rax)
	movq	-8(%rbp), %rax
	movl	$271733878, 12(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	md5_init, .-md5_init
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
