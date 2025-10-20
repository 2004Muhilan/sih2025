	.file	"aes_mix_columns.c"
	.text
	.type	gf_mul, @function
gf_mul:
.LFB0:
	.cfi_startproc
	movl	$8, %edx
	movl	$0, %ecx
.L3:
	movl	%esi, %eax
	andl	$1, %eax
	negl	%eax
	andl	%edi, %eax
	xorl	%eax, %ecx
	leal	(%rdi,%rdi), %eax
	movl	%eax, %r8d
	xorl	$27, %r8d
	testb	%dil, %dil
	cmovs	%r8d, %eax
	movl	%eax, %edi
	shrb	%sil
	subl	$1, %edx
	jne	.L3
	movl	%ecx, %eax
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
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$16, %rsp
	.cfi_def_cfa_offset 72
	movq	%rdi, %rbx
	leaq	16(%rdi), %rax
	movq	%rax, 8(%rsp)
.L7:
	movzbl	(%rbx), %r13d
	movzbl	1(%rbx), %r12d
	movzbl	2(%rbx), %eax
	movb	%al, 6(%rsp)
	movzbl	3(%rbx), %ebp
	movzbl	%r13b, %r14d
	movl	$2, %esi
	movl	%r14d, %edi
	call	gf_mul
	movb	%al, 7(%rsp)
	movzbl	%r12b, %r15d
	movl	$3, %esi
	movl	%r15d, %edi
	call	gf_mul
	xorb	7(%rsp), %al
	xorb	6(%rsp), %al
	xorl	%ebp, %eax
	movb	%al, (%rbx)
	movl	$2, %esi
	movl	%r15d, %edi
	call	gf_mul
	movb	%al, 7(%rsp)
	movzbl	6(%rsp), %r15d
	movl	$3, %esi
	movl	%r15d, %edi
	call	gf_mul
	xorb	7(%rsp), %al
	xorl	%r13d, %eax
	xorl	%ebp, %eax
	movb	%al, 1(%rbx)
	movl	$2, %esi
	movl	%r15d, %edi
	call	gf_mul
	movl	%eax, %r15d
	movzbl	%bpl, %ebp
	movl	$3, %esi
	movl	%ebp, %edi
	call	gf_mul
	xorl	%eax, %r15d
	xorl	%r13d, %r15d
	xorl	%r12d, %r15d
	movb	%r15b, 2(%rbx)
	movl	$3, %esi
	movl	%r14d, %edi
	call	gf_mul
	movl	%eax, %r13d
	movl	$2, %esi
	movl	%ebp, %edi
	call	gf_mul
	xorl	%eax, %r13d
	xorl	%r12d, %r13d
	xorb	6(%rsp), %r13b
	movb	%r13b, 3(%rbx)
	addq	$4, %rbx
	movq	8(%rsp), %rax
	cmpq	%rax, %rbx
	jne	.L7
	addq	$16, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
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
