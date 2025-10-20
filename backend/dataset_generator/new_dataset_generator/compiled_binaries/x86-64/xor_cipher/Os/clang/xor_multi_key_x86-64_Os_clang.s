	.text
	.file	"xor_multi_key.c"
	.globl	xor_multi_key                   # -- Begin function xor_multi_key
	.type	xor_multi_key,@function
xor_multi_key:                          # @xor_multi_key
	.cfi_startproc
# %bb.0:
	testq	%rsi, %rsi
	je	.LBB0_3
# %bb.1:
	movq	%rdx, %r9
	xorl	%r10d, %r10d
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movq	%r10, %rax
	xorl	%edx, %edx
	divq	%r8
	movb	(%rdi,%r10), %al
	xorb	(%r9,%rdx), %al
	movb	%al, (%rdi,%r10)
	xorb	(%rcx,%rdx), %al
	movb	%al, (%rdi,%r10)
	incq	%r10
	cmpq	%r10, %rsi
	jne	.LBB0_2
.LBB0_3:
	retq
.Lfunc_end0:
	.size	xor_multi_key, .Lfunc_end0-xor_multi_key
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
