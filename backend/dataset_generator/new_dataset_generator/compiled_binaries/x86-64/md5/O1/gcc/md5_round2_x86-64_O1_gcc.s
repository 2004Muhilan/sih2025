	.file	"md5_round2.c"
	.text
	.globl	md5_round2
	.type	md5_round2, @function
md5_round2:
.LFB0:
	.cfi_startproc
	endbr64
	movl	%esi, %eax
	xorl	%edx, %eax
	andl	%ecx, %eax
	xorl	%edx, %eax
	addl	8(%rsp), %r8d
	addl	(%rdi), %r8d
	addl	%eax, %r8d
	movl	%r9d, %ecx
	sall	%cl, %r8d
	addl	%esi, %r8d
	movl	%r8d, (%rdi)
	ret
	.cfi_endproc
.LFE0:
	.size	md5_round2, .-md5_round2
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
