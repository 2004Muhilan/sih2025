	.file	"sha1_padding.c"
	.text
	.globl	sha1_padding
	.type	sha1_padding, @function
sha1_padding:
.LFB14:
	.cfi_startproc
	endbr64
	movq	%rsi, %r8
	movq	%rdi, %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	movq	%r8, %rcx
	leaq	1(%rdx,%r8), %r9
	xorl	%eax, %eax
	rep movsb
	movl	$55, %esi
	movq	%r9, %rdi
	movb	$-128, (%rdx,%r8)
	subq	%r8, %rsi
	andl	$63, %esi
	movq	%rsi, %rcx
	rep stosb
	leaq	0(,%r8,8), %rdi
	addq	%rsi, %r8
	movl	$56, %ecx
	addq	%r8, %rdx
.L2:
	movq	%rdi, %rax
	incq	%rdx
	shrq	%cl, %rax
	subl	$8, %ecx
	movb	%al, (%rdx)
	cmpl	$-8, %ecx
	jne	.L2
	ret
	.cfi_endproc
.LFE14:
	.size	sha1_padding, .-sha1_padding
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
