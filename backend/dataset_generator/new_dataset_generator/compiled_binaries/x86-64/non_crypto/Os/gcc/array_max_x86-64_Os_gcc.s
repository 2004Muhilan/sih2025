	.file	"array_max.c"
	.text
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
	movl	$1, %edx
.L3:
	cmpq	%rsi, %rdx
	je	.L1
	movl	(%rdi,%rdx,4), %ecx
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	incq	%rdx
	jmp	.L3
.L1:
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
