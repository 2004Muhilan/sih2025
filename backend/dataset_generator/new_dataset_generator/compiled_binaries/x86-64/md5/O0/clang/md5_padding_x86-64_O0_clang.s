	.text
	.file	"md5_padding.c"
	.globl	md5_padding                     # -- Begin function md5_padding
	.p2align	4, 0x90
	.type	md5_padding,@function
md5_padding:                            # @md5_padding
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	callq	memcpy@PLT
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movb	$-128, (%rax,%rcx)
	movq	-16(%rbp), %rcx
	andq	$63, %rcx
	movl	$55, %eax
	subq	%rcx, %rax
	andq	$63, %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	addq	-16(%rbp), %rdi
	addq	$1, %rdi
	movq	-32(%rbp), %rdx
	xorl	%esi, %esi
	callq	memset@PLT
	movq	-16(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	addq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	%rdx, 1(%rax,%rcx)
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	md5_padding, .Lfunc_end0-md5_padding
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
