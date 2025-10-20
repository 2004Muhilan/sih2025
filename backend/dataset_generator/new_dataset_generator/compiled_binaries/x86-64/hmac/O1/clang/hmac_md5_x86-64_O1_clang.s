	.text
	.file	"hmac_md5.c"
	.globl	hmac_md5                        # -- Begin function hmac_md5
	.p2align	4, 0x90
	.type	hmac_md5,@function
hmac_md5:                               # @hmac_md5
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
	jmp	.LBB0_1
	.p2align	4, 0x90
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	movzbl	(%rdi,%rax), %ecx
	movl	%ecx, %edx
	xorb	$54, %dl
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movb	%dl, -64(%rsp,%rax)
	xorb	$92, %cl
	movb	%cl, -128(%rsp,%rax)
	incq	%rax
	cmpq	$64, %rax
	je	.LBB0_5
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpq	%rsi, %rax
	jb	.LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movb	$54, %dl
	xorl	%ecx, %ecx
	jmp	.LBB0_4
.LBB0_5:
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	movzbl	-128(%rsp,%rax), %ecx
	xorb	-64(%rsp,%rax), %cl
	movb	%cl, (%r8,%rax)
	incq	%rax
	cmpq	$16, %rax
	jne	.LBB0_6
# %bb.7:
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	hmac_md5, .Lfunc_end0-hmac_md5
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
