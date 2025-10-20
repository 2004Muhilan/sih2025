	.text
	.file	"hmac_sha256.c"
	.globl	hmac_sha256                     # -- Begin function hmac_sha256
	.p2align	4, 0x90
	.type	hmac_sha256,@function
hmac_sha256:                            # @hmac_sha256
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
	jmp	.LBB0_1
	.p2align	4, 0x90
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	movzbl	1(%rdi,%rax), %r9d
	movl	%r9d, %ecx
	xorb	$54, %cl
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	movb	%cl, -63(%rsp,%rax)
	xorb	$92, %r9b
	movb	%r9b, -127(%rsp,%rax)
	incq	%rdx
	movq	%rdx, %rax
	cmpq	$64, %rdx
	je	.LBB0_8
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movb	$54, %cl
	cmpq	%rsi, %rax
	jae	.LBB0_2
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movzbl	(%rdi,%rax), %edx
	movl	%edx, %r9d
	xorb	$54, %r9b
	jmp	.LBB0_4
	.p2align	4, 0x90
.LBB0_2:                                #   in Loop: Header=BB0_1 Depth=1
	xorl	%edx, %edx
	movb	$54, %r9b
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movb	%r9b, -64(%rsp,%rax)
	xorb	$92, %dl
	movb	%dl, -128(%rsp,%rax)
	leaq	1(%rax), %rdx
	cmpq	%rsi, %rdx
	jb	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	xorl	%r9d, %r9d
	jmp	.LBB0_7
.LBB0_8:
	movaps	-128(%rsp), %xmm0
	xorps	-64(%rsp), %xmm0
	movups	%xmm0, (%r8)
	movaps	-112(%rsp), %xmm0
	xorps	-48(%rsp), %xmm0
	movups	%xmm0, 16(%r8)
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	hmac_sha256, .Lfunc_end0-hmac_sha256
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
