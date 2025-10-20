	.file	"md5_round1.c"
	.text
	.p2align 4
	.globl	md5_round1
	.type	md5_round1, @function
md5_round1:
.LFB0:
	.cfi_startproc
	endbr64
	xorl	%ecx, %edx
	addl	8(%rsp), %r8d
	addl	(%rdi), %r8d
	andl	%esi, %edx
	xorl	%ecx, %edx
	movl	%r9d, %ecx
	addl	%edx, %r8d
	sall	%cl, %r8d
	addl	%esi, %r8d
	movl	%r8d, (%rdi)
	ret
	.cfi_endproc
.LFE0:
	.size	md5_round1, .-md5_round1
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
