	.text
	.file	"fibonacci.c"
	.globl	fibonacci                       # -- Begin function fibonacci
	.p2align	4, 0x90
	.type	fibonacci,@function
fibonacci:                              # @fibonacci
	.cfi_startproc
# %bb.0:
	movl	%edi, %eax
	cmpl	$2, %edi
	jb	.LBB0_3
# %bb.1:
	incl	%eax
	cmpl	$4, %eax
	movl	$3, %ecx
	cmovael	%eax, %ecx
	addl	$-2, %ecx
	xorl	%edx, %edx
	movl	$1, %eax
	.p2align	4, 0x90
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movl	%eax, %esi
	movl	%edx, %eax
	addl	%esi, %eax
	movl	%esi, %edx
	decl	%ecx
	jne	.LBB0_2
.LBB0_3:
	retq
.Lfunc_end0:
	.size	fibonacci, .Lfunc_end0-fibonacci
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
