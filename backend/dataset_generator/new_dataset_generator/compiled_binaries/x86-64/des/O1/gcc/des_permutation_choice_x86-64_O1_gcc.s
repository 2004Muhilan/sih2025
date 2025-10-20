	.file	"des_permutation_choice.c"
	.text
	.globl	des_pc1
	.type	des_pc1, @function
des_pc1:
.LFB0:
	.cfi_startproc
	endbr64
	movl	$55, %edx
	movl	$0, %esi
.L2:
	leal	9(%rdx), %ecx
	movq	%rdi, %rax
	shrq	%cl, %rax
	andl	$1, %eax
	movl	%edx, %ecx
	salq	%cl, %rax
	orq	%rax, %rsi
	subl	$1, %edx
	cmpl	$-1, %edx
	jne	.L2
	movq	%rsi, %rax
	ret
	.cfi_endproc
.LFE0:
	.size	des_pc1, .-des_pc1
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
