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
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	movzbl	1(%rdi,%rax), %r8d
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	xorb	$54, %r8b
	movb	%r8b, 1(%rdx,%rax)
	incq	%rcx
	movq	%rcx, %rax
	cmpq	$64, %rcx
	je	.LBB0_8
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpq	%rsi, %rax
	jae	.LBB0_2
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movzbl	(%rdi,%rax), %ecx
	jmp	.LBB0_4
	.p2align	4, 0x90
.LBB0_2:                                #   in Loop: Header=BB0_1 Depth=1
	xorl	%ecx, %ecx
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	xorb	$54, %cl
	movb	%cl, (%rdx,%rax)
	leaq	1(%rax), %rcx
	cmpq	%rsi, %rcx
	jb	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	xorl	%r8d, %r8d
	jmp	.LBB0_7
.LBB0_8:
	retq
.Lfunc_end0:
	.size	hmac_create_ipad, .Lfunc_end0-hmac_create_ipad
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
