	.text
	.file	"array_sum.c"
	.globl	array_sum                       # -- Begin function array_sum
	.p2align	4, 0x90
	.type	array_sum,@function
array_sum:                              # @array_sum
	.cfi_startproc
# %bb.0:
	testq	%rsi, %rsi
	je	.LBB0_1
# %bb.3:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	addl	(%rdi,%rcx,4), %eax
	incq	%rcx
	cmpq	%rcx, %rsi
	jne	.LBB0_4
# %bb.2:
	retq
.LBB0_1:
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	array_sum, .Lfunc_end0-array_sum
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
