	.text
	.file	"base64_no_padding.c"
	.globl	base64_encode_no_padding        # -- Begin function base64_encode_no_padding
	.p2align	4, 0x90
	.type	base64_encode_no_padding,@function
base64_encode_no_padding:               # @base64_encode_no_padding
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jae	.LBB0_12
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rcx
	movzbl	(%rax,%rcx), %eax
	shll	$16, %eax
	movl	%eax, -44(%rbp)
	movq	-40(%rbp), %rax
	addq	$1, %rax
	cmpq	-16(%rbp), %rax
	jae	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rcx
	movzbl	1(%rax,%rcx), %eax
	shll	$8, %eax
	orl	-44(%rbp), %eax
	movl	%eax, -44(%rbp)
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-40(%rbp), %rax
	addq	$2, %rax
	cmpq	-16(%rbp), %rax
	jae	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rcx
	movzbl	2(%rax,%rcx), %eax
	orl	-44(%rbp), %eax
	movl	%eax, -44(%rbp)
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-44(%rbp), %eax
	shrl	$18, %eax
	andl	$63, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	leaq	b64(%rip), %rax
	movb	(%rax,%rcx), %dl
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	addq	$1, %rsi
	movq	%rsi, -32(%rbp)
	movb	%dl, (%rax,%rcx)
	movl	-44(%rbp), %eax
	shrl	$12, %eax
	andl	$63, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	leaq	b64(%rip), %rax
	movb	(%rax,%rcx), %dl
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	addq	$1, %rsi
	movq	%rsi, -32(%rbp)
	movb	%dl, (%rax,%rcx)
	movq	-40(%rbp), %rax
	addq	$1, %rax
	cmpq	-16(%rbp), %rax
	jae	.LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-44(%rbp), %eax
	shrl	$6, %eax
	andl	$63, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	leaq	b64(%rip), %rax
	movb	(%rax,%rcx), %dl
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	addq	$1, %rsi
	movq	%rsi, -32(%rbp)
	movb	%dl, (%rax,%rcx)
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-40(%rbp), %rax
	addq	$2, %rax
	cmpq	-16(%rbp), %rax
	jae	.LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-44(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	leaq	b64(%rip), %rax
	movb	(%rax,%rcx), %dl
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	addq	$1, %rsi
	movq	%rsi, -32(%rbp)
	movb	%dl, (%rax,%rcx)
.LBB0_10:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_11
.LBB0_11:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-40(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB0_1
.LBB0_12:
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rcx
	movb	$0, (%rax,%rcx)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	base64_encode_no_padding, .Lfunc_end0-base64_encode_no_padding
	.cfi_endproc
                                        # -- End function
	.type	b64,@object                     # @b64
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
b64:
	.asciz	"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
	.size	b64, 65

	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym b64
