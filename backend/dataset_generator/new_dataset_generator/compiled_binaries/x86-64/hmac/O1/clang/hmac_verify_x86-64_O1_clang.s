	.text
	.file	"hmac_verify.c"
	.globl	hmac_verify                     # -- Begin function hmac_verify
	.p2align	4, 0x90
	.type	hmac_verify,@function
hmac_verify:                            # @hmac_verify
	.cfi_startproc
# %bb.0:
	testq	%rdx, %rdx
	je	.LBB0_1
# %bb.4:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rsi,%rax), %r8d
	xorb	(%rdi,%rax), %r8b
	orb	%r8b, %cl
	incq	%rax
	cmpq	%rax, %rdx
	jne	.LBB0_5
# %bb.2:
	testb	%cl, %cl
	sete	%al
	retq
.LBB0_1:
	movb	$1, %al
	retq
.Lfunc_end0:
	.size	hmac_verify, .Lfunc_end0-hmac_verify
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
