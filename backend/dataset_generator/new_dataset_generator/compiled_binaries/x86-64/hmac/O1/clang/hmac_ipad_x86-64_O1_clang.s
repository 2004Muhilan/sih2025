	.text
	.file	"hmac_ipad.c"
	.globl	hmac_create_ipad                # -- Begin function hmac_create_ipad
	.p2align	4, 0x90
	.type	hmac_create_ipad,@function
hmac_create_ipad:                       # @hmac_create_ipad
	.cfi_startproc
# %bb.0:
	xorl	%eax, %eax
	jmp	.LBB0_1
	.p2align	4, 0x90
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	movzbl	(%rdi,%rax), %ecx
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	xorb	$54, %cl
	movb	%cl, (%rdx,%rax)
	incq	%rax
	cmpq	$64, %rax
	je	.LBB0_5
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpq	%rsi, %rax
	jb	.LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	xorl	%ecx, %ecx
	jmp	.LBB0_4
.LBB0_5:
	retq
.Lfunc_end0:
	.size	hmac_create_ipad, .Lfunc_end0-hmac_create_ipad
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
