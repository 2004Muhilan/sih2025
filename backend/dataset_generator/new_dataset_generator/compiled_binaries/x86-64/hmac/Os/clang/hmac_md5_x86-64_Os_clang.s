	.text
	.file	"hmac_md5.c"
	.globl	hmac_md5                        # -- Begin function hmac_md5
	.type	hmac_md5,@function
hmac_md5:                               # @hmac_md5
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
	movaps	-128(%rsp), %xmm0
	xorps	-64(%rsp), %xmm0
	movups	%xmm0, (%r8)
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
