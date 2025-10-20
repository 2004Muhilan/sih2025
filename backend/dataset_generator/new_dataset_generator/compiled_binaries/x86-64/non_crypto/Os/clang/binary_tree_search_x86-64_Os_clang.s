	.text
	.file	"binary_tree_search.c"
	.globl	binary_tree_search              # -- Begin function binary_tree_search
	.type	binary_tree_search,@function
binary_tree_search:                     # @binary_tree_search
	.cfi_startproc
# %bb.0:
	xorl	%eax, %eax
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	testq	%rdi, %rdi
	je	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	cmpl	%esi, (%rdi)
	je	.LBB0_3
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	setle	%cl
	movzbl	%cl, %ecx
	movq	8(%rdi,%rcx,8), %rdi
	jmp	.LBB0_1
.LBB0_3:
	movl	$1, %eax
.LBB0_4:
	retq
.Lfunc_end0:
	.size	binary_tree_search, .Lfunc_end0-binary_tree_search
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
