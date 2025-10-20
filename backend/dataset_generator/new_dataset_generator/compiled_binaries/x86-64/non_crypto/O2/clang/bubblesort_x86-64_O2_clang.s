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
	je	.LBB0_10
# %bb.1:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	leaq	-2(%rsi), %rcx
	decq	%rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	jmp	.LBB0_2
	.p2align	4, 0x90
.LBB0_8:                                #   in Loop: Header=BB0_2 Depth=1
	incq	%rdx
	decq	%r8
	cmpq	%rax, %rdx
	je	.LBB0_9
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_12 Depth 2
	cmpq	%rsi, %rdx
	je	.LBB0_8
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	movl	(%rdi), %r9d
	cmpq	%rdx, %rcx
	jne	.LBB0_11
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	xorl	%r10d, %r10d
.LBB0_5:                                #   in Loop: Header=BB0_2 Depth=1
	movq	%rax, %r11
	subq	%rdx, %r11
	testb	$1, %r11b
	je	.LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_2 Depth=1
	movl	4(%rdi,%r10,4), %r11d
	cmpl	%r11d, %r9d
	jle	.LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_2 Depth=1
	movl	%r11d, (%rdi,%r10,4)
	movl	%r9d, 4(%rdi,%r10,4)
	jmp	.LBB0_8
	.p2align	4, 0x90
.LBB0_11:                               #   in Loop: Header=BB0_2 Depth=1
	movq	%r8, %r11
	andq	$-2, %r11
	xorl	%r10d, %r10d
	jmp	.LBB0_12
	.p2align	4, 0x90
.LBB0_17:                               #   in Loop: Header=BB0_12 Depth=2
	movl	%ebx, 4(%rdi,%r10,4)
	movl	%r9d, 8(%rdi,%r10,4)
.LBB0_18:                               #   in Loop: Header=BB0_12 Depth=2
	addq	$2, %r10
	cmpq	%r10, %r11
	je	.LBB0_5
.LBB0_12:                               #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	4(%rdi,%r10,4), %ebx
	cmpl	%ebx, %r9d
	jle	.LBB0_13
# %bb.14:                               #   in Loop: Header=BB0_12 Depth=2
	movl	%ebx, (%rdi,%r10,4)
	movl	%r9d, 4(%rdi,%r10,4)
	jmp	.LBB0_15
	.p2align	4, 0x90
.LBB0_13:                               #   in Loop: Header=BB0_12 Depth=2
	movl	%ebx, %r9d
.LBB0_15:                               #   in Loop: Header=BB0_12 Depth=2
	movl	8(%rdi,%r10,4), %ebx
	cmpl	%ebx, %r9d
	jg	.LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_12 Depth=2
	movl	%ebx, %r9d
	jmp	.LBB0_18
.LBB0_9:
	popq	%rbx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
.LBB0_10:
	retq
.Lfunc_end0:
	.size	bubblesort, .Lfunc_end0-bubblesort
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
