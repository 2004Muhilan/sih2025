	.text
	.file	"xor_cbc_mode.c"
	.globl	xor_cbc_mode                    # -- Begin function xor_cbc_mode
	.p2align	4, 0x90
	.type	xor_cbc_mode,@function
xor_cbc_mode:                           # @xor_cbc_mode
	.cfi_startproc
# %bb.0:
	testq	%rsi, %rsi
	je	.LBB0_3
# %bb.1:
	movq	%rdx, %r9
	xorl	%r10d, %r10d
	.p2align	4, 0x90
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movq	%r10, %rax
	xorl	%edx, %edx
	divq	%rcx
	xorb	(%r9,%rdx), %r8b
	xorb	(%rdi,%r10), %r8b
	movb	%r8b, (%rdi,%r10)
	incq	%r10
	cmpq	%r10, %rsi
	jne	.LBB0_2
.LBB0_3:
	retq
.Lfunc_end0:
	.size	xor_cbc_mode, .Lfunc_end0-xor_cbc_mode
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
