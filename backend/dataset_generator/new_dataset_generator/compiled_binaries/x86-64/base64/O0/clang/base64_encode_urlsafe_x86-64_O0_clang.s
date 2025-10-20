	.text
	.file	"base64_encode_urlsafe.c"
	.globl	base64_encode_urlsafe           # -- Begin function base64_encode_urlsafe
	.p2align	4, 0x90
	.type	base64_encode_urlsafe,@function
base64_encode_urlsafe:                  # @base64_encode_urlsafe
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
	leaq	b64url(%rip), %rax
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
	leaq	b64url(%rip), %rax
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
	leaq	b64url(%rip), %rax
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
	leaq	b64url(%rip), %rax
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
	.size	base64_encode_urlsafe, .Lfunc_end0-base64_encode_urlsafe
	.cfi_endproc
                                        # -- End function
	.type	b64url,@object                  # @b64url
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
b64url:
	.asciz	"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"
	.size	b64url, 65

	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym b64url
