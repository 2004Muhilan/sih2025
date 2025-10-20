	.file	"sha1_padding.c"
	.text
	.p2align 4
	.globl	sha1_padding
	.type	sha1_padding, @function
sha1_padding:
.LFB14:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdx, %rcx
	movq	%rsi, %rbx
	movq	%rsi, %rdx
	movq	%rdi, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	leaq	1(%rbx), %rdi
	movq	%rax, %rcx
	movb	$-128, (%rax,%rbx)
	movl	$55, %eax
	subq	%rbx, %rax
	leaq	(%rcx,%rdi), %rdx
	andl	$63, %eax
	cmpl	$8, %eax
	jnb	.L2
	testb	$4, %al
	jne	.L16
	testl	%eax, %eax
	je	.L3
	movb	$0, (%rdx)
	testb	$2, %al
	jne	.L17
.L3:
	addq	%rax, %rdi
	leaq	0(,%rbx,8), %rsi
	leaq	(%rcx,%rdi), %rax
	movl	$56, %ecx
	.p2align 4,,10
	.p2align 3
.L8:
	movq	%rsi, %rdx
	addq	$1, %rax
	shrq	%cl, %rdx
	subl	$8, %ecx
	movb	%dl, -1(%rax)
	cmpl	$-8, %ecx
	jne	.L8
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2:
	.cfi_restore_state
	leaq	8(%rdx), %r8
	movq	$0, (%rdx)
	movq	$0, -8(%rax,%rdx)
	andq	$-8, %r8
	subq	%r8, %rdx
	addl	%eax, %edx
	andl	$-8, %edx
	cmpl	$8, %edx
	jb	.L3
	xorl	%r10d, %r10d
	andl	$-8, %edx
	xorl	%esi, %esi
.L6:
	movl	%esi, %r9d
	addl	$8, %esi
	movq	%r10, (%r8,%r9)
	cmpl	%edx, %esi
	jb	.L6
	jmp	.L3
.L16:
	movl	$0, (%rdx)
	movl	$0, -4(%rax,%rdx)
	jmp	.L3
.L17:
	xorl	%esi, %esi
	movw	%si, -2(%rax,%rdx)
	jmp	.L3
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
