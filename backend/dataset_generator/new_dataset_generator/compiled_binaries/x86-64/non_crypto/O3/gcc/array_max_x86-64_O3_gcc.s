	.file	"array_max.c"
	.text
	.p2align 4
	.globl	array_max
	.type	array_max, @function
array_max:
.LFB0:
	.cfi_startproc
	endbr64
	movq	%rsi, %rdx
	xorl	%eax, %eax
	testq	%rsi, %rsi
	je	.L1
	movl	(%rdi), %eax
	cmpq	$1, %rsi
	je	.L1
	leaq	-1(%rsi), %rcx
	leaq	-2(%rsi), %rsi
	cmpq	$2, %rsi
	jbe	.L8
	movq	%rcx, %rsi
	movd	%eax, %xmm3
	movq	%rdi, %rax
	shrq	$2, %rsi
	pshufd	$0, %xmm3, %xmm0
	salq	$4, %rsi
	addq	%rdi, %rsi
	.p2align 4,,10
	.p2align 3
.L4:
	movdqu	4(%rax), %xmm1
	addq	$16, %rax
	movdqa	%xmm1, %xmm2
	pcmpgtd	%xmm0, %xmm2
	pand	%xmm2, %xmm1
	pandn	%xmm0, %xmm2
	movdqa	%xmm2, %xmm0
	por	%xmm1, %xmm0
	cmpq	%rsi, %rax
	jne	.L4
	movdqa	%xmm0, %xmm2
	psrldq	$8, %xmm2
	movdqa	%xmm2, %xmm1
	pcmpgtd	%xmm0, %xmm1
	pand	%xmm1, %xmm2
	pandn	%xmm0, %xmm1
	por	%xmm2, %xmm1
	movdqa	%xmm1, %xmm2
	psrldq	$4, %xmm2
	movdqa	%xmm2, %xmm0
	pcmpgtd	%xmm1, %xmm0
	pand	%xmm0, %xmm2
	pandn	%xmm1, %xmm0
	por	%xmm2, %xmm0
	movd	%xmm0, %eax
	testb	$3, %cl
	je	.L1
	andq	$-4, %rcx
	addq	$1, %rcx
.L3:
	movl	(%rdi,%rcx,4), %esi
	leaq	0(,%rcx,4), %r8
	cmpl	%esi, %eax
	cmovl	%esi, %eax
	leaq	1(%rcx), %rsi
	cmpq	%rdx, %rsi
	jnb	.L1
	movl	4(%rdi,%r8), %esi
	cmpl	%esi, %eax
	cmovl	%esi, %eax
	addq	$2, %rcx
	cmpq	%rdx, %rcx
	jnb	.L1
	movl	8(%rdi,%r8), %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
.L1:
	ret
.L8:
	movl	$1, %ecx
	jmp	.L3
	.cfi_endproc
.LFE0:
	.size	array_max, .-array_max
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
