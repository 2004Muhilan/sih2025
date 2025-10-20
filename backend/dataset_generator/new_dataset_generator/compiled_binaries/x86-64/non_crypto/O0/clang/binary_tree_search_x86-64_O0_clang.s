	.text
	.file	"binary_tree_search.c"
	.globl	binary_tree_search              # -- Begin function binary_tree_search
	.p2align	4, 0x90
	.type	binary_tree_search,@function
binary_tree_search:                     # @binary_tree_search
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB0_2
# %bb.1:
	movl	$0, -4(%rbp)
	jmp	.LBB0_7
.LBB0_2:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	-20(%rbp), %eax
	jne	.LBB0_4
# %bb.3:
	movl	$1, -4(%rbp)
	jmp	.LBB0_7
.LBB0_4:
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB0_6
# %bb.5:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movl	-20(%rbp), %esi
	callq	binary_tree_search
	movl	%eax, -4(%rbp)
	jmp	.LBB0_7
.LBB0_6:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	movl	-20(%rbp), %esi
	callq	binary_tree_search
	movl	%eax, -4(%rbp)
.LBB0_7:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	binary_tree_search, .Lfunc_end0-binary_tree_search
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym binary_tree_search
