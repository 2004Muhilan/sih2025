	.file	"bubblesort.c"
	.text
	.globl	bubblesort
	.type	bubblesort, @function
bubblesort:
.LFB0:
	.cfi_startproc
	endbr64
	cmpq	$1, %rsi
	je	.L1
	leaq	-4(%rdi,%rsi,4), %r8
	jmp	.L3
.L4:
	addq	$4, %rax
	cmpq	%r8, %rax
	je	.L7
.L5:
	movl	(%rax), %edx
	movl	4(%rax), %ecx
	cmpl	%ecx, %edx
	jle	.L4
	movl	%ecx, (%rax)
	movl	%edx, 4(%rax)
	jmp	.L4
.L7:
	subq	$1, %rsi
	subq	$4, %r8
	cmpq	$1, %rsi
	je	.L1
.L3:
	movq	%rdi, %rax
	jmp	.L5
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
