	.text
	.file	"factorial.c"
	.globl	factorial                       # -- Begin function factorial
	.p2align	4, 0x90
	.type	factorial,@function
factorial:                              # @factorial
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.LBB0_2
# %bb.1:
	cmpl	$1, -12(%rbp)
	jne	.LBB0_3
.LBB0_2:
	movq	$1, -8(%rbp)
	jmp	.LBB0_8
.LBB0_3:
	movq	$1, -24(%rbp)
	movl	$2, -28(%rbp)
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-12(%rbp), %eax
	ja	.LBB0_7
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	movl	-28(%rbp), %eax
                                        # kill: def $rax killed $eax
	imulq	-24(%rbp), %rax
	movq	%rax, -24(%rbp)
# %bb.6:                                #   in Loop: Header=BB0_4 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_4
.LBB0_7:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_8:
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	factorial, .Lfunc_end0-factorial
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
