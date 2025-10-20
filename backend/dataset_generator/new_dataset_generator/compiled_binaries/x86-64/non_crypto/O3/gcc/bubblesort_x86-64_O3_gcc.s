	.file	"bubblesort.c"
	.text
	.p2align 4
	.globl	bubblesort
	.type	bubblesort, @function
bubblesort:
.LFB0:
	.cfi_startproc
	endbr64
	cmpq	$1, %rsi
	je	.L1
	leaq	-4(%rdi,%rsi,4), %r8
	.p2align 4,,10
	.p2align 3
.L5:
	movq	%rdi, %rax
	.p2align 4,,10
	.p2align 3
.L4:
	movq	(%rax), %xmm0
	pshufd	$0xe5, %xmm0, %xmm1
	movd	%xmm0, %edx
	movd	%xmm1, %ecx
	cmpl	%edx, %ecx
	jge	.L3
	pshufd	$225, %xmm0, %xmm0
	movq	%xmm0, (%rax)
.L3:
	addq	$4, %rax
	cmpq	%r8, %rax
	jne	.L4
	subq	$1, %rsi
	subq	$4, %r8
	cmpq	$1, %rsi
	jne	.L5
.L1:
	ret
	.cfi_endproc
.LFE0:
	.size	bubblesort, .-bubblesort
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
