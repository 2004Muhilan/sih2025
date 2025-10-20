	.text
	.file	"sha256_padding.c"
	.globl	sha256_padding                  # -- Begin function sha256_padding
	.p2align	4, 0x90
	.type	sha256_padding,@function
sha256_padding:                         # @sha256_padding
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
	movl	$0, -44(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$8, -44(%rbp)
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-40(%rbp), %rax
	movl	-44(%rbp), %edx
	shll	$3, %edx
	movl	$56, %ecx
	subl	%edx, %ecx
	movl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
                                        # kill: def $cl killed $rcx
	shrq	%cl, %rax
	andq	$255, %rax
	movb	%al, %dl
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	$1, %rcx
	addq	-32(%rbp), %rcx
	movslq	-44(%rbp), %rsi
	addq	%rsi, %rcx
	movb	%dl, (%rax,%rcx)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	sha256_padding, .Lfunc_end0-sha256_padding
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
