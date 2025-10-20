	.text
	.file	"rsa_pkcs1_padding.c"
	.globl	rsa_pkcs1_pad                   # -- Begin function rsa_pkcs1_pad
	.p2align	4, 0x90
	.type	rsa_pkcs1_pad,@function
rsa_pkcs1_pad:                          # @rsa_pkcs1_pad
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
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rax
	movb	$0, (%rax)
	movq	-24(%rbp), %rax
	movb	$2, 1(%rax)
	movq	$2, -40(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	subq	-16(%rbp), %rcx
	subq	$1, %rcx
	cmpq	%rcx, %rax
	jae	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rcx
	movb	$-1, (%rax,%rcx)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rcx
	subq	-16(%rbp), %rcx
	subq	$1, %rcx
	movb	$0, (%rax,%rcx)
	movq	-24(%rbp), %rdi
	addq	-32(%rbp), %rdi
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	subq	-16(%rbp), %rax
	addq	%rax, %rdi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	callq	memcpy@PLT
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	rsa_pkcs1_pad, .Lfunc_end0-rsa_pkcs1_pad
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
