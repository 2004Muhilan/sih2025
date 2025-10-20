	.text
	.file	"hmac_key_derivation.c"
	.globl	hmac_key_derive                 # -- Begin function hmac_key_derive
	.type	hmac_key_derive,@function
hmac_key_derive:                        # @hmac_key_derive
	.cfi_startproc
# %bb.0:
	movq	%rdx, %r9
	xorl	%r10d, %r10d
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	%r10, %rax
	xorl	%edx, %edx
	divq	%rsi
	movq	%rdx, %r11
	movq	%r10, %rax
	xorl	%edx, %edx
	divq	%rcx
	movb	(%r9,%rdx), %al
	xorb	(%rdi,%r11), %al
	movb	%al, (%r8,%r10)
	incq	%r10
	cmpq	$32, %r10
	jne	.LBB0_1
# %bb.2:
	retq
.Lfunc_end0:
	.size	hmac_key_derive, .Lfunc_end0-hmac_key_derive
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
