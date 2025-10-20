	.text
	.file	"bubblesort.c"
	.globl	bubblesort                      # -- Begin function bubblesort
	.type	bubblesort,@function
bubblesort:                             # @bubblesort
	.cfi_startproc
# %bb.0:
	movq	%rsi, %rax
	decq	%rax
	je	.LBB0_7
# %bb.1:
	xorl	%ecx, %ecx
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
	movq	%rcx, %rdx
	notq	%rdx
	addq	%rsi, %rdx
	je	.LBB0_6
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	movl	(%rdi), %r8d
	xorl	%r9d, %r9d
.LBB0_4:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	4(%rdi,%r9,4), %r10d
	cmpl	%r10d, %r8d
	jle	.LBB0_5
# %bb.8:                                #   in Loop: Header=BB0_4 Depth=2
	movl	%r10d, (%rdi,%r9,4)
	movl	%r8d, 4(%rdi,%r9,4)
	jmp	.LBB0_9
.LBB0_5:                                #   in Loop: Header=BB0_4 Depth=2
	movl	%r10d, %r8d
.LBB0_9:                                #   in Loop: Header=BB0_4 Depth=2
	incq	%r9
	cmpq	%rdx, %r9
	jb	.LBB0_4
.LBB0_6:                                #   in Loop: Header=BB0_2 Depth=1
	incq	%rcx
	cmpq	%rax, %rcx
	jne	.LBB0_2
.LBB0_7:
	retq
.Lfunc_end0:
	.size	bubblesort, .Lfunc_end0-bubblesort
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
