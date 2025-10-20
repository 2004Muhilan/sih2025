	.text
	.file	"bubblesort.c"
	.globl	bubblesort                      # -- Begin function bubblesort
	.p2align	4, 0x90
	.type	bubblesort,@function
bubblesort:                             # @bubblesort
	.cfi_startproc
# %bb.0:
	movq	%rsi, %rax
	decq	%rax
	je	.LBB0_8
# %bb.1:
	xorl	%ecx, %ecx
	jmp	.LBB0_2
	.p2align	4, 0x90
.LBB0_7:                                #   in Loop: Header=BB0_2 Depth=1
	incq	%rcx
	cmpq	%rax, %rcx
	je	.LBB0_8
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
	movq	%rcx, %rdx
	notq	%rdx
	addq	%rsi, %rdx
	je	.LBB0_7
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	xorl	%r8d, %r8d
	jmp	.LBB0_4
	.p2align	4, 0x90
.LBB0_6:                                #   in Loop: Header=BB0_4 Depth=2
	incq	%r8
	cmpq	%rdx, %r8
	jae	.LBB0_7
.LBB0_4:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdi,%r8,4), %r9d
	movl	4(%rdi,%r8,4), %r10d
	cmpl	%r10d, %r9d
	jle	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=2
	movl	%r10d, (%rdi,%r8,4)
	movl	%r9d, 4(%rdi,%r8,4)
	jmp	.LBB0_6
.LBB0_8:
	retq
.Lfunc_end0:
	.size	bubblesort, .Lfunc_end0-bubblesort
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
