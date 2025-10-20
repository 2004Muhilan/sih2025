	.file	"aes_key_expansion.c"
	.text
	.section	.rodata
	.align 8
	.type	rcon, @object
	.size	rcon, 10
rcon:
	.ascii	"\001\002\004\b\020 @\200\0336"
	.text
	.globl	aes_key_expansion
	.type	aes_key_expansion, @function
aes_key_expansion:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -28(%rbp)
	jmp	.L2
.L3:
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rcx
	movq	-48(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addl	$1, -28(%rbp)
.L2:
	cmpl	$15, -28(%rbp)
	jle	.L3
	movl	$1, -24(%rbp)
	jmp	.L4
.L9:
	movl	$0, -20(%rbp)
	jmp	.L5
.L6:
	movl	-24(%rbp), %eax
	subl	$1, %eax
	sall	$4, %eax
	leal	12(%rax), %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movl	-20(%rbp), %eax
	cltq
	movb	%dl, -12(%rbp,%rax)
	addl	$1, -20(%rbp)
.L5:
	cmpl	$3, -20(%rbp)
	jle	.L6
	movzbl	-12(%rbp), %eax
	movb	%al, -29(%rbp)
	movzbl	-11(%rbp), %eax
	movb	%al, -12(%rbp)
	movzbl	-10(%rbp), %eax
	movb	%al, -11(%rbp)
	movzbl	-9(%rbp), %eax
	movb	%al, -10(%rbp)
	movzbl	-29(%rbp), %eax
	movb	%al, -9(%rbp)
	movzbl	-12(%rbp), %ecx
	movl	-24(%rbp), %eax
	subl	$1, %eax
	cltq
	leaq	rcon(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	xorl	%ecx, %eax
	movb	%al, -12(%rbp)
	movl	$0, -16(%rbp)
	jmp	.L7
.L8:
	movl	-24(%rbp), %eax
	subl	$1, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	-16(%rbp), %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %esi
	movl	-16(%rbp), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$30, %eax
	addl	%eax, %edx
	andl	$3, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	cltq
	movzbl	-12(%rbp,%rax), %ecx
	movl	-24(%rbp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	-16(%rbp), %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	xorl	%ecx, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
	addl	$1, -16(%rbp)
.L7:
	cmpl	$15, -16(%rbp)
	jle	.L8
	addl	$1, -24(%rbp)
.L4:
	cmpl	$10, -24(%rbp)
	jle	.L9
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L10
	call	__stack_chk_fail@PLT
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	aes_key_expansion, .-aes_key_expansion
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
