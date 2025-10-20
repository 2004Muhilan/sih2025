	.text
	.file	"hmac_opad.c"
	.globl	hmac_create_opad                # -- Begin function hmac_create_opad
	.type	hmac_create_opad,@function
hmac_create_opad:                       # @hmac_create_opad
	.cfi_startproc
# %bb.0:
	xorl	%eax, %eax
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpq	%rsi, %rax
	jae	.LBB0_2
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movb	(%rdi,%rax), %cl
	jmp	.LBB0_4
.LBB0_2:                                #   in Loop: Header=BB0_1 Depth=1
	xorl	%ecx, %ecx
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	xorb	$92, %cl
	movb	%cl, (%rdx,%rax)
	incq	%rax
	cmpq	$64, %rax
	jne	.LBB0_1
# %bb.5:
	retq
.Lfunc_end0:
	.size	hmac_create_opad, .Lfunc_end0-hmac_create_opad
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
