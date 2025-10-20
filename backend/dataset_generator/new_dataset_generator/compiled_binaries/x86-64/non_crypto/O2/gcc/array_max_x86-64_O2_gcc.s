	.file	"array_max.c"
	.text
	.p2align 4
	.globl	array_max
	.type	array_max, @function
array_max:
.LFB0:
	.cfi_startproc
	endbr64
	xorl	%eax, %eax
	testq	%rsi, %rsi
	je	.L1
	movl	(%rdi), %eax
	cmpq	$1, %rsi
	je	.L1
	leaq	(%rdi,%rsi,4), %rsi
	leaq	4(%rdi), %rdx
	movq	%rsi, %rcx
	subq	%rdx, %rcx
	andl	$4, %ecx
	je	.L3
	movl	(%rdx), %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	leaq	8(%rdi), %rdx
	cmpq	%rsi, %rdx
	je	.L16
	.p2align 4,,10
	.p2align 3
.L3:
	movl	(%rdx), %ecx
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	movl	4(%rdx), %ecx
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	addq	$8, %rdx
	cmpq	%rsi, %rdx
	jne	.L3
.L1:
	ret
.L16:
	ret
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
