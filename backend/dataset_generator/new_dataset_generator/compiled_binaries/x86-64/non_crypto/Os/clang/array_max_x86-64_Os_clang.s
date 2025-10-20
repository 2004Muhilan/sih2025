	.text
	.file	"array_max.c"
	.globl	array_max                       # -- Begin function array_max
	.type	array_max,@function
array_max:                              # @array_max
	.cfi_startproc
# %bb.0:
	testq	%rsi, %rsi
	je	.LBB0_1
# %bb.2:
	movl	(%rdi), %eax
	cmpq	$1, %rsi
	je	.LBB0_5
# %bb.3:
	movl	$1, %ecx
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	movl	(%rdi,%rcx,4), %edx
	cmpl	%eax, %edx
	cmovgl	%edx, %eax
	incq	%rcx
	cmpq	%rcx, %rsi
	jne	.LBB0_4
.LBB0_5:
	retq
.LBB0_1:
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	array_max, .Lfunc_end0-array_max
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
