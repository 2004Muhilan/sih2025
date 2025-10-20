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
	jb	.LBB0_7
# %bb.1:
	incl	%eax
	cmpl	$4, %eax
	movl	$3, %edx
	cmovael	%eax, %edx
	leal	-2(%rdx), %esi
	addl	$-3, %edx
	movl	%esi, %ecx
	andl	$7, %ecx
	cmpl	$7, %edx
	jae	.LBB0_3
# %bb.2:
	xorl	%edx, %edx
	movl	$1, %eax
	jmp	.LBB0_5
.LBB0_3:
	andl	$-8, %esi
	xorl	%edx, %edx
	movl	$1, %eax
	.p2align	4, 0x90
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	addl	%eax, %edx
	addl	%edx, %eax
	addl	%eax, %edx
	addl	%edx, %eax
	addl	%eax, %edx
	addl	%edx, %eax
	addl	%eax, %edx
	addl	%edx, %eax
	addl	$-8, %esi
	jne	.LBB0_4
.LBB0_5:
	testl	%ecx, %ecx
	je	.LBB0_7
	.p2align	4, 0x90
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	movl	%eax, %esi
	movl	%edx, %eax
	addl	%esi, %eax
	movl	%esi, %edx
	decl	%ecx
	jne	.LBB0_6
.LBB0_7:
	retq
.Lfunc_end0:
	.size	fibonacci, .Lfunc_end0-fibonacci
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
