	.text
	.file	"hmac_sha256.c"
	.globl	hmac_sha256                     # -- Begin function hmac_sha256
	.type	hmac_sha256,@function
hmac_sha256:                            # @hmac_sha256
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpq	%rsi, %rax
	jae	.LBB0_2
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movb	(%rdi,%rax), %cl
	movl	%ecx, %edx
	xorb	$54, %dl
	jmp	.LBB0_4
.LBB0_2:                                #   in Loop: Header=BB0_1 Depth=1
	movb	$54, %dl
	xorl	%ecx, %ecx
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movb	%dl, -64(%rsp,%rax)
	xorb	$92, %cl
	movb	%cl, -128(%rsp,%rax)
	incq	%rax
	cmpq	$64, %rax
	jne	.LBB0_1
# %bb.5:
	xorl	%eax, %eax
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	movaps	-128(%rsp,%rax), %xmm0
	xorps	-64(%rsp,%rax), %xmm0
	movups	%xmm0, (%r8,%rax)
	addq	$16, %rax
	cmpq	$32, %rax
	jne	.LBB0_6
# %bb.7:
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
