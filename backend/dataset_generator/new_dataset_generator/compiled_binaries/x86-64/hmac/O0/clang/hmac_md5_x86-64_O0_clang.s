	.text
	.file	"hmac_md5.c"
	.globl	hmac_md5                        # -- Begin function hmac_md5
	.p2align	4, 0x90
	.type	hmac_md5,@function
hmac_md5:                               # @hmac_md5
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	$0, -184(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpq	$64, -184(%rbp)
	jae	.LBB0_10
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-184(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jae	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movq	-184(%rbp), %rcx
	movzbl	(%rax,%rcx), %eax
	movl	%eax, -192(%rbp)                # 4-byte Spill
	jmp	.LBB0_5
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, -192(%rbp)                # 4-byte Spill
	jmp	.LBB0_5
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-192(%rbp), %eax                # 4-byte Reload
	xorl	$54, %eax
	movb	%al, %cl
	movq	-184(%rbp), %rax
	movb	%cl, -112(%rbp,%rax)
	movq	-184(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jae	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movq	-184(%rbp), %rcx
	movzbl	(%rax,%rcx), %eax
	movl	%eax, -196(%rbp)                # 4-byte Spill
	jmp	.LBB0_8
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, -196(%rbp)                # 4-byte Spill
	jmp	.LBB0_8
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-196(%rbp), %eax                # 4-byte Reload
	xorl	$92, %eax
	movb	%al, %cl
	movq	-184(%rbp), %rax
	movb	%cl, -176(%rbp,%rax)
# %bb.9:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-184(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -184(%rbp)
	jmp	.LBB0_1
.LBB0_10:
	movl	$0, -188(%rbp)
.LBB0_11:                               # =>This Inner Loop Header: Depth=1
	cmpl	$16, -188(%rbp)
	jge	.LBB0_14
# %bb.12:                               #   in Loop: Header=BB0_11 Depth=1
	movslq	-188(%rbp), %rax
	movzbl	-112(%rbp,%rax), %eax
	movslq	-188(%rbp), %rcx
	movzbl	-176(%rbp,%rcx), %ecx
	xorl	%ecx, %eax
	movb	%al, %dl
	movq	-40(%rbp), %rax
	movslq	-188(%rbp), %rcx
	movb	%dl, (%rax,%rcx)
# %bb.13:                               #   in Loop: Header=BB0_11 Depth=1
	movl	-188(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -188(%rbp)
	jmp	.LBB0_11
.LBB0_14:
	addq	$80, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	hmac_md5, .Lfunc_end0-hmac_md5
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
