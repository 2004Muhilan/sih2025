	.file	"fibonacci.c"
	.text
	.p2align 4
	.globl	fibonacci
	.type	fibonacci, @function
fibonacci:
.LFB0:
	.cfi_startproc
	endbr64
	movl	%edi, %eax
	cmpl	$1, %edi
	jbe	.L1
	movl	$2, %edx
	movl	$1, %eax
	xorl	%ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L3:
	movl	%eax, %esi
	addl	$1, %edx
	addl	%ecx, %eax
	movl	%esi, %ecx
	cmpl	%edx, %edi
	jnb	.L3
.L1:
	ret
	.cfi_endproc
.LFE0:
	.size	fibonacci, .-fibonacci
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
