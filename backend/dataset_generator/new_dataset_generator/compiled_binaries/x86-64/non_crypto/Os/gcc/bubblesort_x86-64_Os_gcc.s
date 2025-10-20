	.file	"bubblesort.c"
	.text
	.globl	bubblesort
	.type	bubblesort, @function
bubblesort:
.LFB0:
	.cfi_startproc
	endbr64
.L7:
	decq	%rsi
	testq	%rsi, %rsi
	je	.L9
	xorl	%eax, %eax
.L4:
	movl	(%rdi,%rax,4), %edx
	incq	%rax
	movl	(%rdi,%rax,4), %ecx
	cmpl	%ecx, %edx
	jle	.L3
	movl	%ecx, -4(%rdi,%rax,4)
	movl	%edx, (%rdi,%rax,4)
.L3:
	cmpq	%rsi, %rax
	jb	.L4
	jmp	.L7
.L9:
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
