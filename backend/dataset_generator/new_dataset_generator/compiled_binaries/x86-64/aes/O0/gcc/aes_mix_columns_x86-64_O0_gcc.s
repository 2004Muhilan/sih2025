	.file	"aes_mix_columns.c"
	.text
	.type	gf_mul, @function
gf_mul:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %edx
	movl	%esi, %eax
	movb	%dl, -20(%rbp)
	movb	%al, -24(%rbp)
	movb	$0, -6(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L2
.L5:
	movzbl	-24(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L3
	movzbl	-20(%rbp), %eax
	xorb	%al, -6(%rbp)
.L3:
	movzbl	-20(%rbp), %eax
	andl	$-128, %eax
	movb	%al, -5(%rbp)
	salb	-20(%rbp)
	cmpb	$0, -5(%rbp)
	je	.L4
	xorb	$27, -20(%rbp)
.L4:
	shrb	-24(%rbp)
	addl	$1, -4(%rbp)
.L2:
	cmpl	$7, -4(%rbp)
	jle	.L5
	movzbl	-6(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	gf_mul, .-gf_mul
	.globl	aes_mix_columns
	.type	aes_mix_columns, @function
aes_mix_columns:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -32(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L8
.L9:
	movl	-20(%rbp), %eax
	sall	$2, %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -24(%rbp)
	movq	-16(%rbp), %rax
	movzbl	1(%rax), %eax
	movb	%al, -23(%rbp)
	movq	-16(%rbp), %rax
	movzbl	2(%rax), %eax
	movb	%al, -22(%rbp)
	movq	-16(%rbp), %rax
	movzbl	3(%rax), %eax
	movb	%al, -21(%rbp)
	movzbl	-24(%rbp), %eax
	movl	$2, %esi
	movl	%eax, %edi
	call	gf_mul
	movl	%eax, %ebx
	movzbl	-23(%rbp), %eax
	movl	$3, %esi
	movl	%eax, %edi
	call	gf_mul
	xorl	%ebx, %eax
	xorb	-22(%rbp), %al
	xorb	-21(%rbp), %al
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movb	%dl, (%rax)
	movzbl	-23(%rbp), %eax
	movl	$2, %esi
	movl	%eax, %edi
	call	gf_mul
	xorb	-24(%rbp), %al
	movl	%eax, %ebx
	movzbl	-22(%rbp), %eax
	movl	$3, %esi
	movl	%eax, %edi
	call	gf_mul
	xorl	%ebx, %eax
	movq	-16(%rbp), %rdx
	addq	$1, %rdx
	xorb	-21(%rbp), %al
	movb	%al, (%rdx)
	movzbl	-24(%rbp), %eax
	xorb	-23(%rbp), %al
	movl	%eax, %ebx
	movzbl	-22(%rbp), %eax
	movl	$2, %esi
	movl	%eax, %edi
	call	gf_mul
	xorl	%eax, %ebx
	movzbl	-21(%rbp), %eax
	movl	$3, %esi
	movl	%eax, %edi
	call	gf_mul
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	addq	$2, %rax
	xorl	%ebx, %edx
	movb	%dl, (%rax)
	movzbl	-24(%rbp), %eax
	movl	$3, %esi
	movl	%eax, %edi
	call	gf_mul
	xorb	-23(%rbp), %al
	xorb	-22(%rbp), %al
	movl	%eax, %ebx
	movzbl	-21(%rbp), %eax
	movl	$2, %esi
	movl	%eax, %edi
	call	gf_mul
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	addq	$3, %rax
	xorl	%ebx, %edx
	movb	%dl, (%rax)
	addl	$1, -20(%rbp)
.L8:
	cmpl	$3, -20(%rbp)
	jle	.L9
	nop
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	aes_mix_columns, .-aes_mix_columns
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
