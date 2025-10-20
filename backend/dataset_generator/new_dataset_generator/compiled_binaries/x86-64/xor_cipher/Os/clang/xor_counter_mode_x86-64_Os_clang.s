	.text
	.file	"xor_counter_mode.c"
	.globl	xor_counter_mode                # -- Begin function xor_counter_mode
	.type	xor_counter_mode,@function
xor_counter_mode:                       # @xor_counter_mode
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
	divq	%rcx
	leal	(%r8,%r10), %eax
	xorb	(%r9,%rdx), %al
	xorb	%al, (%rdi,%r10)
	incq	%r10
	cmpq	%r10, %rsi
	jne	.LBB0_2
.LBB0_3:
	retq
.Lfunc_end0:
	.size	xor_counter_mode, .Lfunc_end0-xor_counter_mode
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
