	.file	"md5_padding.c"
	.text
	.globl	md5_padding
	.type	md5_padding, @function
md5_padding:
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
	movq	%rsi, %rbx
	movq	%rdx, %rbp
	movq	%rsi, %rdx
	movq	%rdi, %rsi
	movq	%rbp, %rdi
	call	memcpy@PLT
	movb	$-128, 0(%rbp,%rbx)
	movl	$55, %eax
	subq	%rbx, %rax
	andl	$63, %eax
	leaq	1(%rbx), %rdi
	leaq	0(%rbp,%rdi), %rdx
	cmpl	$8, %eax
	jnb	.L2
	testb	$4, %al
	jne	.L10
	testl	%eax, %eax
	je	.L3
	movb	$0, (%rdx)
	testb	$2, %al
	je	.L3
	movw	$0, -2(%rax,%rdx)
	jmp	.L3
.L10:
	movl	$0, (%rdx)
	movl	$0, -4(%rax,%rdx)
	jmp	.L3
.L2:
	movl	$0, %r8d
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
	movl	%ecx, %r9d
	movq	%r8, (%rsi,%r9)
	addl	$8, %ecx
	cmpl	%edx, %ecx
	jb	.L6
.L3:
	addq	%rdi, %rbp
	salq	$3, %rbx
	movq	%rbx, 0(%rbp,%rax)
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
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
