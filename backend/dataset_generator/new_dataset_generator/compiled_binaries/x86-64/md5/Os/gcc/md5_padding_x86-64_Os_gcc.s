	.file	"md5_padding.c"
	.text
	.globl	md5_padding
	.type	md5_padding, @function
md5_padding:
.LFB14:
	.cfi_startproc
	endbr64
	movq	%rsi, %r8
	movq	%rdi, %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	movq	%r8, %rcx
	xorl	%eax, %eax
	rep movsb
	movl	$55, %esi
	movb	$-128, (%rdx,%r8)
	leaq	1(%rdx,%r8), %rdx
	subq	%r8, %rsi
	movq	%rdx, %rdi
	salq	$3, %r8
	andl	$63, %esi
	movq	%rsi, %rcx
	rep stosb
	movq	%r8, (%rdx,%rsi)
	ret
	.cfi_endproc
.LFE14:
	.size	md5_padding, .-md5_padding
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
