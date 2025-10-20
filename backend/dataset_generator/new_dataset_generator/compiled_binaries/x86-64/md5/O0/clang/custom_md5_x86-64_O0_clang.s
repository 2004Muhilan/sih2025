	.text
	.file	"custom_md5.c"
	.globl	md5_transform                   # -- Begin function md5_transform
	.p2align	4, 0x90
	.type	md5_transform,@function
md5_transform:                          # @md5_transform
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -24(%rbp)
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -28(%rbp)
	movq	-8(%rbp), %rax
	movl	12(%rax), %eax
	movl	%eax, -32(%rbp)
	movl	$0, -100(%rbp)
	movl	$0, -104(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$16, -100(%rbp)
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movslq	-104(%rbp), %rcx
	movzbl	(%rax,%rcx), %ecx
	movq	-16(%rbp), %rax
	movl	-104(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	movzbl	(%rax,%rdx), %eax
	shll	$8, %eax
	orl	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	-104(%rbp), %edx
	addl	$2, %edx
	movslq	%edx, %rdx
	movzbl	(%rax,%rdx), %eax
	shll	$16, %eax
	orl	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	-104(%rbp), %edx
	addl	$3, %edx
	movslq	%edx, %rdx
	movzbl	(%rax,%rdx), %eax
	shll	$24, %eax
	orl	%eax, %ecx
	movslq	-100(%rbp), %rax
	movl	%ecx, -96(%rbp,%rax,4)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	movl	-104(%rbp), %eax
	addl	$4, %eax
	movl	%eax, -104(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movl	$0, -108(%rbp)
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	cmpl	$16, -108(%rbp)
	jge	.LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	movl	-24(%rbp), %eax
	andl	-28(%rbp), %eax
	movl	-24(%rbp), %ecx
	xorl	$-1, %ecx
	andl	-32(%rbp), %ecx
	orl	%ecx, %eax
	movl	%eax, -112(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, -116(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-24(%rbp), %eax
	movl	-20(%rbp), %ecx
	addl	-112(%rbp), %ecx
	movslq	-108(%rbp), %rdx
	addl	-96(%rbp,%rdx,4), %ecx
	shll	$7, %ecx
	movl	-20(%rbp), %edx
	addl	-112(%rbp), %edx
	movslq	-108(%rbp), %rsi
	addl	-96(%rbp,%rsi,4), %edx
	shrl	$25, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	movl	%eax, -24(%rbp)
	movl	-116(%rbp), %eax
	movl	%eax, -20(%rbp)
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=1
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB0_5
.LBB0_8:
	movl	-20(%rbp), %ecx
	movq	-8(%rbp), %rax
	addl	(%rax), %ecx
	movl	%ecx, (%rax)
	movl	-24(%rbp), %ecx
	movq	-8(%rbp), %rax
	addl	4(%rax), %ecx
	movl	%ecx, 4(%rax)
	movl	-28(%rbp), %ecx
	movq	-8(%rbp), %rax
	addl	8(%rax), %ecx
	movl	%ecx, 8(%rax)
	movl	-32(%rbp), %ecx
	movq	-8(%rbp), %rax
	addl	12(%rax), %ecx
	movl	%ecx, 12(%rax)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	md5_transform, .Lfunc_end0-md5_transform
	.cfi_endproc
                                        # -- End function
	.globl	md5_init                        # -- Begin function md5_init
	.p2align	4, 0x90
	.type	md5_init,@function
md5_init:                               # @md5_init
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$1732584193, (%rax)             # imm = 0x67452301
	movq	-8(%rbp), %rax
	movl	$-271733879, 4(%rax)            # imm = 0xEFCDAB89
	movq	-8(%rbp), %rax
	movl	$-1732584194, 8(%rax)           # imm = 0x98BADCFE
	movq	-8(%rbp), %rax
	movl	$271733878, 12(%rax)            # imm = 0x10325476
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	md5_init, .Lfunc_end1-md5_init
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
