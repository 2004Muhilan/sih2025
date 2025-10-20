	.file	"md5_round4.c"
	.text
	.p2align 4
	.globl	md5_round4
	.type	md5_round4, @function
md5_round4:
.LFB0:
	.cfi_startproc
	endbr64
	movl	%ecx, %eax
	addl	8(%rsp), %r8d
	addl	(%rdi), %r8d
	movl	%r9d, %ecx
	notl	%eax
	orl	%esi, %eax
	xorl	%edx, %eax
	addl	%eax, %r8d
	sall	%cl, %r8d
	addl	%esi, %r8d
	movl	%r8d, (%rdi)
	ret
	.cfi_endproc
.LFE0:
	.size	md5_round4, .-md5_round4
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
