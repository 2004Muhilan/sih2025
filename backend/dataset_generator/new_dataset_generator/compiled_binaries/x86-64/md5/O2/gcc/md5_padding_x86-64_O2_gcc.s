	.file	"md5_padding.c"
	.text
	.p2align 4
	.globl	md5_padding
	.type	md5_padding, @function
md5_padding:
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
	movq	%rax, %rcx
	movb	$-128, (%rax,%rbx)
	movl	$55, %eax
	subq	%rbx, %rax
	leaq	1(%rcx,%rbx), %rsi
	andl	$63, %eax
	cmpl	$8, %eax
	jnb	.L2
	testb	$4, %al
	jne	.L14
	testl	%eax, %eax
	je	.L3
	movb	$0, (%rsi)
	testb	$2, %al
	jne	.L15
.L3:
	salq	$3, %rbx
	movq	%rbx, (%rsi,%rax)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2:
	.cfi_restore_state
	leaq	8(%rsi), %rdi
	movq	%rsi, %rdx
	movq	$0, (%rsi)
	movq	$0, -8(%rax,%rsi)
	andq	$-8, %rdi
	subq	%rdi, %rdx
	addl	%eax, %edx
	andl	$-8, %edx
	cmpl	$8, %edx
	jb	.L3
	xorl	%r8d, %r8d
	andl	$-8, %edx
	xorl	%ecx, %ecx
.L6:
	movl	%ecx, %r9d
	addl	$8, %ecx
	movq	%r8, (%rdi,%r9)
	cmpl	%edx, %ecx
	jb	.L6
	salq	$3, %rbx
	movq	%rbx, (%rsi,%rax)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L14:
	.cfi_restore_state
	movl	$0, (%rsi)
	movl	$0, -4(%rax,%rsi)
	jmp	.L3
	.p2align 4,,10
	.p2align 3
.L15:
	xorl	%edx, %edx
	movw	%dx, -2(%rax,%rsi)
	jmp	.L3
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
