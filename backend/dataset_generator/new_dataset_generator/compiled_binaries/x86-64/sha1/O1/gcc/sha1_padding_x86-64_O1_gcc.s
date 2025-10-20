	.file	"sha1_padding.c"
	.text
	.globl	sha1_padding
	.type	sha1_padding, @function
sha1_padding:
.LFB14:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	%rsi, %rbp
	movq	%rdx, %rbx
	movq	%rsi, %rdx
	movq	%rdi, %rsi
	movq	%rbx, %rdi
	call	memcpy@PLT
	movb	$-128, (%rbx,%rbp)
	movl	$55, %eax
	subq	%rbp, %rax
	andl	$63, %eax
	leaq	1(%rbp), %rdi
	leaq	(%rbx,%rdi), %rdx
	cmpl	$8, %eax
	jnb	.L2
	testb	$4, %al
	jne	.L12
	testl	%eax, %eax
	je	.L3
	movb	$0, (%rdx)
	testb	$2, %al
	je	.L3
	movw	$0, -2(%rax,%rdx)
	jmp	.L3
.L12:
	movl	$0, (%rdx)
	movl	$0, -4(%rax,%rdx)
	jmp	.L3
.L2:
	movl	$0, %r9d
	movq	$0, (%rdx)
	movq	$0, -8(%rax,%rdx)
	leaq	8(%rdx), %rsi
	andq	$-8, %rsi
	subq	%rsi, %rdx
	addl	%eax, %edx
	andl	$-8, %edx
	cmpl	$8, %edx
	jb	.L3
	andl	$-8, %edx
	movl	$0, %ecx
.L6:
	movl	%ecx, %r8d
	movq	%r9, (%rsi,%r8)
	addl	$8, %ecx
	cmpl	%edx, %ecx
	jb	.L6
.L3:
	leaq	0(,%rbp,8), %rsi
	addq	%rax, %rdi
	leaq	(%rbx,%rdi), %rax
	movl	$56, %ecx
.L8:
	movq	%rsi, %rdx
	shrq	%cl, %rdx
	movb	%dl, (%rax)
	subl	$8, %ecx
	addq	$1, %rax
	cmpl	$-8, %ecx
	jne	.L8
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
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
