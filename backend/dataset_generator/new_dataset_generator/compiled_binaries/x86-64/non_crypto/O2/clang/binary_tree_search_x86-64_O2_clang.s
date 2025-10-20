	.text
	.file	"binary_tree_search.c"
	.globl	binary_tree_search              # -- Begin function binary_tree_search
	.p2align	4, 0x90
	.type	binary_tree_search,@function
binary_tree_search:                     # @binary_tree_search
	.cfi_startproc
# %bb.0:
	xorl	%eax, %eax
	testq	%rdi, %rdi
	je	.LBB0_4
	.p2align	4, 0x90
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	cmpl	%esi, (%rdi)
	je	.LBB0_3
# %bb.5:                                #   in Loop: Header=BB0_2 Depth=1
	setle	%cl
	movzbl	%cl, %ecx
	movq	8(%rdi,%rcx,8), %rdi
	testq	%rdi, %rdi
	jne	.LBB0_2
.LBB0_4:
	retq
.LBB0_3:
	movl	$1, %eax
	retq
.Lfunc_end0:
	.size	binary_tree_search, .Lfunc_end0-binary_tree_search
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
