	.text
	.file	"custom_base64.c"
	.globl	base64_encode                   # -- Begin function base64_encode
	.p2align	4, 0x90
	.type	base64_encode,@function
base64_encode:                          # @base64_encode
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
	movq	-32(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jae	.LBB0_12
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jae	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -32(%rbp)
	movzbl	(%rax,%rcx), %eax
	movl	%eax, -60(%rbp)                 # 4-byte Spill
	jmp	.LBB0_5
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, -60(%rbp)                 # 4-byte Spill
	jmp	.LBB0_5
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-60(%rbp), %eax                 # 4-byte Reload
	movl	%eax, -44(%rbp)
	movq	-32(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jae	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -32(%rbp)
	movzbl	(%rax,%rcx), %eax
	movl	%eax, -64(%rbp)                 # 4-byte Spill
	jmp	.LBB0_8
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, -64(%rbp)                 # 4-byte Spill
	jmp	.LBB0_8
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-64(%rbp), %eax                 # 4-byte Reload
	movl	%eax, -48(%rbp)
	movq	-32(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jae	.LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -32(%rbp)
	movzbl	(%rax,%rcx), %eax
	movl	%eax, -68(%rbp)                 # 4-byte Spill
	jmp	.LBB0_11
.LBB0_10:                               #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, -68(%rbp)                 # 4-byte Spill
	jmp	.LBB0_11
.LBB0_11:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-68(%rbp), %eax                 # 4-byte Reload
	movl	%eax, -52(%rbp)
	movl	-44(%rbp), %eax
	shll	$16, %eax
	movl	-48(%rbp), %ecx
	shll	$8, %ecx
	addl	%ecx, %eax
	addl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %eax
	shrl	$18, %eax
	andl	$63, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	leaq	b64(%rip), %rax
	movb	(%rax,%rcx), %dl
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rcx, %rsi
	addq	$1, %rsi
	movq	%rsi, -40(%rbp)
	movb	%dl, (%rax,%rcx)
	movl	-56(%rbp), %eax
	shrl	$12, %eax
	andl	$63, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	leaq	b64(%rip), %rax
	movb	(%rax,%rcx), %dl
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rcx, %rsi
	addq	$1, %rsi
	movq	%rsi, -40(%rbp)
	movb	%dl, (%rax,%rcx)
	movl	-56(%rbp), %eax
	shrl	$6, %eax
	andl	$63, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	leaq	b64(%rip), %rax
	movb	(%rax,%rcx), %dl
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rcx, %rsi
	addq	$1, %rsi
	movq	%rsi, -40(%rbp)
	movb	%dl, (%rax,%rcx)
	movl	-56(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	leaq	b64(%rip), %rax
	movb	(%rax,%rcx), %dl
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rcx, %rsi
	addq	$1, %rsi
	movq	%rsi, -40(%rbp)
	movb	%dl, (%rax,%rcx)
	jmp	.LBB0_1
.LBB0_12:
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	base64_encode, .Lfunc_end0-base64_encode
	.cfi_endproc
                                        # -- End function
	.globl	base64_decode                   # -- Begin function base64_decode
	.p2align	4, 0x90
	.type	base64_decode,@function
base64_decode:                          # @base64_decode
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$4, -20(%rbp)
	jge	.LBB1_4
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movb	(%rax,%rcx), %dl
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movb	%dl, (%rax,%rcx)
# %bb.3:                                #   in Loop: Header=BB1_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB1_1
.LBB1_4:
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	base64_decode, .Lfunc_end1-base64_decode
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
